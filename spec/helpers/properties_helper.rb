require_relative '../../lib/common/constants'
require_relative '../../lib/common/configuration'
require 'ostruct'
require 'json'
require 'yaml'

module WSB
  module QA
    module PropertiesHelper

      attr_accessor :log_level, :role, :build, :app_url, :mya_url, :mya_password, :domain_name, :personal_domain,:business_plus,:business,:new_account_domain_name,
                    :shopper_id,:dps_endpoint_URL, :bearer_app_key, :bearer_site_key, :site_id, :instagram_username, :instagram_password,
                    :orion_id,:personal_orion_id,:in_app_endpoint, :logstash_endpoint_URL, :locale, :browser_version,
                    :remote_machine_ip, :driver_type, :twitter_username, :twitter_password,:facebook_email,:facebook_password,
                    :wsb_app_url, :website_id, :email_address, :email_password, :jomax_username, :jomax_password, :express_orion_id,
                    :expresscheckout_domain, :express_checkout_shopper_id, :express_checkout_shopper_password, :use_parallel, :user_domain_name, :sso_endpoint, :designer_version



      def initialize
        data = YAML.load_file(File.expand_path("config/data/data_#{WSB::QA::Configuration.tests_runner}.yml"))[WSB::QA::Configuration.env]

        common_data  = OpenStruct.new(data['common'])
        env_data  = OpenStruct.new(data['envdata'])

        @log_level = common_data.log_level
        @role = common_data.role
        @use_parallel = common_data.use_parallel
        @browser_version = common_data.browser_version.to_sym
        @driver_type = common_data.driver_type
        @remote_machine_ip = common_data.remote_machine_ip
        @email_address = common_data.email_address
        @email_password = common_data.email_password
        @jomax_username = common_data.jomax_username
        @jomax_password = common_data.jomax_password
        @designer_version = common_data.designer_version

        @twitter_username = common_data.twitter_username
        @twitter_password = common_data.twitter_password
        @instagram_username = common_data.instagram_username
        @instagram_password = common_data.instagram_password
        @facebook_email = common_data.facebook_email
        @facebook_password = common_data.facebook_password
        @logstash_endpoint_URL = common_data.logstash_endpoint_URL
        @locale = common_data.locale


        if ENV['BUILD_VERSION'] == nil
          @build = env_data.build
        else
          @build = ENV['BUILD_VERSION']
        end
        @app_url = env_data.app_url
        @mya_url = env_data.mya_url
        @domain_name = env_data.domain_name
        @user_domain_name = env_data.user_domain_name
        @shopper_id = env_data.shopper_id

        @dps_endpoint_URL = env_data.dps_endpoint_URL
        @bearer_app_key = env_data.bearer_app_key
        @bearer_site_key = env_data.bearer_site_key
        @site_id = env_data.site_id
        @orion_id = env_data.orion_id
        @personal_orion_id = env_data.personal_orion_id
        @in_app_endpoint = env_data.in_app_endpoint
        @personal_domain =   env_data.personal_domain
        @express_orion_id = env_data.express_checkout_orionid
        @expresscheckout_domain =   env_data.express_checkout_domain
        @express_checkout_shopper_id = env_data.express_checkout_shopper_id
        @express_checkout_shopper_password = env_data.express_checkout_shopper_password
        @mya_password = env_data.mya_password
        @business_plus = env_data.business_plus
        @new_account_domain_name = env_data.new_account_domain_name
        @business =  env_data.buissness

        @wsb_app_url = env_data.wsb_app_url
        @website_id = env_data.website_id
        @sso_endpoint = env_data.sso_endpoint
      end
    end
  end
end





