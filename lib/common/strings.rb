require_relative '../../spec/spec_helper'

module Strings

  DESIGNER_PAGE = 'designer'
  PREVIEW_PAGE ='preview_desktop'
  PREVIEW_MOBILE_PAGE = 'preview_mobile'
  PUBLISH_PAGE ='publish'
  CONTROL_PANEL = "controlpanel"
  OLD_DESIGNER_VERSION = "old"
  NEW_DESIGNER_VERSION = "new"
  THEME_MANAGER = "theme_manager"

#color
  COLOR_ORANGE = "#ff7f00"
  COLOR_ORANGE_VERIFY_BASIC = "rgb(255, 127, 0)"
  COLOR_ORANGE_VERIFY_ADVANCED ="rgba(255, 127, 0, 1)"
  COLOR_WHITE = "#ffffff"
  COLOR_CYAN = "#56ffff"
  COLOR_CYAN_VERIFY_BASIC = "rgb(86, 255, 255)"
  COLOR_CYAN_VERIFY_ADVANCED = "rgba(86, 255, 255, 1)"

#Button Test Strings
  BUTTON_NEW_TEXT = "New Button Text"

#Text Widget Test Strings
  TEXT_WIDGET_NEW_TEXT = "This is a test string"

#HtmlCode Test Strings
  HTML_CODE_NEW_HTML = "This is some html code"
  HTML_JQUERY_SCRIPT = "<script src=\"//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js\">" #don't need </script> as it's added automatically

#Common Image Attributes
  IMAGE_ATTRIBUTE_CAPTION = "title"
  IMAGE_ATTRIBUTE_HREF = "href"
  ELEMENT = "element"

#Button Gallery Strings
  THUMBNAIL_SIZE = "CarouselThumbSize"
  THUMBNAIL_SPACE = "ThumbSpacing" #CarouselThumbSpacing
  CAPTION = "newCaption"

#Image Strings
  SWAP_IMAGE_BTN_TEXT = "Swap Image"
  IMAGE_EDITOR_BTN_TEXT = "Image Editor"

#Site Settings Strings
  SITE_NAME = "SITE_NAME"
  STREET_ADDRESS = "STREET_ADDRESS"
  PHONE_NUMBER = "PHONE_NUMBER"
  BUSINESS_CATEGORY = "BUSINESS_CATEGORY"
  EMAIL_ADDRESS = "BUSINESS_CATEGORY"

#App Drawer mappings
  APP_DRAW = {
      :LOCU => 1,
      :YELP => 2,
      :PAYPAL => 3,
      :HOMEFINDER => 4
  }

  BORDER_WIDTH_3PX = "3px"
  BORDER_STYLE_DASHED = "dashed"
  BORDER_COLOR = "color"
  BORDER_WIDTH = "width"
  BORDER_STYLE = "style"

#attributes
  VALUE = "value"
  CHECKED = "checked"

#Grey button identifiers
  VERTICAL_BUTTON = "setVertical"

#page settings
  HEIGHT = "height"
  WIDTH = "width"
  DEFAULT_PAGE_DIMENSION = "1000"

#New added page
  PAGEID = "pageid"
  TITLE = "title"

#Advanced Settings
  DATA_BIND_BORDER_WIDTH = "borderWidth"
  DATA_BIND_ROUNDED_CORNER = "roundedCornerSize"
  ROUNDED_CORNER_20PX = "20px"
  DATA_BIND_TRANSPARENCY = "transparency"
  TRANSPARENCY_50 = "50"
  TRANSPARENCY_50_VERIFICATION = "0.5"

#Audio widget button identifiers
  ADD_BUTTON = "openChooser"
  DESCRIPTION_FIELD = "newName"
  ARTIST_FIELD = "newAuthor"

#navigation layouts
  HORIZONTAL = "horizontal"
  VERTICAL = "vertical"
  BUTTON = "button"
  LEFT = "Left"
  CENTER = "Center"
  RIGHT = "Right"
  STRETCH = "Stretch"
  VERIFY_BUTTON_LEFT = "nav-btn-left"
  VERIFY_BUTTON_RIGHT = "nav-btn-right"
  VERIFY_BUTTON_CENTER = "nav-btn-center"
  VERIFY_BUTTON_STRETCH = "nav-btn-stretch"
  VERIFY_TEXT_LEFT = "nav-text-left"
  VERIFY_TEXT_RIGHT = "nav-text-right"
  VERIFY_TEXT_CENTER = "nav-text-center"

  #Buttons
  DATA_BIND_CHOOSE_IMAGE = "chooseImage"

  #Misc.
  BACKGROUND = "background"
  PAGE = "page"
  HREF = "href"
  SOURCE = "src"

  #Style attributes
  STYLE_BACKGROUND_IMAGE = "background-image"

  #Designer Mode
  DDT_MODE = "DDT"
  KONAMI_MODE = "konami"
end

