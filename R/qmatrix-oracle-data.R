#' @title Oracle Q Matrices
#'
#' @description
#' Pre-generated identified Q matrices used in simulation studies to verify
#' recovery.
#'
#' @format
#' A `matrix` with varying numbers of traits (`K`) and items (`J`).
#'
#' Specifically:
#'
#' - `qmatrix_oracle_k2_j12`: 12 items and 2 traits.
#' - `qmatrix_oracle_k3_j20`: 20 items and 3 traits.
#' - `qmatrix_oracle_k4_j20`: 20 items and 4 traits.
#' - `qmatrix_oracle_k5_j30`: 30 items and 5 traits.
#'
#' @details
#' Each entry in the matrix is either `1`, if the item uses the skill, or `0`, if
#' the item does not use the skill.
#'
#' @name qmatrix_oracle
#' @aliases qmatrix_oracle_k2_j12 qmatrix_oracle_k3_j20 qmatrix_oracle_k4_j20 qmatrix_oracle_k5_j30
#' @docType data
#' @keywords datasets
NULL
