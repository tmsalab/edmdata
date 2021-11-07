#' Human Connectome Project's Penn Progressive Matrices Fluid Intelligence Assessment
#'
#' Trial data from Form A of an abbreviated version of the
#' Raven’s Progressive Matrices developed by Gur and colleagues (Bilker et al. 2012).
#' Participants are presented with patterns made up of 2x2, 3x3 or 1x5 arrangements of squares, with one of the squares missing.
#' The participant must pick one of five response choices that best fits the missing square on the pattern.
#' The task has 24 items and 3 bonus items, arranged in order of increasing difficulty.
#' However, the task discontinues if the participant makes 5 incorrect responses in a row.
#'
#' @rdname items-hcp-penn
#' @details
#'
#' The subjects answered the following assessment items:
#'
#' - `item01`
#' - `item02`
#' - `item03`
#' - `item04`
#' - `item05`
#' - `item06`
#' - `item07`
#' - `item08`
#' - `item09`
#' - `item11`
#' - `item12`
#' - `item13`
#' - `item14`
#' - `item15`
#' - `item16`
#' - `item17`
#' - `item18`
#' - `item19`
#' - `item20`
#' - `item21`
#' - `item22`
#' - `item23`
#' - `item24`
#'
#' @section Data Cleaning:
#' The `items_hcp_penn` data set includes \eqn{N = 1,201} observations.
#' However, the observation count was calculated after removing participants
#' that did not respond to any questions (Subject ID's:
#' 117728, 137431, 145531, 236130, and 614439). From there, we generated the
#' `items_hcp_penn_missing` data set that retains a missing data structure
#' after the participant makes 5 incorrect responses in a row.
#'
#' @template papers-hcp-penn
"items_hcp_penn_matrix"

#' @rdname items-hcp-penn
"items_hcp_penn_matrix_missing"
