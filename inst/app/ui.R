
ui <- fluidPage(
  theme = bslib::bs_theme(version = 5,bootswatch = "flatly"),

  # tags$head(
  #   tags$link(rel = "stylesheet", type = "text/css", href = "tarteaucitron_bs5.css")
  # ),

  useShinyLemonPie(
    orientation = "bottom",
    showAlertSmall = FALSE,
    cookieslist = TRUE,
    closePopup = TRUE,
    showIcon = TRUE,
    iconPosition = "BottomRight",
    #iconSrc = "cookie.png",
    DenyAllCta = TRUE,
    AcceptAllCta = TRUE,
    highPrivacy = TRUE,
    removeCredit = TRUE,
    moreInfoLink = TRUE,
    groupServices = TRUE,
    handleBrowserDNTRequest = FALSE,
    adblocker = FALSE,
    mandatory = TRUE,
    mandatoryCta = TRUE,
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
# ex youtube
  tags$head(
    tags$script(type = "text/javascript",
                '(tarteaucitron.job = tarteaucitron.job || []).push("youtube");'
    )
  ),


  div(
    class="youtube_player no-border",
    videoID="LIErnfGITSQ",
    width="560",
    height="315",
    theme="light",
    rel="0",
    controls="1",
    showinfo="1",
    autoplay="0",
    mute="0",
    loop="1",
    loading="1",
    marginwidth="0" ,
    marginheight="0",
    hspace="0",
    vspace="0",
    frameBorder="0",
    scrolling="no"
  )
)