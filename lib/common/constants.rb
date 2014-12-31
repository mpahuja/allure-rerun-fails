module Constants

  LOGIN_WEBSITE_TONIGHT_PAGE_OBJECTS = "lib/uilocators/login_website_tonight.yml"
  SSOLOGINPAGE_OBJECTS = "lib/uilocators/sso_login.yml"

  CONFIG_PROPERTIES = "config/config.properties"

  #Designer
  DESIGNER_ACTION_BAR_PAGE_OBJECTS = "lib/uilocators/designer/action_bar.yml"
  PUBLISH_MODAL_PAGE_OBJECTS ="lib/uilocators/designer/publish_modal.yml"
  DESIGNER_COMMON_PAGE_OBJECTS = "lib/uilocators/designer/common.yml"
  NAPSOC_PAGE_OBJECTS = "lib/uilocators/designer/napsoc.yml"
  SURVEY_PAGE_OBJECTS = "lib/uilocators/designer/survey.yml"
  TWITTER_SYNC_PAGE_OBJECTS = "lib/uilocators/designer/twitter_sync.yml"
  SOCIAL_PAGE_PAGE_OBJECTS = "lib/uilocators/designer/social_page.yml"
  SITE_SETTINGS_DIALOG_PAGE_OBJECTS = "lib/uilocators/designer/site_settings_dialog.yml"
  SITE_SETTINGS_BACKUP_OBJECTS = "lib/uilocators/designer/site_settings_backups.yml"
  BACKGROUND_OBJECTS = "lib/uilocators/designer/background.yml"
  GROWL_OBJECTS = "lib/uilocators/designer/growl.yml"
  PROGRESS_OBJECTS = "lib/uilocators/designer/progress.yml"
  CSS_EDITOR_OBJECTS = 'lib/uilocators/designer/css_editor.yml'
  FACEBOOK_SYNC_OBJECTS = "lib/uilocators/designer/facebook_sync.yml"

  #Widget
  WIDGET_COMMON_PAGE_OBJECTS = "lib/uilocators/widget/common.yml"
  IMAGE_PAGE_OBJECTS = "lib/uilocators/widget/image.yml"
  BUTTON_PAGE_OBJECTS = "lib/uilocators/widget/button.yml"
  SLIDESHOW_PAGE_OBJECTS =  "lib/uilocators/widget/slideshow.yml"
  SHAPE_PAGE_OBJECTS = "lib/uilocators/widget/shape.yml"
  GALLERY_PAGE_OBJECTS = "lib/uilocators/widget/gallery.yml"
  COLOR_COMMON_PAGE_OBJECTS = "lib/uilocators/widget/color_dialog.yml"
  ADVANCED_DIALOG_COMMON_PAGE_OBJECTS = "lib/uilocators/widget/advanced_settings_dialog.yml"
  SETTINGS_DIALOG_COMMON_PAGE_OBJECTS = "lib/uilocators/widget/common_settings_dialog.yml"
  TEXT_PAGE_OBJECTS = "lib/uilocators/widget/text.yml"
  PAGE_ACTION_OBJECTS = "lib/uilocators/widget/page actions.yml"
  IN_APP_PAGE_OBJECTS ="lib/uilocators/widget/in_app.yml"
  HTML_CODE_PAGE_OBJECTS = "lib/uilocators/widget/html_code.yml"
  AUDIO_PLAYER_PAGE_OBJECTS = "lib/uilocators/widget/audio_player.yml"
  MAP_PAGE_OBJECTS = "lib/uilocators/widget/map.yml"
  YOUTUBE_PAGE_OBJECTS = "lib/uilocators/widget/youtube.yml"
  LINE_PAGE_OBJECTS = "lib/uilocators/widget/line.yml"
  FACEBOOK_PAGE_OBJECTS = "lib/uilocators/widget/facebook.yml"
  NAVIGATION_PAGE_OBJECTS = "lib/uilocators/widget/navigation.yml"
  CUSTOM_FORM_PAGE_OBJECTS = 'lib/uilocators/widget/custom_form.yml'
  PAGE_SETTINGS_OBJECTS = 'lib/uilocators/designer/page_settings.yml'
  APP_DRAWER_OBJECTS = 'lib/uilocators/widget/app_drawer.yml'
  PAYPAL_OBJECTS = "lib/uilocators/widget/paypal.yml"
  LOCU_OBJECTS =   "lib/uilocators/widget/locu.yml"
  HOMEFINDER_OBJECTS = 'lib/uilocators/widget/homefinder.yml'

  #Setup
  DOMAIN_DIALOG_PAGE_OBJECTS = "lib/uilocators/domain_selector_dialog.yml"
  THEME_SELECTION_PAGE_OBJECTS = "lib/uilocators/themeselection/theme_selection.yml"
  NAPSOC_DIALOG_PAGE_OBJECTS = "lib/uilocators/napsoc_dialog.yml"

  BLOG_PAGE_OBJECTS = "lib/uilocators/widget/blog.yml"
  SHARE_PAGE_OBJECTS = "lib/uilocators/widget/share.yml"

  # Other
  APP_NAVIGATION_OBJECTS = "lib/uilocators/app_navigation.yml"
  BACKUP_DIALOG_OBJECTS = "lib/uilocators/controlpanel/backup_dialog.yml"
  THEME_MANAGER_OBJECTS = "lib/uilocators/theme_manager.yml"

  CONTROL_PANEL_OBJECTS = "lib/uilocators/controlpanel/control_panel.yml"
  MYA_PAGE_OBJECTS = 'lib/uilocators/mya.yml'
  SEO_OBJECTS = "lib/uilocators/controlpanel/seo.yml"

  #Social Pages
  SOCIAL_READY_TO_SYNC_ACTION = "text: strings.Social__BrandingState_ReadyToSync"
  OLD_PAGE = "old"
  NEW_PAGE = "new"

  #Timeouts
  TINY_TIMEOUT_VALUE = 3
  TINY_TIMEOUT = {:timeout => TINY_TIMEOUT_VALUE}
  SHORT_TIMEOUT_VALUE = 10
  SHORT_TIMEOUT = {:timeout => SHORT_TIMEOUT_VALUE}
  TWENTY_SECOND_TIMEOUT_VALUE = 20
  TWENTY_SECOND_TIMEOUT = {:timeout => TWENTY_SECOND_TIMEOUT_VALUE}
  MEDIUM_TIMEOUT_VALUE = 30
  MEDIUM_TIMEOUT = {:timeout => MEDIUM_TIMEOUT_VALUE}
  LONG_TIMEOUT_VALUE = 60
  LONG_TIMEOUT = {:timeout => LONG_TIMEOUT_VALUE}
  HUGE_TIMEOUT_VALUE = 120
  HUGE_TIMEOUT = {:timeout => HUGE_TIMEOUT_VALUE}
  LOGIN_TIMEOUT_VALUE = 180
  LOGIN_TIMEOUT = {:timeout => LONG_TIMEOUT_VALUE}
  PUBLISH_TIMEOUT_VALUE = 300
  PUBLISH_TIMEOUT = {:timeout => PUBLISH_TIMEOUT_VALUE}
  FIFTEEN_SECOND_TIMEOUT_VALUE = 15
  FIFTEEN_SECOND_TIMEOUT = {:timeout => FIFTEEN_SECOND_TIMEOUT_VALUE}

  #NewDesignerWebSiteIds
  #Website Ids
  ND_SLIDESHOW_SPEC_WEBSITE_ID = 1045860
  ND_GALLERY_SPEC_WEBSITE_ID = 1045441
  FLAKY_ND_GALLERY_SPEC_WEBSITE_ID = 1091586
  ND_IMAGE_SPEC_WEBSITE_ID = 1045546
  ND_SMOKE_SPEC_WEBSITE_ID = 1046580
  ND_AUDIO_PLAYER_SPEC_WEBSITE_ID =1045193
  ND_BACKGROUND_SPEC_WEBSITE_ID = 1045224
  OD_SEO_SPEC_WEBSITE_ID = 1226252
  ND_SEO_SPEC_WEBSITE_ID = 1240764
  STAGE_SMOKE_WEBSITE_ID = 491156974

  # Themes
  NUMBER_OF_THEMES_TO_BE_LOADED = 50

  #NEW Designer Express Checkout Details
  NEW_EXPRESS_CHECKOUT_SHOPPER_ID = '301399'
  NEW_EXPRESS_CHECKOUT_SHOPPER_PASSWORD = 'G0daddy1!'
  NEW_EXPRESS_CHECKOUT_ORION_ID = '94c8c0df-6921-11e4-b39c-005056953ce3'

  #Current framework NEW Designer Express Checkout Details
  CURRENT_EXPRESS_CHECKOUT_SHOPPER_ID = '301399'
  CURRENT_EXPRESS_CHECKOUT_SHOPPER_PASSWORD = 'G0daddy1!'
  CURRENT_EXPRESS_CHECKOUT_ORION_ID = '38533292-6e0c-11e4-a09c-005056953ce3'
end
