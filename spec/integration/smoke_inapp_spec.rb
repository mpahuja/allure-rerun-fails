require_relative '../spec_helper'
require 'timeout'

describe 'Smoke In-App Test' do

  let (:form_widget) { CustomFormWidget.new }
  let(:designer_common_objects) {DesignerCommonObjects.new}
  let(:in_app) { InAppObjects.new }

  before(:example) do
    browser_setup(browser_version)
  end

  after(:example) do |example|
    capture_screenshot_on_failure(example)
  end

  # Smoke In-App - User can connect to In-App from upgrading from advanced widgets
  it "WSB-11276 - connect to in-app via LOCU, for upgrade for smoke test" do |example|
    log_start_test("#{example.description} using LOCU ")
    inapp_expected = {:feature_tab_exists => true, :feature_displayed => true, :upgrade_button_displayed => true,
                      :grid_displayed => true}
    login_to_page_with_domain("personalsmoke.#{domain_name}")
    click_save_if_enabled
    log_test_step('Add Widget')
    add_widget_from_app_drawer(:LOCU)
    inapp_actual = verify_in_app_modal
    expect(inapp_actual).to eq(inapp_expected)
    log_complete_test("#{example.description}")
  end
end