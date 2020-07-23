#' Narcissistic Personality Inventory Item Responses
#'
#' @format
#' A `matrix` consisting of `r nrow(items_narcissistic_personality_inventory)` rows and
#' `r ncol(items_narcissistic_personality_inventory)` columns.
#'
#' Items alongside their desired response:
#' @template var-docs-narcissistic-personality-inventory
#' @section Data pre-processing:
#' We have applied list-wise deletion during pre-processing to remove any
#' observations with missing values from the data set.
#'
#' @section Answer coding:
#' The subjects answered a set of assessment items seeking to determine
#' the level of anxiety. Answers given in **bold** represent the desired
#' response. If a subject matched this response, they were given a 1 inside
#' of the item matrix, otherwise they received a zero.
#'
#' @template papers-narcissistic-personality-inventory
"items_narcissistic_personality_inventory"
