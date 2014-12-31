require_relative "../../spec/spec_helper"

RSpec.describe 'Check Minification' do

  before(:example) do
    browser_setup(browser_version)
  end

  after(:example) do |example|
    capture_screenshot_on_failure(example)
  end

  it "WSB-1011 ; Designer: verify builder.js does not exist " do |example|
    log_start_test("#{example.description}")
    open_url("#{akamai_url}/wst/v7/optimizedassets/#{build}/v2/designer/app/builder.js")
    expect(is_text_present('404 - File or directory not found')).to eq(true)
    log_complete_test("#{example.description}")
  end

  it "WSB-1012 ; Control Panel: verify builder.js does not exist " do |example|
    log_start_test("#{example.description}")
    open_url("#{akamai_url}/wst/v7/optimizedassets/#{build}/v1/modules/controlPanel/welcomeDialog.js")
    expect(is_text_present('404 - File or directory not found')).to eq(true)
    log_complete_test("#{example.description}")
  end

  it "WSB-1013 ; Themes: verify builder.js does not exist " do |example|
    log_start_test("#{example.description}")
    open_url("#{akamai_url}/wst/v7/optimizedassets/#{build}/v1/modules/wsb/themes/publish.js")
    expect(is_text_present('404 - File or directory not found')).to eq(true)
    log_complete_test("#{example.description}")
  end
end