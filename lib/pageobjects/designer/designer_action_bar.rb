require_relative '../../../spec/spec_helper'

module WSB
  module QA
    module DesignerPageObjects

      @@designer_action_bar = DesignerActionBar.new

      def click_designer_undo_button
        click(@@designer_action_bar.undo)
      end

      def click_designer_redo_button
        click(@@designer_action_bar.redo)
      end

      def click_designer_preview_button
        click(@@designer_action_bar.preview)
      end

      def click_designer_publish_button
        click(@@designer_action_bar.publish)
      end

      def click_designer_exit_preview_button
        click(@@designer_action_bar.exit_preview)
      end
    end
  end
end
