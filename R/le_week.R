#' Compute MCTQ average weekly light exposure
#'
#' @description
#'
#' `r lifecycle::badge("maturing")`
#'
#' `le_week()` computes the __average weekly light exposure__ for the standard
#' version of the Munich ChronoType Questionnaire (MCTQ).
#'
#' @section Guidelines:
#'
#' Roenneberg, Allebrandt, Merrow, & Vetter (2012) and The Worldwide
#' Experimental Platform (n.d.) guidelines for `le_week()`
#' (\eqn{LE_{week}}{LE_week}) computation are as follows.
#'
#' ## Notes
#'
#' * The average weekly light exposure (\eqn{LE_{week}}{LE_week}) is the
#' weighted average of the light exposure on work and work-free days in a week.
#' * If you are visualizing this documentation in plain text, you may have some
#' trouble understanding the equations. You can see this documentation on the
#' package [website](https://docs.ropensci.org/mctq/reference/).
#'
#' ## Computation
#'
#' \deqn{LE_{week} = \frac{(LE_W \times WD) + (LE_F \times FD)}{7}}
#'
#' Where:
#'
#' * \eqn{LE_{week}} = Average weekly light exposure.
#' * \eqn{LE_W} = Light exposure on workdays.
#' * \eqn{LE_F} = Light exposure on work-free days.
#' * \eqn{WD} = Number of workdays per week ("I have a regular work schedule and
#' work ___ days per week").
#' * \eqn{FD} = Number of work-free days per week.
#'
#' \strong{*} \eqn{W} = Workdays; \eqn{F} = Work-free days.
#'
#' @param le_w A [`Duration`][lubridate::duration()] object corresponding to the
#'   __light exposure on workdays__ from a standard version of the MCTQ
#'   questionnaire.
#' @param le_f A [`Duration`][lubridate::duration()] object corresponding to the
#'   __light exposure on work-free days__ from a standard version of the MCTQ
#'   questionnaire.
#' @param wd An [integerish][checkmate::test_integerish()]
#'   [`numeric`][base::numeric()] object or an [`integer`][base::integer()]
#'   object corresponding to the __number of workdays per week__ from a standard
#'   version of the MCTQ questionnaire.
#'
#' @return A [`Duration`][lubridate::duration()] object corresponding to the
#'   vectorized weighted mean of `le_w` and `le_f` with `wd` and `fd(wd)` as
#'   weights.
#'
#' @template details_b
#' @template references_a
#' @family MCTQ functions
#' @export
#'
#' @examples
#' ## Scalar example
#'
#' le_w <- lubridate::dhours(1.5)
#' le_f <- lubridate::dhours(3.7)
#' wd <- 5
#' le_week(le_w, le_f, wd)
#' #> [1] "7662.85714285714s (~2.13 hours)" # Expected
#'
#' le_w <- lubridate::dhours(3)
#' le_f <- lubridate::dhours(1.5)
#' wd <- 6
#' le_week(le_w, le_f, wd)
#' #> [1] "10028.5714285714s (~2.79 hours)" # Expected
#'
#' le_w <- lubridate::dhours(5.6)
#' le_f <- lubridate::as.duration(NA)
#' wd <- 3
#' le_week(le_w, le_f, wd)
#' #> [1] NA # Expected
#'
#' ## Vector example
#'
#' le_w <- c(lubridate::dhours(3), lubridate::dhours(2.45))
#' le_f <- c(lubridate::dhours(3), lubridate::dhours(3.75))
#' wd <- c(4, 5)
#' le_week(le_w, le_f, wd)
#' #> [1] "10800s (~3 hours)" # Expected
#' #> [2] "10157.1428571429s (~2.82 hours)" # Expected
#'
#' ## Checking second output from vector example
#'
#' if (requireNamespace("stats", quietly = TRUE)) {
#'     i <- 2
#'     x <- c(le_w[i], le_f[i])
#'     w <- c(wd[i], fd(wd[i]))
#'     lubridate::as.duration(stats::weighted.mean(x, w))
#' }
#' #> [1] "10157.1428571429s (~2.82 hours)" # Expected
#'
#' ## Converting the output to `hms`
#'
#' le_w <- lubridate::dhours(1.25)
#' le_f <- lubridate::dhours(6.23)
#' wd <- 3
#' le_week(le_w, le_f, wd)
#' #> [1] "14744.5714285714s (~4.1 hours)" # Expected
#'
#' hms::hms(as.numeric(le_week(le_w, le_f, wd)))
#' #> 04:05:44.571429 # Expected
#'
#' ## Rounding the output at the seconds level
#'
#' le_w <- lubridate::dhours(3.4094)
#' le_f <- lubridate::dhours(6.2345)
#' wd <- 2
#' le_week(le_w, le_f, wd)
#' #> [1] "19538.3828571429s (~5.43 hours)" # Expected
#'
#' round_time(le_week(le_w, le_f, wd))
#' #> [1] "19538s (~5.43 hours)" # Expected
le_week <- function(le_w, le_f, wd) {
    assert_duration(le_w, lower = lubridate::duration(0))
    assert_duration(le_f, lower = lubridate::duration(0))
    assert_numeric_(wd)
    checkmate::assert_integerish(wd, lower = 0, upper = 7)
    assert_identical(le_w, le_f, wd, type = "length")

    wd <- as.integer(wd)

    ((le_w * wd) + (le_f * fd(wd))) / 7
}
