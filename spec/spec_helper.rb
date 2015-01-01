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
require 'pry'


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
Dir[File.expand_path('lib/pageobjects/*.rb')].each { |f| require f }


require File.expand_path('spec/helpers/yaml_properties_holder.rb')
require File.expand_path('spec/helpers/failures_formatter.rb')

Dir[File.expand_path('spec/helpers/designer/*.rb')].each { |f| require f }
Dir[File.expand_path('spec/helpers/*.rb')].each { |f| require f }
Dir[File.expand_path('spec/support/*.rb')].each {|f| require f}

RSpec.configure do |config|
  config.include WSB::QA::Configuration
  config.include Constants
  config.include Strings
  config.include WSB::QA::SeleniumWebdriver::WebDriverConnector
  config.include WSB::QA::Log_Util
  config.include WSB::QA::PropertiesHelper
  config.include AllureRSpec::Adaptor
  config.verbose_retry = true
  config.add_formatter RSpec::Core::Formatters::DocumentationFormatter
end

AllureRSpec.configure do |c|
  c.output_dir = "log/screenshots"
  c.clean_dir = false
end
