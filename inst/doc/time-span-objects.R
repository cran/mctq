## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----echo = TRUE--------------------------------------------------------------
start <- lubridate::ymd_hms("2020-01-01 10:00:00", tz = "America/New_York")

start + lubridate::duration(1, units = "hour")


## ----echo = TRUE--------------------------------------------------------------
start <- lubridate::ymd_hms("2016-03-13 01:00:00", tz = "America/New_York")

start + lubridate::duration(1, units = "hour")
start + lubridate::period(1, units = "hour")

## ----echo = TRUE--------------------------------------------------------------
start <- lubridate::ymd_hms("2016-03-13 01:00:00", tz = "America/New_York")

start + lubridate::duration(1, units = "day")
start + lubridate::period(1, units = "day")

## ----echo = TRUE, eval = FALSE------------------------------------------------
#  hms::parse_hm("10:00") + lubridate::period(1, units = "hours")
#  
#  #> Error: Incompatible classes: <hms> + <Period>

