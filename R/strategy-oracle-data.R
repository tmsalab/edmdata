#' @title Strategy Oracle Sets
#'
#' @description
#' Pre-generated strategy matrices used in simulation studies to verify
#' recovery.
#'
#' @format
#' An `array` with varying numbers of items (`J`), traits (`K`), and strategies (`S`).
#'
#' Specifically:
#'
#' - `strategy_oracle_k3_j20_s2`: 20 items, 3 traits, and 2 strategies.
#' - `strategy_oracle_k3_j30_s2`: 30 items, 3 traits, and 2 strategies.
#' - `strategy_oracle_k3_j40_s2`: 40 items, 3 traits, and 2 strategies.
#' - `strategy_oracle_k3_j50_s2`: 50 items, 3 traits, and 2 strategies.
#' - `strategy_oracle_k4_j20_s2`: 20 items, 4 traits, and 2 strategies.
#' - `strategy_oracle_k4_j30_s2`: 30 items, 4 traits, and 2 strategies.
#' - `strategy_oracle_k4_j40_s2`: 40 items, 4 traits, and 2 strategies.
#' - `strategy_oracle_k4_j50_s2`: 50 items, 4 traits, and 2 strategies.
#'
#' @details
#' Each entry in a strategy is denoted by either `1`, if the item uses the skill
#' under strategy `s`, or `0`, if the item does not use the skill under strategy
#' `s`.
#'
#' **Note:** Each matrix in the strategy was generated independently
#' under the criterion for a strictly identifiable Q matrix.
#'
#' @name strategy_oracle
#' @aliases strategy_oracle_k3_j20_s2 strategy_oracle_k3_j30_s2 strategy_oracle_k3_j40_s2 strategy_oracle_k3_j50_s2 strategy_oracle_k4_j20_s2 strategy_oracle_k4_j30_s2 strategy_oracle_k4_j40_s2 strategy_oracle_k4_j50_s2
#' @docType data
#' @keywords datasets
NULL
