# require_relative "../../spec/spec_helper"
#
# RSpec.describe 'Check Yahoo Page' do
#
#   before(:example) do
#     browser_setup(browser_version)
#   end
#
#   after(:example) do |example|
#     capture_screenshot_on_failure(example)
#   end
#
#   it "Check Yahoo text - True" do |example|
#     log_start_test("#{example.description}")
#     open_url("http://www.yahoo.com")
#     expect(is_text_present('404 - File or directory not found')).to eq(true)
#     log_complete_test("#{example.description}")
#   end
#
#   it "Check Yahoo text - False" do |example|
#     log_start_test("#{example.description}")
#     open_url("http://www.yahoo.com")
#     expect(is_text_present('Yahoo')).to eq(true)
#     log_complete_test("#{example.description}")
#   end
# end