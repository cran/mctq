% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pretty_mctq.R
\name{pretty_mctq}
\alias{pretty_mctq}
\title{Make an MCTQ dataset more presentable}
\usage{
pretty_mctq(data, round = TRUE, hms = TRUE)
}
\arguments{
\item{data}{A \code{\link[base:data.frame]{data.frame}} object.}

\item{round}{(optional) a \code{\link[base:logical]{logical}} value indicating if
\code{\link[lubridate:duration]{Duration}} and \code{\link[hms:hms]{hms}} objects must be
rounded at the seconds level (default: \code{TRUE}).}

\item{hms}{(optional) a \code{\link[base:logical]{logical}} value indicating if
\code{\link[lubridate:duration]{Duration}} and \code{\link[base:difftime]{difftime}}
objects must be converted to \code{\link[hms:hms]{hms}} (default: \code{TRUE}).}
}
\value{
A transformed \code{\link[base:data.frame]{data.frame}} object, as indicated
in the arguments.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#maturing}{\figure{lifecycle-maturing.svg}{options: alt='[Maturing]'}}}{\strong{[Maturing]}}

\code{pretty_mctq()} helps you to transform your Munich ChronoType Questionnaire
(MCTQ) data in many ways. See the Arguments and Details section to learn
more.
}
\details{
\subsection{Rounding}{

Please note that by rounding MCTQ values you discard data. That is to say
that if you need to redo a computation, or do new ones, your values can be
off by a couple of seconds (see
\href{https://en.wikipedia.org/wiki/Round-off_error}{round-off error}).

Round your values only if and when you want to present them more clearly,
like in graphical representations. You can also round values to facilitate
data exporting to text formats (like \code{.csv}), but note that this will come
with a precision cost.

Note also that \code{pretty_mctq()} uses \code{\link[base:Round]{round()}} for rounding,
which uses uses the IEC 60559 standard (\emph{"go to the even digit"}) for
rounding off a 5. Therefore, \code{round(0.5)} is equal to 0 and \code{round(-1.5)} is
equal to -2. See \code{\link[base:Round]{?round}} to learn more.
}
}
\examples{
data <- data.frame(
    a = 1,
    b = lubridate::duration(1.12345),
    c = hms::hms(1.12345)
    )

## Rounding time objects from `data`

pretty_mctq(data, round = TRUE, hms = FALSE)

## Converting non-'hms' time objects from 'data' to 'hms'

pretty_mctq(data, round = FALSE, hms = TRUE)
}
\seealso{
Other utility functions: 
\code{\link{random_mctq}()},
\code{\link{raw_data}()}
}
\concept{utility functions}
