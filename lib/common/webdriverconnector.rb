require_relative '../../spec/spec_helper'
require_relative '../../lib/common/configuration'

module WSB
  module QA
    module SeleniumWebdriver
      module WebDriverConnector

        @@default_wait_options = {:timeout => Constants::SHORT_TIMEOUT_VALUE}

        def set_driver(driver)
          @driver = driver
        end

        def empty?
          true
        end

        def webDriver
          @driver = WSB::QA::Configuration.browser
        end

        def execute_js(jquerycommand)
          return @driver.execute_script(jquerycommand)
        end

        def open_url(url)
          self.maximize_browser
          @driver.get url
        end

        def navigate_to_url(url)
          @driver.navigate.to url
        end

        def get_text(locator_or_element)
          element = resolve_to_element(locator_or_element)
          element.text
        end

        def delete_all_cookies
          self.maximize_browser
          @driver.manage.delete_all_cookies
        end

        def set_cookie_value cookie ={}
           @driver.manage.add_cookie cookie
        end

        def get_cookie_value cookie_name
          cookie = @driver.manage.cookie_named(cookie_name)
          cookie[:value].to_s
        end

        def refresh_page
          @driver.navigate.refresh
        end

        def quit_webdriver
          @driver.close()
          @driver.quit()
        end

        def maximize_browser
          @driver.manage.window.maximize
        end

        def get_page_source
          @driver.page_source
        end

        def get_title
          @driver.title
        end

        def is_text_present(text)
          self.get_page_source.include? text
        end

        def wait_for_page_load (wait_options = @@default_wait_options)
          log_method_step_debug(get_method_name, "Starting...")
          begin
            wait = Selenium::WebDriver::Wait.new wait_options
            wait.until { @driver.execute_script("return document.readyState;") == "complete" }
          rescue
            log_method_step_debug(get_method_name, "Completed in rescue...")
          end
          log_method_step_debug(get_method_name, "Completed...")
        end

        def get_web_element(locator)
          element = Hash[locator.map { |(k, v)| [k.to_sym, v] }]
          begin
            elements = @driver.find_elements element.keys.first => element.values.first
            elements.size > 1 ? elements.find_all { |x| x.displayed? }.first : elements.first
          rescue (Selenium::WebDriver::Error::NoSuchElementError || Selenium::WebDriver::Error::StaleElementReferenceError)
            return nil
          end
        end

        def get_last_web_element(locator)
          element = Hash[locator.map { |(k, v)| [k.to_sym, v] }]
          @driver.find_element element.keys.last => element.values.last
        end

        def get_web_elements(locator)
          element = Hash[locator.map { |(k, v)| [k.to_sym, v] }]
          elements = @driver.find_elements element.keys.first => element.values.first
          elements.find_all { |x| x.displayed? }
        end

        def switch_to_last_window
          @driver.switch_to.window(@driver.window_handles.last)
        end

        def switch_to_first_window
          @driver.switch_to.window(@driver.window_handles.first)
        end

        def get_number_of_windows
          return @driver.window_handles.length
        end

        def get_current_window_handle
          @driver.window_handle
        end

        def switch_to_window_handle(handle)
          @driver.switch_to.window(handle)
        end


        def close_current_window
          @driver.close()
        end

        def resolve_to_element(locator_or_element)
          if locator_or_element.class == Hash then
            get_web_element(locator_or_element)
          else
            locator_or_element
          end
        end

        def capture_screenshot_on_failure(example)
          unless example.exception.nil?
             example.attach_file("screenshot",
                        @driver.save_screenshot(File.join(Dir.pwd, "log/screenshots/#{UUID.new.generate}.png")))
          end
          quit_webdriver
        end

        def send_keyboard_key(key)
          @driver.action.send_keys(key).perform
        end

        def send_keyboard_keys(primary_key, secondary_key)
          @driver.action.key_down(primary_key).send_keys(secondary_key).perform
          @driver.action.key_up(primary_key).perform
        end

        def update_locator(locator, old_value='', to_replace='', value_to_update='')
          locator.inject({}) { |h, (k, v)| h[k] = v.sub(old_value, to_replace)+value_to_update; h }
        end

        def get_parent_element(child_locator_or_element)
          child_element = resolve_to_element(child_locator_or_element)
          return child_element.find_element(:xpath => "..")
        end

        def browser_setup(browser_name)
          case driver_type
            when 'local'
              @driver = Selenium::WebDriver.for(browser_name.to_sym)
              @driver.manage.timeouts.implicit_wait = Constants::SHORT_TIMEOUT_VALUE
            when 'remote'
              caps = Selenium::WebDriver::Remote::Capabilities.send(browser_name.to_sym)
              @driver = Selenium::WebDriver.for(
                  :remote,
                  url: "http://#{remote_machine_ip}:4444/wd/hub",
                  desired_capabilities: caps)
              @driver.manage.timeouts.implicit_wait = Constants::SHORT_TIMEOUT_VALUE
            when 'phantomjs'
              log_method_step_debug(get_method_name, "Starting: PhantomJS Driver at #{remote_machine_ip}")
              @driver = Selenium::WebDriver.for(
                  :remote,
                  url: "http://#{remote_machine_ip}:8001")
              @driver.manage.timeouts.implicit_wait = Constants::SHORT_TIMEOUT_VALUE
            else
              caps = Selenium::WebDriver::Remote::Capabilities.send(
                  browser_name.to_sym)
              caps.platform = 'Windows 7'
              caps.version = browser_version.to_s

              @driver = Selenium::WebDriver.for(
                  :remote,
                  url: "http://#{ENV['sbs-qa']}:#{ENV['9243fec2-1d14-4d14-bb87-a101d9a232ad']}
                  @ondemand.saucelabs.com:80/wd/hub",
                  desired_capabilities: caps)
              @driver.manage.timeouts.implicit_wait = Constants::SHORT_TIMEOUT_VALUE
          end
        end


        def select_all(locator_or_element)
          element = resolve_to_element(locator_or_element)
          if RUBY_PLATFORM.downcase.include?("darwin")
            element.send_keys([:command, 'a'])
          elsif RUBY_PLATFORM.downcase.include?("mingw32")
            element.send_keys([:control, 'a'])
          end
        end

        def get_web_element_location(locator_or_element)
          element = resolve_to_element(locator_or_element)
          return element.location
        end

        def close_all_windows()
          @driver.window_handles.each do |handle|
            begin
              @driver.switch_to.window(handle)
              @driver.close()
            rescue Exception => e
              log_method_step(get_method_name, "An Error occurred "+e.message)
            end
          end
        end

        def navigate_back()
          @driver.navigate.back
        end

      end
    end
  end
end