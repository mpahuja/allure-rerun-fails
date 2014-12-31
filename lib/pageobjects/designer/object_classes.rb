require_relative '../../../spec/spec_helper'
require_relative '../../../spec/helpers/yaml_properties_holder'

class AppNavigationObjects
  def self.properties_file
    Constants.const_get(:APP_NAVIGATION_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class MyaLogin
  def self.properties_file
    Constants.const_get(:MYA_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class DesignerActionBar
  def self.properties_file
    Constants.const_get(:DESIGNER_ACTION_BAR_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class WidgetCommonObjects
  def self.properties_file
    Constants.const_get(:WIDGET_COMMON_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class NapsocObjects
  def self.properties_file
    Constants.const_get(:NAPSOC_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

#IN_APP_PAGE_OBJECTS
class InAppObjects
  def self.properties_file
    Constants.const_get(:IN_APP_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

#Growl objects
class GrowlObjects
  def self.properties_file
    Constants.const_get(:GROWL_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class ProgressObjects
  def self.properties_file
    Constants.const_get(:PROGRESS_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class PublishModalObjects
  def self.properties_file
    Constants.const_get(:PUBLISH_MODAL_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class DesignerCommonObjects
  def self.properties_file
    Constants.const_get(:DESIGNER_COMMON_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class ColorCommonObjects
  def self.properties_file
    Constants.const_get(:COLOR_COMMON_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class SettingsDialogCommonObjects
  def self.properties_file
    Constants.const_get(:SETTINGS_DIALOG_COMMON_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class AdvancedDialogCommonObjects
  def self.properties_file
    Constants.const_get(:ADVANCED_DIALOG_COMMON_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class ImageWidget
  def self.properties_file
    Constants.const_get(:IMAGE_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class ButtonWidget
  def self.properties_file
    Constants.const_get(:BUTTON_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class SlideshowWidget
  def self.properties_file
    Constants.const_get(:SLIDESHOW_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class ShapeWidget
  def self.properties_file
    Constants.const_get(:SHAPE_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class GalleryWidget
  def self.properties_file
    Constants.const_get(:GALLERY_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class PageActionObjects
  def self.properties_file
    Constants.const_get(:PAGE_ACTION_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class TextWidget
  def self.properties_file
    Constants.const_get(:TEXT_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class DomainSelectorDialog
  def self.properties_file
    Constants.const_get(:DOMAIN_DIALOG_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class ThemeSelectionObjects
  def self.properties_file
    Constants.const_get(:THEME_SELECTION_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class SurveyDialog
  def self.properties_file
    Constants.const_get(:SURVEY_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class HtmlCodeWidget
  def self.properties_file
    Constants.const_get(:HTML_CODE_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class BlogWidget
  def self.properties_file
    Constants.const_get(:BLOG_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class TwitterSync
  def self.properties_file
    Constants.const_get(:TWITTER_SYNC_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class ShareWidget
  def self.properties_file
    Constants.const_get(:SHARE_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class AudioPlayerWidget
  def self.properties_file
    Constants.const_get(:AUDIO_PLAYER_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class MapWidget
  def self.properties_file
    Constants.const_get(:MAP_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class YouTubeWidget
  def self.properties_file
    Constants.const_get(:YOUTUBE_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class LineWidget
  def self.properties_file
    Constants.const_get(:LINE_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class NapsocDialogObjects
  def self.properties_file
    Constants.const_get(:NAPSOC_DIALOG_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class SocialPage
  def self.properties_file
    Constants.const_get(:SOCIAL_PAGE_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class FacebookWidget
  def self.properties_file
    Constants.const_get(:FACEBOOK_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class CustomFormWidget
  def self.properties_file
    Constants.const_get(:CUSTOM_FORM_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class BackupDialog
  def self.properties_file
    Constants.const_get(:BACKUP_DIALOG_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class NavigationWidget
  def self.properties_file
    Constants.const_get(:NAVIGATION_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class SiteSettingsDialog
  def self.properties_file
    Constants.const_get(:SITE_SETTINGS_DIALOG_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class SiteSettingsBackups
  def self.properties_file
    Constants.const_get(:SITE_SETTINGS_BACKUP_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class PageSettingsObjects

  def self.properties_file
    Constants.const_get(:PAGE_SETTINGS_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class DesignerBackground

  def self.properties_file
    Constants.const_get(:BACKGROUND_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class CSSEditorObjects

  def self.properties_file
    Constants.const_get(:CSS_EDITOR_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class ThemeManagerObjects

  def self.properties_file
    Constants.const_get(:THEME_MANAGER_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

#facebook login
class FacebookSyncObjects
  def self.properties_file
    Constants.const_get(:FACEBOOK_SYNC_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class AppdrawerWidgets
  def self.properties_file
    Constants.const_get(:APP_DRAWER_OBJECTS)
  end
  extend YAMLPropertiesHolder
end


class ControlPanelObjects
  def self.properties_file
    Constants.const_get(:CONTROL_PANEL_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class PaypalObjects
  def self.properties_file
    Constants.const_get(:PAYPAL_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class LocuObjects
  def self.properties_file
    Constants.const_get(:LOCU_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class HomefinderObjects
  def self.properties_file
    Constants.const_get(:HOMEFINDER_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

#seo
class SeoObjects
  def self.properties_file
    Constants.const_get(:SEO_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class SSOLoginPageObjects
  def self.properties_file
    Constants.const_get(:SSOLOGINPAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end

class LoginWebsiteTonightPageObjects
  def self.properties_file
    Constants.const_get(:LOGIN_WEBSITE_TONIGHT_PAGE_OBJECTS)
  end
  extend YAMLPropertiesHolder
end