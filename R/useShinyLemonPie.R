#' Set up a Shiny app to use tarteaucitron
#'
#' @param orientation Banner position (top, bottom and middle)
#' @param showAlertSmall logical. Show the small banner on bottom right (FALSE or TRUE)
#' @param cookieslist logical. Show the cookie list (FALSE or TRUE)
#' @param closePopup logical. Show a close X on the banner (FALSE or TRUE)
#' @param showIcon Show cookie icon to manage cookies
#' @param iconPosition Icon position (BottomRight, BottomLeft, TopRight and TopLeft)
#' @param iconSrc Optional: path for icon image
#' @param DenyAllCta logical. Show the deny all button (FALSE or TRUE)
#' @param AcceptAllCta logical. Show the accept all button when highPrivacy is TRUE (FALSE or TRUE)
#' @param highPrivacy logical. HIGHLY RECOMMANDED Disable auto consent (FALSE or TRUE)
#' @param removeCredit logical. Remove credit link (FALSE or TRUE)
#' @param moreInfoLink logical. Show more info link (FALSE or TRUE)
#' @param groupServices logical. Group services by category (FALSE or TRUE)
#' @param handleBrowserDNTRequest logical. If Do Not Track == 1, disallow all (FALSE or TRUE)
#' @param adblocker logical. Show a Warning if an adblocker is detected (FALSE or TRUE)
#' @param mandatory logical. Show a message about mandatory cookies (FALSE or TRUE)
#' @param mandatoryCta logical. Show the disabled accept button when mandatory on (FALSE or TRUE)
#' @param hashtag Open the panel with this hashtag (default : #tarteaucitron)
#' @param cookieName Cookie name (default : "tarteaucitron")
#' @param serviceDefaultState Default state (true, wait or false)
#' @param privacyUrl Privacy policy url
#' @param bodyPosition bottom or top to bring it as first element for accessibility
#' @param cookieDomain Shared cookie for multisite ex : .my-multisite-domaine.fr
#' @param readmoreLink Change the default read more link
#' @param useExternalCss logical. If false, the tarteaucitron.css file will be loaded
#' @param useExternalJs logical. If false, the tarteaucitron.js file will be loaded
#' @param useBS5Css logical. If true, a css theme compatible with BS5 is loaded.
#' @param lang Language attribute for the ShinyLemonPie input. Available values
#' are "ar","bg", "ca", "cn","cs", "da", "de", "el", "en", "es", "et", "fi", "fr",
#' "hu", "it", "ja", "lt", "lv", "nl", "no", "oc, "pl", "pt", "ro", "ru", "se",
#' "sk", "sv", "tr", "uk", "vi", "zh" for
#' Arabic, Bulgarian, Catalan, Chinese, Czech, Danish, German, Greek, English,
#' Spanish, Estonian, Finnish, French, Hungarian, Italian, Japanese, Lithuanian, 
#' Latvian, Dutch, Norwegian, Occitan, Polish, Portuguese, Romanian & Moldavian,
#' Russian, Northern Sami, Slovak, Swedish, Turkish, Ukrainian, Vietnamese and Chinese respectively.
#'
#' @description This function must be called from a Shiny app's UI in order for all other ShinyLemonPie functions to work.
#' You can call useShinyLemonPie() from anywhere inside the UI, as long as the final app UI contains the result of useShinyLemonPie()
#' @importFrom htmltools htmlDependency
#' @importFrom shiny tags
#' @return Scripts that ShinyLemonPie requires that are automatically inserted to the app head tag. A side effect of calling this function is that a ShinyLemonPie directory is added as a resource path using shiny::addResourcePath().
#' @export
#'
#' @examples
#' useShinyLemonPie(
#'   lang = "en",
#'   orientation = "bottom",
#'   showAlertSmall = FALSE,
#'   cookieslist = FALSE,
#'   closePopup = FALSE,
#'   showIcon = TRUE,
#'   iconPosition = "BottomRight",
#'   iconSrc = "",
#'   DenyAllCta = TRUE,
#'   AcceptAllCta = TRUE,
#'   highPrivacy = TRUE,
#'   removeCredit = FALSE,
#'   moreInfoLink = TRUE,
#'   groupServices = FALSE,
#'   handleBrowserDNTRequest = FALSE,
#'   adblocker = FALSE,
#'   mandatory = TRUE,
#'   mandatoryCta = TRUE,
#'   hashtag = "#tarteaucitron",
#'   cookieName = "tarteaucitron",
#'   serviceDefaultState = "wait",
#'   privacyUrl = "",
#'   bodyPosition = "top",
#'   cookieDomain = "",
#'   readmoreLink = "",
#'   useExternalCss = FALSE,
#'   useExternalJs = FALSE,
#'   useBS5Css = FALSE
#' )
#'
useShinyLemonPie <- function(lang = "cn",
                             orientation = "bottom",
                             showAlertSmall = FALSE,
                             cookieslist = FALSE,
                             closePopup = FALSE,
                             showIcon = TRUE,
                             iconPosition = "BottomRight",
                             iconSrc = "",
                             DenyAllCta = TRUE,
                             AcceptAllCta = TRUE,
                             highPrivacy = TRUE,
                             removeCredit = FALSE,
                             moreInfoLink = TRUE,
                             groupServices = FALSE,
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
                             useBS5Css = FALSE) {
  # test
  match.arg(
    arg = lang,
    choices = c(
      "ar", "bg", "ca", "cn", "cs", "da", "de", "el", "en", "es", "et", "fi", "fr",
      "hu", "it", "ja", "lt", "lv", "nl", "no", "oc", "pl", "pt", "ro", "ru", "se",
      "sk", "sv", "tr", "uk", "vi", "zh"
    ),
    several.ok = FALSE
  )
  match.arg(
    arg = orientation,
    choices = c("top", "middle", "bottom"),
    several.ok = FALSE
  )
  match.arg(
    arg = iconPosition,
    choices = c("BottomRight", "BottomLeft", "TopRight", "TopLeft"),
    several.ok = FALSE
  )
  match.arg(
    arg = serviceDefaultState,
    choices = c("true", "wait", "false"),
    several.ok = FALSE
  )
  match.arg(
    arg = bodyPosition,
    choices = c("top", "bottom"),
    several.ok = FALSE
  )
  test_logical(showAlertSmall)
  test_logical(cookieslist)
  test_logical(closePopup)
  test_logical(showIcon)
  test_logical(DenyAllCta)
  test_logical(AcceptAllCta)
  test_logical(highPrivacy)
  test_logical(removeCredit)
  test_logical(moreInfoLink)
  test_logical(groupServices)
  test_logical(handleBrowserDNTRequest)
  test_logical(adblocker)
  test_logical(mandatory)
  test_logical(mandatoryCta)
  test_logical(useExternalCss)
  test_logical(useExternalJs)
  test_logical(useBS5Css)

  test_character(iconSrc)
  test_character(hashtag)
  test_character(cookieName)
  test_character(privacyUrl)
  test_character(cookieDomain)
  test_character(readmoreLink)
  # transform
  showAlertSmall <- tolower(showAlertSmall)
  cookieslist <- tolower(cookieslist)
  closePopup <- tolower(closePopup)
  showIcon <- tolower(showIcon)
  DenyAllCta <- tolower(DenyAllCta)
  AcceptAllCta <- tolower(AcceptAllCta)
  highPrivacy <- tolower(highPrivacy)
  removeCredit <- tolower(removeCredit)
  moreInfoLink <- tolower(moreInfoLink)
  groupServices <- tolower(groupServices)
  handleBrowserDNTRequest <- tolower(handleBrowserDNTRequest)
  adblocker <- tolower(adblocker)
  mandatory <- tolower(mandatory)
  mandatoryCta <- tolower(mandatoryCta)
  useExternalCss <- tolower(useExternalCss)
  useExternalJs <- tolower(useExternalJs)

  # BS5
  if (useBS5Css == TRUE) {
    useExternalCss <- "true"
  }
  # langue dependency
  dep_js0 <- sprintf("var tarteaucitronForceLanguage = '%s'", lang)
  # tarteaucitron js dependency
  dep_js1 <- htmltools::htmlDependency(
    name = "ShinyLemonPie",
    version = "1.9.7",
    package = "ShinyLemonPie",
    src = "assets",
    script = "tarteaucitron/tarteaucitron.js"
  )
  # tarteaucitroninit
  dep_js2 <- sprintf(
    fmt = '
    tarteaucitron.init({
    "orientation": "%s", /* Banner position (top - middle - bottom) */
    "showAlertSmall": %s, /* Show the small banner on bottom right */
    "cookieslist": %s, /* Show the cookie list */
    "closePopup": %s, /* Show a close X on the banner */
    "showIcon": %s, /* Show cookie icon to manage cookies */
    "iconPosition": "%s", /* BottomRight, BottomLeft, TopRight and TopLeft */
    "iconSrc": "%s", /* Optionnal: URL or base64 encoded image */
    "DenyAllCta" : %s, /* Show the deny all button */
    "AcceptAllCta" : %s, /* Show the accept all button when highPrivacy on */
    "highPrivacy": %s, /* HIGHLY RECOMMANDED Disable auto consent */
    "removeCredit": %s, /* Remove credit link */
    "moreInfoLink": %s, /* Show more info link */
    "groupServices": %s, /* Group services by category */
    "handleBrowserDNTRequest": %s, /* If Do Not Track == 1, disallow all */
    "adblocker": %s, /* Show a Warning if an adblocker is detected */
    "mandatory": %s, /* Show a message about mandatory cookies */
    "mandatoryCta": %s, /* Show the disabled accept button when mandatory on */
    "hashtag": "%s", /* Open the panel with this hashtag */
    "cookieName": "%s", /* Cookie name */
    "serviceDefaultState": "%s", /* Default state (true - wait - false) */
    "privacyUrl": "%s", /* Privacy policy url */
    "bodyPosition": "%s", /* bottom or top to bring it as first element for accessibility */
    "cookieDomain": "%s", /* Shared cookie for multisite ex : .my-multisite-domaine.fr*/
    "readmoreLink": "%s", /* Change the default readmore link */
    "useExternalCss": %s, /* If false, the tarteaucitron.css file will be loaded */
    "useExternalJs": %s /* If false, the tarteaucitron.js file will be loaded */
        });
    ',
    orientation,
    showAlertSmall,
    cookieslist,
    closePopup,
    showIcon,
    iconPosition,
    iconSrc,
    DenyAllCta,
    AcceptAllCta,
    highPrivacy,
    removeCredit,
    moreInfoLink,
    groupServices,
    handleBrowserDNTRequest,
    adblocker,
    mandatory,
    mandatoryCta,
    hashtag,
    cookieName,
    serviceDefaultState,
    privacyUrl,
    bodyPosition,
    cookieDomain,
    readmoreLink,
    useExternalCss,
    useExternalJs
  )
  # BS5 dependency
  bs5_dep <- NULL
  if (useBS5Css == TRUE) {
    bs5_dep <- htmltools::htmlDependency(
      name = "bs5_dep",
      version = "0.0.1",
      package = "ShinyLemonPie",
      src = "assets",
      stylesheet = c(file = "tarteaucitron_theme_fr_dev.css")
      # stylesheet = c(file = "tarteaucitron_bs5_final.css")
    )
  }

  # head tag compilation
  tag <- tags$head(
    # BS5 dependency
    bs5_dep,
    # dependency 0
    tags$script(
      type = "text/javascript",
      dep_js0
    ),
    # dependency 1
    tags$script(
      type = "text/javascript",
      dep_js1
    ),
    # dependency 2
    tags$script(
      type = "text/javascript",
      dep_js2
    )
  )
  # return
  return(tag)
}
