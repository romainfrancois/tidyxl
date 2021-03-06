% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is_date_format.R
\name{is_date_format}
\alias{is_date_format}
\title{Test that Excel number formats are date formats}
\usage{
is_date_format(x)
}
\arguments{
\item{x}{character vector of number format strings}
}
\description{
\code{is_date_format()} tests whether an Excel number format string
would a resolve to a date in Excel.  For example, the number format string
\code{"yyyy-mm-dd"} would resolve to a date, whereas the string \code{"0.0\\\\\%"} would
not.

This is useful if a cell formula contains a number formatting string (e.g.
\code{TEXT(45678,"yyyy")}), and you need to know that the constant 45678 is a date
in order to recover it at full resolution (rather than parsing the character
output "2025" as a year).

It is used internally to convert the value of a cell to the correct data
type.
}
\examples{
is_date_format(c("yyyy-mm-dd", "0.0\%", "h:m:s", "£#,##0;[Red]-£#,##0"))
}
