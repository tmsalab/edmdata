#' Elementary Probability Theory Assessment Item Responses
#'
#' @rdname items-probability
#' @details
#' Questions wording and answers are from the `pks` package documentation.
#'
#' Items with their desired responses bolded:
#'
#' - `b101`:  A box contains 30 marbles in the following colors:
#'   8 red, 10 black, 12 yellow.  What is the probability that a randomly
#'   drawn marble is yellow?  **(0.40)**
#' - `b102`:  A bag contains 5-cent, 10-cent, and 20-cent coins.
#'   The probability of drawing a 5-cent coin is 0.35, that of drawing a
#'   10-cent coin is 0.25, and that of drawing a 20-cent coin is 0.40.  What
#'   is the probability that the coin randomly drawn is not a 5-cent
#'   coin?  **(0.65)**
#' - `b103`:  A bag contains 5-cent, 10-cent, and 20-cent coins.
#'   The probability of drawing a 5-cent coin is 0.20, that of drawing a
#'   10-cent coin is 0.45, and that of drawing a 20-cent coin is 0.35.  What
#'   is the probability that the coin randomly drawn is a 5-cent coin or
#'   a 20-cent coin?  **(0.55)**
#' - `b104`:  In a school, 40\% of the pupils are boys and 80\% of
#'   the pupils are right-handed.  Suppose that gender and handedness are
#'   independent.  What is the probability of randomly selecting a
#'   right-handed boy?  **(0.32)**
#' - `b105`:  Given a standard deck containing 32 different cards,
#'   what is the probability of not drawing a heart?  **(0.75)**
#' - `b106`:  A box contains 20 marbles in the following colors:
#'   4 white, 14 green, 2 red.  What is the probability that a randomly
#'   drawn marble is not white?  **(0.80)**
#' - `b107`:  A box contains 10 marbles in the following colors:
#'   2 yellow, 5 blue, 3 red.  What is the probability that a randomly
#'   drawn marble is yellow or blue?  **(0.70)**
#' - `b108`:  What is the probability of obtaining an even number
#'   by throwing a dice?  **(0.50)**
#' - `b109`:  Given a standard deck containing 32 different cards,
#'   what is the probability of drawing a 4 in a black suit?
#'   **(Responses that round to 0.06 were considered correct.)**
#' - `b110`:  A box contains marbles that are red or yellow, small
#'   or large. The probability of drawing a red marble is 0.70 **(lab: 0.30)**,
#'   the probability of drawing a small marble is 0.40.  Suppose that the
#'   color of the marbles is independent of their size.  What is the
#'   probability of randomly drawing a small marble that is not red?  **(0.12, lab: 0.28)**
#' - `b111`:  In a garage there are 50 cars.  20 are black and 10 are
#'   diesel powered.  Suppose that the color of the cars is independent of
#'   the kind of fuel.  What is the probability that a randomly selected car
#'   is not black and it is diesel powered?  **(0.12)**
#' - `b112`:  A box contains 20 marbles.  10 marbles are red, 6 are
#'   yellow and 4 are black.  12 marbles are small and 8 are large.  Suppose
#'   that the color of the marbles is independent of their size.  What is the
#'   probability of randomly drawing a small marble that is yellow or
#'   red?  **(0.48)**
#'
#' @section Data Cleaning:
#' The `items_probability_part_one_full` data set includes \eqn{N = 504} observations
#' used in Chen et al. (2021). However, the observations contained
#' missing trial data as `NA`. Excluding the missing response values from part
#' one respondents yields \eqn{N = 431}. The data set with reduced items is given
#' in `items_probability_part_one_reduced`.
#'
#' @template papers-probability
"items_probability_part_one_full"

#' @rdname items-probability
"items_probability_part_one_reduced"

#' Elementary Probability Theory Assessment Expert-Derived Q Matrix
#'
#' @details
#' Each entry in the matrix is either `1`, if the item uses the trait, or `0`, if
#' the item does not use the trait. The traits identified by this `matrix` are:
#'
#' - `cp`: the probability of the complement of an event
#' - `id`: two independent events
#' - `pb`: probability of an event
#' - `un`: union of two disjoint events
#'
#' For a detailed overview of items, please see
#' [`items_probability_part_one_full`] or [`items_probability_part_one_reduced`].
#'
#' @section Identifiability:
#'
#' Note, the expert supplied Q-matrix is _not_ strictly identified.
#' Though, the expert matrix is generically identified.
#'
#' @template papers-probability
"qmatrix_probability_part_one"
