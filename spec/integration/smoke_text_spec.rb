require_relative "../../spec/spec_helper"

describe 'Smoke Text Test' do

  let(:text_widget) {TextWidget.new}
  let(:designer_action_bar) {DesignerActionBar.new}
  let(:image_widget) { ImageWidget.new }

  before(:example) do
    browser_setup(browser_version)
    login_to_page_with_domain("smoketext.#{domain_name}")
    clean_up_designer
  end

  after(:example) do |example|
    capture_screenshot_on_failure(example)
  end

  it "WSB-1004 ; should be added to the designer and display on desktop preview, mobile preview, and published site" do |example|
    log_start_test("#{example.description}")
    widget_expected = {:designer => true, :preview_desktop => true, :preview_mobile => true, :publish => true}
    widget_actual = is_widget_displayed_on_pages(text_widget.text_outer_shield, text_widget.text_on_toolbox, true)
    expect(widget_actual).to eq(widget_expected)
    log_complete_test("#{example.description}")
  end
end