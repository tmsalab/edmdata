#' Programme for International Student Assessment (PISA) 2012 US Math Assessment
#'
#'
#' @details
#' PISA assessment booklets have a spiral pattern. As a result, we've opted to
#' re-order the data by booklet ID
#'
#' @section Answer coding:
#' The subjects answered a set of assessment items seeking to determine
#' their knowledge of mathematics. The original PISA 2012 data set included
#' variables that had problems with the following labels:
#'
#' - One level:
#'   - "N/A"
#' - Four Levels:
#'   - "Score 0"
#'   - "Score 1"
#'   - "Score 7: N/A"
#'   - "Score 8: Not Attempted"
#' - Five Levels:
#'   - "Score 0"
#'   - "Score 1"
#'   - "Score 2"
#'   - "Score 7: N/A"
#'   - "Score 8: Not Attempted"
#'
#' Note, this data set includes items with four levels only. Further,
#' items are coded with `Score 0` as `0`, `Score 1` as `1`,
#' `Score 7: N/A` as `NA`, and `Score 8: Not Attempted` as `0`.
#'
#'
#' @template var-docs-pisa12-us-math
#'
#' @template papers-pisa12-us-math
"items_pisa12_us_math"
