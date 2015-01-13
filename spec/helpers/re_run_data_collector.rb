require 'rspec/core/formatters/base_formatter'
require 'allure-ruby-adaptor-api/builder'
require 'rspec/core/example'
require_relative '../../spec/spec_helper'
#require_relative '../../spec/helpers/api_helper'
require_relative '../../spec/helpers/properties_helper'


class ReRunDataCollector < RSpec::Core::Formatters::BaseFormatter

  def start_dump
    examples.each { |example| post_test_data_to_logstash(example) }
  end

  def post_test_data_to_logstash(example)
    json_posted = {
        "timestamp" => Time.now.utc.iso8601,
        "content" =>
            {
                :build_name => ENV['BUILD_VERSION'],
                :jira_id => get_jira_id(example.description.to_s),

                :test_description => example.description.to_s,
                :test_execution_time => "#{example.metadata[:run_time]}".to_i,
                :test_exception => example.metadata[:exception],
                :test_status => example.metadata[:status],
                :component => example.example_group.description,
                :rerun => true,

                :jenkins_job_name => ENV['JOB_NAME'],
                :jenkins_build_number => ENV['BUILD_VERSION'],
                :jenkins_build_url => ENV['BUILD_URL'],
            }
    }.to_json
    puts json_posted
  end

  def get_jira_id(example_description)
    example_description.split(";").first
  end

end