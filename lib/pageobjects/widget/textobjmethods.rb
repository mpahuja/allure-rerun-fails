require_relative '../../../spec/spec_helper'

module WSBQA
  module PageObjects
    module TextPageObjects
      @@ap = TextWidget.new

      def click_on_text_options
        click(@@ap.text)
      end

      def get_locator_text_widget(id_of_last_added_widget)
        text_widget_inside_locator = {id: "inner-text-#{id_of_last_added_widget}"}
        return text_widget_inside_locator
      end

      def send_to_text_box(id_of_last_added_widget = nil, text)
        set_text(get_locator_text_widget(id_of_last_added_widget),text)
      end

      def text_widget_add_link(valid_url)
        set_text(@@ap.add_link,valid_url)
      end

      def text_widget_delete_all_text(id_of_last_added_widget = nil)
        select_all(get_web_element(get_locator_text_widget(id_of_last_added_widget)))
        get_web_element(get_locator_text_widget(id_of_last_added_widget)).send_keys(:delete)
      end

      def text_widget_select_all_text_using_element(id_of_last_added_widget = nil)
        select_all(get_web_element(get_locator_text_widget(id_of_last_added_widget)))
      end

      def text_widget_delete_text_using_element(id_of_last_added_widget = nil)
        select_all(get_web_element(get_locator_text_widget(id_of_last_added_widget)))
      end

    end
  end
end

