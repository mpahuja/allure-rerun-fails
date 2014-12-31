# Gems
require 'rubygems'
require 'selenium-webdriver'
require 'net/pop'
require 'properties-ruby'
require 'yaml'
require 'rspec_junit_formatter'
require 'yarjuf'
require 'rest_client'
require 'securerandom'
require 'savon'
require 'pry'

#image compare
require 'chunky_png'
require 'mini_magick'
require 'quick_magick'
require 'mechanize'

#rSpec
require 'logger'
require 'rspec/core'
require 'rspec/expectations'
require 'rspec/matchers'
require 'logging'
require 'rspec/logging_helper'
require 'ostruct'
require 'json'
require 'gmail'
require 'waitutil'
require 'faker'
require 'allure-rspec'
require 'nokogiri'
require 'uuid'
require 'rspec/retry'
require "net/http"
require "benchmark"
require 'rspec/legacy_formatters'
require 'rspec/core/formatters/documentation_formatter'

=begin
The reason we are requiring files multiple times here is because originally
we were including based on directory, but RubyMine won't do intellisense
this way, which sucks.  So we are doing require on certain files specifically to
get the intellisense.  I removed all the individual file requires and the tests
continued to function, so if we figure out how to get intellisense working without
direct file requires, we can remove the duplication.
=end

require File.expand_path('lib/common/webdriverconnector.rb')
require File.expand_path('lib/common/log_util.rb')
Dir[File.expand_path('lib/common/*.rb')].each { |f| require f }
require File.expand_path('lib/pageobjects/designer/object_classes.rb')
Dir[File.expand_path('lib/pageobjects/designer/*.rb')].each { |f| require f }
Dir[File.expand_path('lib/pageobjects/widget/*.rb')].each { |f| require f }
Dir[File.expand_path('lib/pageobjects/*.rb')].each { |f| require f }

require File.expand_path('spec/helpers/login_helper.rb')
require File.expand_path('spec/helpers/api_helper.rb')
require File.expand_path('spec/helpers/common_helper.rb')
require File.expand_path('spec/helpers/yaml_properties_holder.rb')
require File.expand_path('spec/helpers/control_panel_helper.rb')
require File.expand_path('spec/helpers/backup_helper.rb')
require File.expand_path('spec/helpers/theme_manager_helper.rb')
require File.expand_path('spec/helpers/theme_selector_helper.rb')
require File.expand_path('spec/helpers/seo_helper.rb')
require File.expand_path('spec/helpers/mya_helper.rb')
require File.expand_path('spec/helpers/failures_formatter.rb')

require File.expand_path('spec/helpers/designer/color_helper.rb')
require File.expand_path('spec/helpers/designer/widget_settings_dialog_helper.rb')
require File.expand_path('spec/helpers/designer/gallery_helper.rb')
require File.expand_path('spec/helpers/designer/image_helper.rb')
require File.expand_path('spec/helpers/designer/page_helper.rb')
require File.expand_path('spec/helpers/designer/publish_helper.rb')
require File.expand_path('spec/helpers/designer/survey_helper.rb')
require File.expand_path('spec/helpers/designer/text_helper.rb')
require File.expand_path('spec/helpers/designer/verify_helper.rb')
require File.expand_path('spec/helpers/designer/widget_helper.rb')
require File.expand_path('spec/helpers/designer/html_code_helper.rb')
require File.expand_path('spec/helpers/designer/line_helper.rb')
require File.expand_path('spec/helpers/designer/map_helper.rb')
require File.expand_path('spec/helpers/designer/blog_helper.rb')
require File.expand_path('spec/helpers/designer/facebook_helper.rb')
require File.expand_path('spec/helpers/designer/twitter_helper.rb')
require File.expand_path('spec/helpers/designer/site_settings_helper.rb')
require File.expand_path('spec/helpers/designer/email_helper.rb')
require File.expand_path('spec/helpers/designer/page_settings_helper.rb')
require File.expand_path('spec/helpers/designer/background_helper.rb')
require File.expand_path('spec/helpers/designer/navigation_helper.rb')
require File.expand_path('spec/helpers/designer/share_helper.rb')
require File.expand_path('spec/helpers/designer/youtube_helper.rb')
require File.expand_path('spec/helpers/designer/slideshow_helper.rb')
require File.expand_path('spec/helpers/designer/css_editor_helper.rb')
require File.expand_path('spec/helpers/designer/locu_helper.rb')
require File.expand_path('spec/helpers/designer/paypal_helper.rb')
require File.expand_path('spec/helpers/designer/favicon_helper.rb')
require File.expand_path('spec/helpers/designer/in_app_helper.rb')

