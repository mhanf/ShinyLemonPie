
library(bslib)

ui <- fluidPage(
  theme = bslib::bs_theme(
    version = 5,
    base_font = font_google("Roboto"),
    primary = "#16427B",
    secondary = "#94C11F",
    light = "#B64493",
    dark = "#B64493"
  ),
  h1("Bienvenue sur mon site"),
  # to include at the beginning of the ui part
  useShinyLemonPie(
    orientation = "bottom",
    showAlertSmall = FALSE,
    cookieslist = FALSE,
    closePopup = TRUE,
    showIcon = TRUE,
    iconPosition = "BottomRight",
    # iconSrc = "cookie.png",
    DenyAllCta = TRUE,
    AcceptAllCta = TRUE,
    highPrivacy = TRUE,
    removeCredit = TRUE,
    moreInfoLink = FALSE,
    groupServices = FALSE,
    handleBrowserDNTRequest = FALSE,
    adblocker = FALSE,
    mandatory = TRUE,
    mandatoryCta = FALSE,
    hashtag = "#tarteaucitron",
    cookieName = "tarteaucitron",
    serviceDefaultState = "wait",
    privacyUrl = "",
    bodyPosition = "top",
    cookieDomain = "",
    readmoreLink = "",
    useExternalCss = FALSE,
    useExternalJs = FALSE,
    useBS5Css = TRUE,
  ),

  ## piwik
  tags$head(
    tags$script(
      type = "text/javascript",
      'tarteaucitron.user.piwikProId = "secret-code";
  (tarteaucitron.job = tarteaucitron.job || []).push("piwikpro");'
    )
  ) # ,

  # # # ex youtube
  # tags$head(
  #   tags$script(type = "text/javascript",
  #               '(tarteaucitron.job = tarteaucitron.job || []).push("youtube");'
  #   )
  # ),
  #
  #
  # div(
  #   class="youtube_player no-border",
  #   videoID="LIErnfGITSQ",
  #   width="560",
  #   height="315",
  #   theme="light",
  #   rel="0",
  #   controls="1",
  #   showinfo="1",
  #   autoplay="0",
  #   mute="0",
  #   loop="1",
  #   loading="1",
  #   marginwidth="0" ,
  #   marginheight="0",
  #   hspace="0",
  #   vspace="0",
  #   frameBorder="0",
  #   scrolling="no"
  # )
)
