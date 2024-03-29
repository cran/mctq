
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mctq <a href = "https://docs.ropensci.org/mctq/"><img src = "man/figures/logo.png" align="right" height="139" /></a>

<!-- badges: start -->

[![Status at rOpenSci Software Peer
Review](https://badges.ropensci.org/434_status.svg)](https://github.com/ropensci/software-review/issues/434)
[![CRAN
status](https://www.r-pkg.org/badges/version/mctq)](https://cran.r-project.org/package=mctq)
[![CRAN
downloads](https://cranlogs.r-pkg.org/badges/grand-total/mctq)](https://cran.r-project.org/package=mctq)
[![mctq status
badge](https://ropensci.r-universe.dev/badges/mctq)](https://ropensci.r-universe.dev)
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://lifecycle.r-lib.org/articles/stages.html#maturing)
[![R-CMD-check](https://github.com/ropensci/mctq/workflows/R-CMD-check/badge.svg)](https://github.com/ropensci/mctq/actions)
[![Codecov test
coverage](https://codecov.io/gh/ropensci/mctq/branch/main/graph/badge.svg)](https://app.codecov.io/gh/ropensci/mctq?branch=main)
[![License:
MIT](https://img.shields.io/badge/license-MIT-green)](https://choosealicense.com/licenses/mit/)
[![fair-software.eu](https://img.shields.io/badge/fair--software.eu-%E2%97%8F%20%20%E2%97%8F%20%20%E2%97%8F%20%20%E2%97%8F%20%20%E2%97%8F-green)](https://fair-software.eu)
[![CII Best
Practices](https://bestpractices.coreinfrastructure.org/projects/6244/badge)](https://bestpractices.coreinfrastructure.org/projects/6244)
[![CRAN
status](https://www.r-pkg.org/badges/version/mctq)](https://CRAN.R-project.org/package=mctq)
<!-- badges: end -->

## Overview

`mctq` is an R package that provides a complete toolkit to process the
Munich ChronoType Questionnaire (MCTQ), a quantitative and validated
tool to assess chronotypes using peoples’ sleep behavior presented by
Till Roenneberg, Anna Wirz-Justice, and Martha Merrow in
[2003](https://doi.org/10.1177/0748730402239679). The aim of `mctq` is
to facilitate the work of sleep and chronobiology scientists with MCTQ
data and to improve reproducibility in research.

`mctq` adheres to the [tidyverse
principles](https://tidyverse.tidyverse.org/articles/manifesto.html) and
integrates with the [tidyverse ecosystem](https://www.tidyverse.org/).

Learn more about the MCTQ questionnaire at
<https://www.thewep.org/documentations/mctq>.

### Wait, an R package for a questionnaire?

Although it may look like a simple questionnaire, MCTQ requires a lot of
date/time manipulation. This poses a challenge for many scientists,
being that most people have difficulties with date/time data, especially
when dealing with an extensive dataset. The `mctq` package comes to
address this issue.

`mctq` can handle the processing tasks for the three MCTQ versions
(standard, micro, and shift) with few dependencies, relying much of its
applications on the [lubridate](https://lubridate.tidyverse.org/) and
[hms](https://hms.tidyverse.org/) packages from
[tidyverse](https://www.tidyverse.org/). We also designed `mctq` with
the user experience in mind, by creating an interface that resembles the
way the questionnaire data is shown in MCTQ publications, and by
providing extensive and detailed documentation about each computation
proposed by the MCTQ authors. The package also includes several utility
tools, along with fictional datasets for testing and learning purposes.

## Prerequisites

You need to have some familiarity with the [R programming
language](https://www.r-project.org/) and with the
[lubridate](https://lubridate.tidyverse.org/) and
[hms](https://hms.tidyverse.org/) packages from
[tidyverse](https://www.tidyverse.org/) to use `mctq` main functions.

In case you don’t feel comfortable with R, we strongly recommend
checking Hadley Wickham and Garrett Grolemund free and online book [R
for Data Science](https://r4ds.had.co.nz/) and the Coursera course from
John Hopkins University [Data Science: Foundations using
R](https://www.coursera.org/specializations/data-science-foundations-r)
(free for audit students).

Please refer to the [lubridate](https://lubridate.tidyverse.org/) and
[hms](https://hms.tidyverse.org/) package documentation to learn more
about them. These two are essential packages to deal with date/time data
in R. We also recommend that you read the [Dates and
times](https://r4ds.had.co.nz/dates-and-times.html) chapter from Wickham
& Grolemund’s book [R for Data Science](https://r4ds.had.co.nz/).

## Installation

You can install the released version of `mctq` from
[CRAN](https://CRAN.R-project.org/package=mctq) with:

``` r
install.packages("mctq")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("ropensci/mctq")
```

## Usage

`mctq` makes use of the [lubridate](https://lubridate.tidyverse.org/)
and [hms](https://hms.tidyverse.org/) packages from
[tidyverse](https://www.tidyverse.org/), which provide special objects
to deal with date/time values in R. If your dataset does not conform to
this structure, you first need to convert your data to it. Please refer
to those package documentations to learn more about them.

Due to the [circular nature of time](https://youtu.be/eelVqfm8vVc), we
strongly recommend that you use appropriate temporal objects while
dealing with date/time in R. This can help you get rid of several
computation mistakes while trying to adapt your data from a base 10 to a
system rooted in a base 12 numerical system.

### Workdays and work-free days variables

After your data is set to start, just use the `mctq` functions below to
process it.

Note that the `mctq` functions uses a similar naming pattern to those
used in the MCTQ publications. This makes it easy to find and apply any
computation necessary.

- `fd()`: compute MCTQ work-free days.
- `so()`: compute MCTQ local time of sleep onset.
- `gu()`: compute MCTQ local time of getting out of bed.
- `sdu()`: compute MCTQ sleep duration.
- `tbt()`: compute MCTQ total time in bed.
- `msl()`: compute MCTQ local time of mid-sleep.
- `napd()`: compute MCTQ nap duration (only for MCTQ Shift).
- `sd24()`: compute MCTQ 24 hours sleep duration (only for MCTQ Shift).

Example:

``` r
# Local time of preparing to sleep on workdays
sprep_w <- c(hms::parse_hm("23:45"), hms::parse_hm("02:15"))
# Sleep latency or time to fall asleep after preparing to sleep on workdays
slat_w <- c(lubridate::dminutes(30), lubridate::dminutes(90))
# Local time of sleep onset on workdays
so(sprep_w, slat_w)
#> 00:15:00
#> 03:45:00
```

### Combining workdays and work-free days variables

For computations combining workdays and work-free days, use:

- `sd_week()`: compute MCTQ average weekly sleep duration.
- `sd_overall()`: compute MCTQ overall sleep duration (only for MCTQ
  Shift).
- `sloss_week()`: compute MCTQ weekly sleep loss.
- `le_week()`: compute MCTQ average weekly light exposure.
- `msf_sc()`: compute MCTQ chronotype or sleep-corrected local time of
  mid-sleep on work-free days.
- `sjl()` and `sjl_rel()`: compute MCTQ social jet lag.
- `sjl_sc()` and `sjl_sc_rel()`: compute Jankowski’s MCTQ
  sleep-corrected social jetlag.
- `sjl_weighted()`: compute MCTQ absolute social jetlag across all
  shifts (only for MCTQ Shift).

Example:

``` r
# Local time of mid-sleep on workdays
msw <- c(hms::parse_hm("02:05"), hms::parse_hm("04:05"))
# Local time of mid-sleep on work-free days
msf <- c(hms::parse_hm("23:05"), hms::parse_hm("08:30"))
# Relative social jetlag
sjl_rel(msw, msf)
#> [1] "-10800s (~-3 hours)"  "15900s (~4.42 hours)"
```

See a quick tour of all MCTQ main functions
[here](https://docs.ropensci.org/mctq/articles/mctq.html).

### Utilities

`mctq` is also equipped with some utility tools to help with your MCTQ
data. The package also provides fictional datasets of the standard,
micro, and shift MCTQ versions for testing and learning purposes.

All functions are properly documented, showing all the guidelines behind
the computations. Click
[here](https://docs.ropensci.org/mctq/reference/index.html) to see a
list of them.

## Citation

If you use `mctq` in your research, please consider citing it. We put a
lot of work to build and maintain a free and open-source R package. You
can find the `mctq` citation below.

``` r
citation("mctq")
#> 
#> To cite {mctq} in publications use:
#> 
#>   Vartanian, D. (2023). {mctq}: tools to process the Munich ChronoType
#>   Questionnaire (MCTQ). R package version 0.3.2.
#>   https://docs.ropensci.org/mctq/
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Unpublished{,
#>     title = {{mctq}: tools to process the Munich ChronoType Questionnaire (MCTQ)},
#>     author = {Daniel Vartanian},
#>     year = {2023},
#>     url = {https://docs.ropensci.org/mctq/},
#>     note = {R package version 0.3.2},
#>   }
```

## Contributing

We welcome contributions, including bug reports.

Take a moment to review our [Guidelines for
Contributing](https://docs.ropensci.org/mctq/CONTRIBUTING.html).

## Acknowledgments

The initial development of `mctq` was supported by a scholarship
provided by the [University of Sao Paulo (USP)](http://usp.br/) (❤️).

`mctq` hex logo was based on an illustration created by [hilda design
matters Zurich](https://hilda.ch/) for the [Daylight Academy
(DLA)](https://daylight.academy/).

<br>

Become an `mctq` supporter!

Click [here](https://github.com/sponsors/danielvartan) to make a
donation. Please indicate the `mctq` package in your donation message.
