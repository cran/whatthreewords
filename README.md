
<!-- README.md is generated from README.Rmd. Please edit that file -->

# whatthreewords

<!-- badges: start -->

[![R-CMD-check](https://github.com/DavidASmith/whatthreewords/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/DavidASmith/whatthreewords/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The whatthreewords package supports working with the
[what3words](https://what3words.com/) API from R. what3words has
partitioned the surface of the earth into 3m x 3m squares, each of which
can be identified by three words. These are conventionally styled with
three slashes at the beginning. For example, the peak of the Great
Pyramid of Giza is located by the three words
[///ballots.height.silks](https://what3words.com/ballots.height.silks).

You can use the package to determine the three word address for any
coordinates, or return the coordinates for any valid three word
combination.

## Installation

You can install the development version of whatthreewords from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("DavidASmith/whatthreewords")
```

## Authentication

The what3words API requires a key for authentication. You can register
for a key at <https://developer.what3words.com/public-api>.

You must then set the `WTW_API_KEY` environment variable to hold your
key. For example…

``` r
Sys.setenv(WTW_API_KEY = "MYKEY")
```

## Examples

Here are a few examples of what you can do with the package. For more
details, see the vignette ‘Using whatthreewords’.

### Get a what3words address from coordinates

Use `words_from_coords` to get a what3words location for a given
latitude and longitude.

``` r
library(whatthreewords)

words_from_coords(lat = 51.5095, 
                  lon = -0.1266)
#> [1] "lamp.inner.dent"
```

This is vectorised over `lat` and `lon`.

``` r
words_from_coords(lat = c(53.3703, 53.41145, 53.3096), 
                  lon = c(-1.47119, -1.500204, -1.478715))
#> [1] "elite.icon.levels" "weep.stands.shack" "soon.belt.owls"
```

## Get coordinates from a what3words location

`coords_from_words` returns the coordinates for a what3words location.

``` r
coords_from_words("hours.flesh.petal")
#> Warning: ERROR: QuotaExceeded: Quota Exceeded. Please upgrade your usage plan,
#> or contact support@what3words.com
#>      lat lon
#> [1,]  NA  NA
```

## Alternative packages

There is an alternative R client for what3words available on
[CRAN](https://CRAN.R-project.org/package=threewords) ([Github
repo](https://github.com/Ironholds/threewords)). However, this has not
been updated (at time of writing) for several years and I couldn’t get
it to work. I needed something fairly quickly so wrote this from
scratch.
