#' Subset of Early Childhood Longitudinal Study, Kindergarten (ECLS-K)'s
#' Approaches to Learning Item Responses
#'
#' @template var-docs-eclsk-atl
#'
#' @section Data pre-processing:
#' The Early Childhood Longitudinal Study, Kindergarten (ECLS-K) has been
#' subset down both the number of observations and variables. In particular,
#' only observations without any missing values from a set of reduced
#' variables -- given above -- are included. If additional data is required,
#' please visit the data download page found in the reference section.
#'
#' @section Answer coding:
#' Parents and teachers each answered a set of survey items involving a
#' likert scale that ranged from "1 = never" to "4 = very often" regarding the
#' subject. Within the teacher responses, they also  had the option of marking
#' "-7 = no opportunity to observe" option, which was treated as a missing
#' observation. To align with _C++_, we perform a index shift backward of 1
#' and, thus, make the scale "0=never" to "3=very often".
#'
#' @template papers-eclsk-atl
"items_ordered_eclsk_atl"

