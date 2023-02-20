## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = FALSE------------------------------------------------------------
#  install.packages("mctq")

## ---- warning = FALSE, message = FALSE----------------------------------------
library(mctq)

## ---- warning = FALSE, message = FALSE----------------------------------------
library(readr)

data <- readr::read_csv(mctq::raw_data("vignette_mctq.csv"),
                        col_types = readr::cols(.default = "c"))

## -----------------------------------------------------------------------------
data

## ---- warnings = FALSE, message = FALSE---------------------------------------
library(dplyr)
library(hms)
library(lubridate)

data <- data %>% dplyr::mutate(
  dplyr::across(c("id", "wd"), as.integer),
  dplyr::across(dplyr::matches("^work$|^alarm_|^wake_|^reasons_f$"),
                as.logical),
  dplyr::across(dplyr::matches("^bt_|^sprep_|^se_"), hms::parse_hm),
  dplyr::across(dplyr::matches("^slat_|^si_"),
                ~ lubridate::dminutes(as.numeric(.x))),
  dplyr::across(dplyr::matches("^le_"), 
                ~ lubridate::as.duration(hms::parse_hm(.x)))
  )

## -----------------------------------------------------------------------------
data

## ---- warnings = FALSE, message = FALSE---------------------------------------
data$fd <- fd(data$wd)

# Comparing the result
data %>% dplyr::select(wd, fd)

## ---- warnings = FALSE, message = FALSE---------------------------------------
data$so_w <- so(data$sprep_w, data$slat_w)
data$so_f <- so(data$sprep_f, data$slat_f)

# Comparing the result
data %>% dplyr::select(sprep_w, slat_w, so_w, sprep_f, slat_f, so_f)

## ---- warnings = FALSE, message = FALSE---------------------------------------
data$gu_w <- gu(data$se_w, data$si_w)
data$gu_f <- gu(data$se_f, data$si_f)

# Comparing the result
data %>% dplyr::select(se_w, si_w, gu_w, se_f, si_f, gu_f)

## ---- warnings = FALSE, message = FALSE---------------------------------------
data$sd_w <- sdu(data$so_w, data$se_w)
data$sd_f <- sdu(data$so_f, data$se_f)

# Comparing the result
data %>% dplyr::select(so_w, se_w, sd_w, so_f, se_f, sd_f)

## ---- warnings = FALSE, message = FALSE---------------------------------------
data$tbt_w <- tbt(data$bt_w, data$gu_w)
data$tbt_f <- tbt(data$bt_f, data$gu_f)

# Comparing the result
data %>% dplyr::select(bt_w, gu_w, tbt_w, bt_f, gu_f, tbt_f)

## ---- warnings = FALSE, message = FALSE---------------------------------------
data$msw <- msl(data$so_w, data$sd_w)
data$msf <- msl(data$so_f, data$sd_f)

# Comparing the result
data %>% dplyr::select(so_w, sd_w, msw, so_f, sd_f, msf)

## ---- warnings = FALSE, message = FALSE---------------------------------------
data$sd_week <- sd_week(data$sd_w, data$sd_f, data$wd)

# Comparing the result
data <- data %>% dplyr::mutate(sd_week_rounded = mctq::round_time(sd_week))
data %>% dplyr::select(wd, sd_w, fd, sd_f, sd_week_rounded)

## ---- warnings = FALSE, message = FALSE---------------------------------------
data$sloss_week <- sloss_week(data$sd_w, data$sd_f, data$wd)

# Comparing the result
data <- data %>% dplyr::mutate(
  sloss_week_rounded = mctq::round_time(sloss_week))
data %>% dplyr::select(wd, sd_w, fd, sd_f, sloss_week_rounded)

## ---- warnings = FALSE, message = FALSE---------------------------------------
data$le_week <- le_week(data$le_w, data$le_f, data$wd)

# Comparing the result
data <- data %>% dplyr::mutate(le_week_rounded = mctq::round_time(le_week))
data %>% dplyr::select(wd, le_w, fd, le_f, le_week_rounded)

## ---- warnings = FALSE, message = FALSE---------------------------------------
data$msf_sc <- msf_sc(data$msf, data$sd_w, data$sd_f, data$sd_week, 
                      data$alarm_f)

# Comparing the result
data <- data %>% dplyr::mutate(msf_sc_rounded = mctq::round_time(msf_sc))
data %>% dplyr::select(msf, msf_sc_rounded)

## ---- warnings = FALSE, message = FALSE---------------------------------------
data$sjl_rel <- sjl_rel(data$msw, data$msf)

# Comparing the result
data %>% dplyr::select(msw, msf, sjl_rel)

## ---- warnings = FALSE, message = FALSE---------------------------------------
data$sjl <- abs(data$sjl_rel)

# Comparing the result
data %>% dplyr::select(sjl_rel, sjl)

## -----------------------------------------------------------------------------
data <- data %>%
  dplyr::relocate(
            id, work, wd, fd,

            bt_w, sprep_w, slat_w, so_w, se_w, si_w, gu_w, alarm_w,
            wake_before_w, sd_w, tbt_w, le_w, msw,

            bt_f, sprep_f, slat_f, so_f, se_f, si_f, gu_f, alarm_f,
            reasons_f, reasons_why_f, sd_f, tbt_f, le_f, msf,

            sd_week, sloss_week, le_week, msf_sc, sjl_rel, sjl
            ) %>%
  dplyr::select(-dplyr::ends_with("_rounded"))

## -----------------------------------------------------------------------------
data

## -----------------------------------------------------------------------------
pretty_mctq(data, round = FALSE)