Dir[File.expand_path('spec/helpers/designer/*.rb')].each { |f| require f }
Dir[File.expand_path('spec/helpers/*.rb')].each { |f| require f }
Dir[File.expand_path('spec/support/*.rb')].each {|f| require f}

RSpec.configure do |config|
  config.include WSB::QA::Configuration
  config.include Constants
  config.include Strings
  config.include WSB::QA::SeleniumWebdriver::WebDriverConnector
  config.include WSB::QA::Log_Util
  config.include WSB::UIHelper::LoginHelper
  config.include WSBQA::UIHelper::InappHelper
  config.include WSB::UIHelper::CommonHelper
  config.include WSB::UIHelper::ThemeSelectorHelper
  config.include WSB::UIHelper::DesignerHelper
  config.include WSB::UIHelper::ColorHelper
  config.include WSB::UIHelper::DialogHelper
  config.include WSB::UIHelper::VerifyHelper
  config.include WSB::UIHelper::WidgetHelper
  config.include WSB::UIHelper::GalleryHelper
  config.include WSB::UIHelper::SurveyHelper
  config.include WSB::UIHelper::ImageHelper
  config.include WSB::UIHelper::HtmlCodeHelper
  config.include WSB::UIHelper::LineHelper
  config.include WSB::UIHelper::MapHelper
  config.include WSB::UIHelper::BlogHelper
  config.include WSB::UIHelper::FacebookHelper
  config.include WSB::UIHelper::TwitterHelper
  config.include WSB::UIHelper::SiteSettingsHelper
  config.include WSB::UIHelper::MyaHelper
  config.include WSB::QA::APIHelper
  config.include WSB::QA::DesignerPageObjects
  config.include WSBQA::PageObjects::TextPageObjects
  config.include WSBQA::PageObjects::TextPageHelper
  config.include WSB::UIHelper::PageHelper
  config.include WSB::UIHelper::SetupHelper
  config.include WSB::QA::PropertiesHelper
  config.include WSB::UIHelper::SocialPageHelper
  config.include WSB::UIHelper::BackupHelper
  config.include WSB::UIHelper::ControlPanelHelper
  config.include WSB::UIHelper::EmailHelper
  config.include WSB::UIHelper::PageSettingsHelper
  config.include WSB::UIHelper::BackgroundHelper
  config.include WSB::UIHelper::FormHelper
  config.include WSB::UIHelper::AudioPlayerHelper
  config.include WSB::UIHelper::NavigationHelper
  config.include WSB::UIHelper::ShareHelper
  config.include WSB::UIHelper::YouTubeHelper
  config.include WSB::UIHelper::SlideshowHelper
  config.include WSB::UIHelper::CSSEditorHelper
  config.include WSB::UIHelper::ThemeManagerHelper
  config.include WSB::UIHelper::PaypalWidgetHelper
  config.include WSB::UIHelper::LocuWidgetHelper
  config.include WSB::UIHelper::FooterHelper
  config.include WSB::UIHelper::FaviconHelper
  config.include WSB::UIHelper::SeoHelper
  config.include AllureRSpec::Adaptor
  config.verbose_retry = true
  config.add_formatter RSpec::Core::Formatters::DocumentationFormatter
end

AllureRSpec.configure do |c|
  c.output_dir = "log/screenshots"
  c.clean_dir = false
end
