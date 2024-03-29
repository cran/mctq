% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shift_mctq.R
\docType{data}
\name{shift_mctq}
\alias{shift_mctq}
\title{A fictional MCTQ\eqn{^{Shift}}{ Shift} dataset}
\format{
A \code{\link[dplyr:reexports]{tibble}} with 135 columns and 50 rows:

\describe{
\item{id}{
A unique \code{\link[base:integer]{integer}} value to identify each respondent in
the dataset.
\cr \cr
Type: Control.
\cr \cr
R class: \code{\link[base:integer]{integer}}.
}

\item{n_w_m}{
Number of days \strong{worked in morning shifts} within a shift cycle.
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[base:integer]{integer}}.
}

\item{bt_w_m}{
Local time of going to bed on workdays \strong{between two morning shifts}.
\cr \cr
Statement (\code{EN}): "I go to bed at ___ o'clock'".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{sprep_w_m}{
Local time of preparing to sleep on workdays \strong{between two morning
shifts}.
\cr \cr
Statement (\code{EN}): "I actually get ready to fall asleep at ___ o'clock".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{slat_w_m}{
Sleep latency or time to fall asleep after preparing to sleep on workdays
\strong{between two morning shifts}.
\cr \cr
Statement (\code{EN}): "I need ___ minutes to fall asleep".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{so_w_m}{
Local time of sleep onset on workdays \strong{between two morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{se_w_m}{
Local time of sleep end on workdays \strong{between two morning shifts}.
\cr \cr
Statement (\code{EN}): "I wake up at ___ o'clock".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{tgu_w_m}{
Time to get up on workdays \strong{between two morning shifts}.
\cr \cr
Statement (\code{EN}): "I get up after ___ minutes".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{gu_w_m}{
Local time of getting out of bed on workdays \strong{between two morning
shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{alarm_w_m}{
A \code{\link[base:logical]{logical}} value indicating if the respondent uses an
alarm clock to wake up on workdays \strong{between two morning shifts}.
\cr \cr
Statement (\code{EN}): "I wake up at ___ o'clock: ( ___ ) with alarm ( ___ )
without alarm".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[base:logical]{logical}}.
}

\item{reasons_w_m}{
A \code{\link[base:logical]{logical}} value indicating if the respondent has any
particular reasons for why they \strong{cannot} freely choose their sleep times
on workdays \strong{between two morning shifts}.
\cr \cr
Statement (\code{EN}): "There are particular reasons why I \strong{cannot} freely
choose my sleep times on morning shifts: Yes ( ___ ) No ( ___ )".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[base:logical]{logical}}.
}

\item{reasons_why_w_m}{
Particular reasons for why the respondent cannot freely choose their sleep
times on workdays \strong{between two morning shifts}.
\cr \cr
Statement (\code{EN}): "If "Yes": Child(ren)/pet(s) ( ___ ) Hobbies ( ___ )
Others, for example: ___".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[base:character]{character}}.
}

\item{sd_w_m}{
Sleep duration on workdays \strong{between two morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{tbt_w_m}{
Total time in bed on workdays \strong{between two morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{msw_m}{
Local time of mid-sleep on workdays \strong{between two morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{nap_w_m}{
A \code{\link[base:logical]{logical}} value indicating if the respondent usually
takes a nap on workdays \strong{between two morning shifts}.
\cr \cr
Statement (\code{EN}): "I usually take a nap: Yes ( ___ ) No ( ___ )".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[base:logical]{logical}}.
}

\item{napo_w_m}{
Local time of nap onset on workdays \strong{between two morning shifts}.
\cr \cr
Statement (\code{EN}): "If "Yes": I take a nap from ___ o'clock to ___ o'clock".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{nape_w_m}{
Local time of nap end on workdays \strong{between two morning shifts}.
\cr \cr
Statement (\code{EN}): "If "Yes": I take a nap from ___ o'clock to ___ o'clock".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{napd_w_m}{
Nap duration on workdays \strong{between two morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{sd24_w_m}{
24 hours sleep duration (sleep duration + nap duration) on workdays
\strong{between two morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{n_f_m}{
Number of free days \strong{after working in morning shifts} within a shift
cycle.
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[base:integer]{integer}}.
}

\item{bt_f_m}{
Local time of going to bed on work-free days \strong{between two free days after
morning shifts}.
\cr \cr
Statement (\code{EN}): "I go to bed at ___ o'clock'".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{sprep_f_m}{
Local time of preparing to sleep on work-free days \strong{between two free days
after morning shifts}.
\cr \cr
Statement (\code{EN}): "I actually get ready to fall asleep at ___ o'clock".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{slat_f_m}{
Sleep latency or time to fall asleep after preparing to sleep on work-free
days \strong{between two free days after morning shifts}.
\cr \cr
Statement (\code{EN}): "I need ___ minutes to fall asleep".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{so_f_m}{
Local time of sleep onset on work-free days \strong{between two free days after
morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{se_f_m}{
Local time of sleep end on work-free days \strong{between two free days after
morning shifts}.
\cr \cr
Statement (\code{EN}): "I wake up at ___ o'clock".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{tgu_f_m}{
Time to get up on work-free days \strong{between two free days after morning
shifts}.
\cr \cr
Statement (\code{EN}): "I get up after ___ minutes".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{gu_f_m}{
Local time of getting out of bed on work-free days \strong{between two free days
after morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{alarm_f_m}{
A \code{\link[base:logical]{logical}} value indicating if the respondent uses an
alarm clock to wake up on work-free days \strong{between two free days after
morning shifts}.
\cr \cr
Statement (\code{EN}): "I wake up at ___ o'clock: ( ___ ) with alarm ( ___ )
without alarm".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[base:logical]{logical}}.
}

\item{reasons_f_m}{
A \code{\link[base:logical]{logical}} value indicating if the respondent has any
particular reasons for why they \strong{cannot} freely choose their sleep times
on work-free days \strong{between two free days after morning shifts}.
\cr \cr
Statement (\code{EN}): "There are particular reasons why I \strong{cannot} freely
choose my sleep times on morning shifts: Yes ( ___ ) No ( ___ )".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[base:logical]{logical}}.
}

\item{reasons_why_f_m}{
Particular reasons for why the respondent cannot freely choose their sleep
times on work-free days \strong{between two free days after morning shifts}.
\cr \cr
Statement (\code{EN}): "If "Yes": Child(ren)/pet(s) ( ___ ) Hobbies ( ___ )
Others, for example: ___".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[base:character]{character}}.
}

\item{sd_f_m}{
Sleep duration on work-free days \strong{between two free days after morning
shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{tbt_f_m}{
Total time in bed on work-free days \strong{between two free days after morning
shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{msf_m}{
Local time of mid-sleep on work-free days \strong{between two free days after
morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{nap_f_m}{
A \code{\link[base:logical]{logical}} value indicating if the respondent usually
takes a nap on work-free days \strong{between two free days after morning
shifts}.
\cr \cr
Statement (\code{EN}): "I usually take a nap: Yes ( ___ ) No ( ___ )".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[base:logical]{logical}}.
}

\item{napo_f_m}{
Local time of nap onset on work-free days \strong{between two free days after
morning shifts}.
\cr \cr
Statement (\code{EN}): "If "Yes": I take a nap from ___ o'clock to ___ o'clock".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{nape_f_m}{
Local time of nap end on work-free days \strong{between two free days after
morning shifts}.
\cr \cr
Statement (\code{EN}): "If "Yes": I take a nap from ___ o'clock to ___ o'clock".
\cr \cr
Type: Basic.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{napd_f_m}{
Nap duration on work-free days \strong{between two free days after morning
shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{sd24_f_m}{
24 hours sleep duration (sleep duration + nap duration) on work-free days
\strong{between two free days after morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{sd_overall_m}{
Overall sleep duration considering workdays \strong{between two morning shifts}
and work-free days \strong{between two free days after morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{msf_sc_m}{
Corrected local time of mid-sleep on work-free days \strong{between two free days
after morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[hms:hms]{hms}}.
}

\item{sjl_rel_m}{
Relative social jetlag considering workdays \strong{between two morning shifts}
and work-free days \strong{between two free days after morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{sjl_m}{
Absolute social jetlag considering workdays \strong{between two morning shifts}
and work-free days \strong{between two free days after morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{sjl_sc_rel_m}{
Jankowski's relative sleep-corrected social jetlag considering workdays
\strong{between two morning shifts} and work-free days \strong{between two free days
after morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{sjl_sc_m}{
Jankowski's sleep-corrected social jetlag considering workdays \strong{between
two morning shifts} and work-free days \strong{between two free days after
morning shifts}.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

\item{...}{
For brevity, the subsequent variables, except for \strong{sjl_weighted} and
\strong{sjl_sc_weighted} (described below), are not shown here. That's because
they have the same configurations of the variables shown above, differing
only by shift (\strong{evening shift} (\verb{_e}) and \strong{night shift} (\verb{_n})).}

\item{sjl_weighted}{
Absolute social jetlag across all shifts.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}

#'   \item{sjl_sc_weighted}{
Jankowski's sleep-corrected social jetlag across all shifts.
\cr \cr
Type: Computed.
\cr \cr
R class: \code{\link[lubridate:duration]{Duration}}.
}
}
}
\source{
Created by Daniel Vartanian (package author).
}
\usage{
shift_mctq
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#maturing}{\figure{lifecycle-maturing.svg}{options: alt='[Maturing]'}}}{\strong{[Maturing]}}

A fictional dataset, for \strong{testing and learning purposes}, composed of
basic/measurable and computed variables of the Munich ChronoType
Questionnaire (MCTQ) shift version.

This data was created following the guidelines in Juda, Vetter, & Roenneberg
(2013), in addition to the guidelines found in Roenneberg, Wirz-Justice, &
Merrow (2003), Roenneberg, Allebrandt, Merrow, & Vetter (2012), Jankowski
(2017), and The Worldwide Experimental Platform (n.d.). See the References
and Details sections to learn more.
}
\details{
\code{shift_mctq} is a tidied, validated, and transformed version of
\code{raw_data("shift_mctq.csv")}.
\subsection{Guidelines}{

To learn more about the Munich ChronoType Questionnaire (MCTQ),
see Roenneberg, Wirz-Justice, & Merrow (2003), Roenneberg, Allebrandt,
Merrow, & Vetter (2012), Roenneberg et al. (2015), and Roenneberg, Pilz,
Zerbini, & Winnebeck (2019).

To know about different MCTQ versions, see Juda, Vetter, & Roenneberg
(2013) and Ghotbi et al. (2020).

To learn about the sleep-corrected social jetlag, see Jankowski (2017).

If you're curious about the variable computations and want to have access to
the full questionnaire, see The Worldwide Experimental Platform (n.d.).
}

\subsection{Data building and data wrangling}{

This dataset was created by randomized sampling (see
\code{\link[=random_mctq]{random_mctq()}}) and by manual insertions of special
cases. Its purpose is to demonstrate common cases and data issues that
researchers may find in their MCTQ data, in addition to be a suggested data
structure for MCTQ data.

You can see the \code{shift_mctq} build and data wrangling processes
\href{https://github.com/ropensci/mctq/blob/main/data-raw/shift_mctq.R}{here}.
}

\subsection{Variable naming}{

The naming of the variables took into account the naming scheme used in MCTQ
publications, in addition to the guidelines of the \href{https://style.tidyverse.org/}{tidyverse style guide}.
}

\subsection{Variable classes}{

The \code{mctq} package works with a set of object classes specially created to
hold time values. These classes can be found in the \link[hms:hms-package]{hms}
and \link[lubridate:lubridate-package]{lubridate} package.
}

\subsection{\code{Duration} objects}{

If you prefer to view \code{\link[lubridate:duration]{Duration}} objects as
\code{\link[hms:hms]{hms}} objects, run
\code{\link[=pretty_mctq]{pretty_mctq(shift_mctq)}}.
}
}
\references{
Ghotbi, N., Pilz, L. K., Winnebeck, E. C., Vetter, C., Zerbini, G., Lenssen,
D., Frighetto, G., Salamanca, M., Costa, R., Montagnese, S., & Roenneberg, T.
(2020). The \eqn{\mu}MCTQ: an ultra-short version of the Munich ChronoType
Questionnaire. \emph{Journal of Biological Rhythms}, \emph{35}(1), 98-110.
\doi{10.1177/0748730419886986}

Jankowski K. S. (2017). Social jet lag: sleep-corrected formula.
\emph{Chronobiology International}, \emph{34}(4), 531-535.
\doi{10.1080/07420528.2017.1299162}

Juda, M., Vetter, C., & Roenneberg, T. (2013). The Munich ChronoType
Questionnaire for shift-workers (MCTQ\eqn{^{Shift}}{ Shift}). \emph{Journal of
Biological Rhythms}, \emph{28}(2), 130-140. \doi{10.1177/0748730412475041}

Roenneberg T., Allebrandt K. V., Merrow M., & Vetter C. (2012). Social jetlag
and obesity. \emph{Current Biology}, \emph{22}(10), 939-43.
\doi{10.1016/j.cub.2012.03.038}

Roenneberg, T., Keller, L. K., Fischer, D., Matera, J. L., Vetter, C., &
Winnebeck, E. C. (2015). Human activity and rest in situ. In A. Sehgal (Ed.),
\emph{Methods in Enzymology} (Vol. 552, pp. 257-283). Academic Press.
\doi{10.1016/bs.mie.2014.11.028}

Roenneberg, T., Pilz, L. K., Zerbini, G., & Winnebeck, E. C. (2019).
Chronotype and social jetlag: a (self-) critical review. \emph{Biology}, \emph{8}(3),
54. \doi{10.3390/biology8030054}

Roenneberg, T., Wirz-Justice, A., & Merrow, M. (2003). Life between clocks:
daily temporal patterns of human chronotypes. \emph{Journal of Biological
Rhythms}, \emph{18}(1), 80-90. \doi{10.1177/0748730402239679}

The Worldwide Experimental Platform (n.d.). MCTQ.
\url{https://www.thewep.org/documentations/mctq/}
}
\seealso{
Other datasets: 
\code{\link{micro_mctq}},
\code{\link{std_mctq}}
}
\concept{datasets}
\keyword{datasets}
