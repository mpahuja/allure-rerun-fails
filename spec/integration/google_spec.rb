require_relative "../../spec/spec_helper"

RSpec.describe 'Check Google Page' do

  before(:example) do
    browser_setup(browser_version)
  end

  after(:example) do |example|
    capture_screenshot_on_failure(example)
  end

  it "Check google text - True" do |example|
    log_start_test("#{example.description}")
    open_url("http://www.google.com")
    expect(is_text_present('Google')).to eq(true)
    log_complete_test("#{example.description}")
  end

  it "Check google text - False" do |example|
    log_start_test("#{example.description}")
    open_url("http://www.google.com")
    expect(is_text_present('404 - File or directory not found')).to eq(false)
    log_complete_test("#{example.description}")
  end
end