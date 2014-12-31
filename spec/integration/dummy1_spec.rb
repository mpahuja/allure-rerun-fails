
# describe 'Smoke Test' do
#   before(:suite) do
#     puts "before suite"
#   end
#
#   after(:suite) do
#     puts "after suite"
#   end
#
#   it "WSB-1234; 10 cannot be greater than 19", :story => ["Some story"]  do
#     expect(10).to be > 19
#   end
#
#   it "4 must not be equal to 5" do |example|
#     expect(5).to be eql(4)
#   end
# end
# require_relative "../../spec/spec_helper"
#
# describe 'Smoke Test' do
#
#   let(:text_widget) {TextWidget.new}
#   let(:designer_action_bar) {DesignerActionBar.new}
#   let(:image_widget) { ImageWidget.new }
#
#   before(:example) do
#     browser_setup(browser_version)
#   end
#
#   before(:example) do
#     login_to_page_with_domain("smoke.#{domain_name}")
#     click_save_if_enabled
#   end
#
#   after(:example) do
#     capture_screenshot_on_failure
#     click_save_if_enabled
#   end
#
#   after :all do
#     clean_up_designer
#     quit_webdriver
#   end
#
#   it "WSB-1011 ; check js minification", :ui_smoke do
#     log_start_test("#{example.description}")
#     open_url("#{wsb_app_url}/optimizedassets/modules/wsb/wsb.js")
#     expect(is_text_present('function(a,b,c,d')).to eq(false)
#     log_complete_test("#{example.description}")
#   end
#
#   it "WSB-1004 ; should be added to the designer and display on desktop preview, mobile preview, and published site", :ui_smoke do
#     log_start_test("#{example.description}")
#     widget_expected = {:designer => true, :preview_desktop => true, :preview_mobile => true, :publish => true}
#     widget_actual = is_widget_displayed_on_pages(text_widget.text_outer_shield, text_widget.text_on_toolbox, true)
#     expect(widget_actual).to eq(widget_expected)
#     log_complete_test("#{example.description}")
#   end
#
#   #WSB-8419 - Swap with an just uploaded image through the API
#   it "WSB-8419 - Swap with an just uploaded image through the API", :ui_smoke do
#     log_start_test("#{example.description}")
#
#     image_expected = {:designer_image => true, :preview_desktop_image => true,
#                       :preview_mobile_image => true, :publish_image => true}
#     image_actual = {}
#     upload_file("test_image.jpg", Constants::SMOKE_SPEC_WEBSITE_ID)
#
#     log_test_step('Adding image widget to designer')
#     add_widget(image_widget.image_on_toolbox)
#     click_designer_save_button
#
#     id_last_widget_added = get_id_of_last_widget_added()
#     log_test_verify("id of last widget = "+id_last_widget_added)
#
#     navigate_to_preview(id_last_widget_added)
#     #return src of image
#     default_image_source = get_src_of_image_widget(id_last_widget_added, Strings::PREVIEW_PAGE)
#     navigate_to_designer_from_preview()
#     click_swap_image(id_last_widget_added)
#
#     #swap default image for another image
#     swap_default_image_with_my_image
#     wait_for_image_dialog_to_close
#     click_designer_save_button
#     check_info = 'Image swap with newly uploaded image is correct'
#
#     #assert on designer
#     image_actual[:designer_image] = is_image_widget_not_default(id_last_widget_added, default_image_source, Strings::DESIGNER_PAGE)
#     log_test_verify(check_info+" on designer.")
#
#     navigate_to_preview(id_last_widget_added)
#     #assert on desktop preview
#     image_actual[:preview_desktop_image] = is_image_widget_not_default(id_last_widget_added, default_image_source, Strings::PREVIEW_PAGE)
#     log_test_verify(check_info+" in desktop preview.")
#
#     navigate_to_preview_mobile(id_last_widget_added)
#     #assert on mobile preview
#     image_actual[:preview_mobile_image] = is_image_widget_not_default(id_last_widget_added, default_image_source, Strings::PREVIEW_MOBILE_PAGE)
#     log_test_verify(check_info+" in mobile preview.")
#
#     navigate_to_designer_from_preview()
#     publish_and_navigate_to_published_site(id_last_widget_added)
#     #assert on published site
#     image_actual[:publish_image] = is_image_widget_not_default(id_last_widget_added, default_image_source, Strings::PUBLISH_PAGE)
#     log_test_verify(check_info+" on published site.")
#
#     navigate_to_designer_from_published_site()
#     expect(image_actual).to eq(image_expected)
#     log_test_verify("Assert "+check_info+" exists on all pages.")
#   end
# end