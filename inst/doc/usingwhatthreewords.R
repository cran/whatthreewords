## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(whatthreewords)

## ----include=FALSE------------------------------------------------------------
key_present <- tryCatch({
  whatthreewords::get_api_key()
  TRUE
}, 
error = function(e) FALSE)

## ----eval=key_present---------------------------------------------------------
#  words_from_coords(lat = 51.5095,
#                    lon = -0.1266)

## ----eval=key_present---------------------------------------------------------
#  words_from_coords(lat = 51.5095,
#                    lon = -0.1266,
#                    full_details = TRUE)

## ----eval=key_present---------------------------------------------------------
#  locations <- data.frame(name = c("Sheffield United", "Sheffield Wednesday", "Sheffield Club"),
#                          lat = c(53.3703, 53.41145, 53.3096),
#                          lon = c(-1.47119, -1.500204, -1.478715))
#  locations

## ----eval=key_present---------------------------------------------------------
#  
#  locations$words <- words_from_coords(lat = locations$lat,
#                                       lon = locations$lon)
#  
#  locations

## ----eval=key_present---------------------------------------------------------
#  coords_from_words("hours.flesh.petal")

## ----eval=key_present---------------------------------------------------------
#  coords_from_words("hours.flesh.petal", full_details = TRUE)

## ----eval=key_present---------------------------------------------------------
#  coords_from_words(c("laughs.remind.fact",
#                      "hotdog.jumping.frog",
#                      "dream.helps.forget"))

## ----eval=key_present---------------------------------------------------------
#  words_from_coords(lat = 48.70913,
#                    lon = 9.001062,
#                    language = "de")

## ----eval=key_present---------------------------------------------------------
#  get_available_languages() |>
#    head()

