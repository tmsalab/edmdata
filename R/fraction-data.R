
#' Fraction Assessment Item Responses
#' 
#' @format 
#' A `matrix` consisting of 536 rows and 20 columns. Thus, there are 
#' \eqn{N = 536} subject responses to \eqn{J = 20} items.
#' 
#' The subjects answered the following assessment items:
#' 
#' - `item01`: \eqn{\frac{5}{3}-\frac{3}{4}}{5/3 - 3/4}
#' - `item02`: \eqn{\frac{3}{4}-\frac{3}{8}}{3/4 - 3/8}
#' - `item03`: \eqn{\frac{5}{6}-\frac{1}{9}}{5/6 - 1/9}
#' - `item04`: \eqn{3\frac{1}{2}-2\frac{3}{2}}{3*1/2 - 2*3/2}
#' - `item05`: \eqn{4\frac{3}{5}-3\frac{4}{10}}{4*3/5 - 3*4/10}
#' - `item06`: \eqn{\frac{6}{7}-\frac{4}{7}}{6/7 - 4/7}
#' - `item07`: \eqn{3-2\frac{1}{5}}{3 - 2*1/5}
#' - `item08`: \eqn{\frac{2}{3}-\frac{2}{3}}{2/3 - 2/3}
#' - `item09`: \eqn{3\frac{7}{8}-2}{3*7/8 - 2}
#' - `item10`: \eqn{4\frac{4}{12}-2\frac{7}{12}}{4*4/12 - 2*7/12}
#' - `item11`: \eqn{4\frac{1}{3}-2\frac{4}{3}}{4*1/3 - 2*4/3}
#' - `item12`: \eqn{\frac{11}{8}-\frac{1}{8}}{11/8 - 1/8}
#' - `item13`: \eqn{3\frac{3}{8}-2\frac{5}{6}}{3*3/8 - 2*5/6}
#' - `item14`: \eqn{3\frac{4}{5}-3\frac{2}{5}}{3*4/5 - 3*2/5}
#' - `item15`: \eqn{2-\frac{1}{3}}{2 - 1/3}
#' - `item16`: \eqn{4\frac{5}{7}-1\frac{4}{7}}{4*5/7 - 1*4/7}
#' - `item17`: \eqn{7\frac{3}{5}-2\frac{4}{5}}{7*3/5 - 2*4/5}
#' - `item18`: \eqn{4\frac{1}{10}-2\frac{8}{10}}{4*1/10 - 2*8/10}
#' - `item19`: \eqn{4-1\frac{4}{3}}{4 - 1*4/3}
#' - `item20`: \eqn{4\frac{1}{3}-1\frac{5}{3}}{4*1/3 - 1*5/3}
#' 
#' @template papers-fractions
"items_fractions"

#' Expert Derived Q Matrix for Fractions Data
#' 
#' @format 
#' A `matrix` with dimensions J = 20 (items/rows) and K = 8 (skills/columns).
#' Each entry in the matrix is either 1, if the item uses the skill, or 0, if
#' the item does not use the skill. The skills identified by this `matrix` are:
#' 
#' - `skill1`: Convert a whole number to a fraction,
#' - `skill2`: Separate a whole number from fraction,
#' - `skill3`: Simplify before subtraction,
#' - `skill4`: Find a common denominator,
#' - `skill5`: Borrow from the whole number part,
#' - `skill6`: Column borrow to subtract the second numerator from the first,
#' - `skill7`: Subtract numerators,
#' - `skill8`: Reduce answers to simplest form.
#' 
#' The subjects answered the following assessment items:
#' 
#' - `item01`: \eqn{\frac{5}{3}-\frac{3}{4}}{5/3 - 3/4}
#' - `item02`: \eqn{\frac{3}{4}-\frac{3}{8}}{3/4 - 3/8}
#' - `item03`: \eqn{\frac{5}{6}-\frac{1}{9}}{5/6 - 1/9}
#' - `item04`: \eqn{3\frac{1}{2}-2\frac{3}{2}}{3*1/2 - 2*3/2}
#' - `item05`: \eqn{4\frac{3}{5}-3\frac{4}{10}}{4*3/5 - 3*4/10}
#' - `item06`: \eqn{\frac{6}{7}-\frac{4}{7}}{6/7 - 4/7}
#' - `item07`: \eqn{3-2\frac{1}{5}}{3 - 2*1/5}
#' - `item08`: \eqn{\frac{2}{3}-\frac{2}{3}}{2/3 - 2/3}
#' - `item09`: \eqn{3\frac{7}{8}-2}{3*7/8 - 2}
#' - `item10`: \eqn{4\frac{4}{12}-2\frac{7}{12}}{4*4/12 - 2*7/12}
#' - `item11`: \eqn{4\frac{1}{3}-2\frac{4}{3}}{4*1/3 - 2*4/3}
#' - `item12`: \eqn{\frac{11}{8}-\frac{1}{8}}{11/8 - 1/8}
#' - `item13`: \eqn{3\frac{3}{8}-2\frac{5}{6}}{3*3/8 - 2*5/6}
#' - `item14`: \eqn{3\frac{4}{5}-3\frac{2}{5}}{3*4/5 - 3*2/5}
#' - `item15`: \eqn{2-\frac{1}{3}}{2 - 1/3}
#' - `item16`: \eqn{4\frac{5}{7}-1\frac{4}{7}}{4*5/7 - 1*4/7}
#' - `item17`: \eqn{7\frac{3}{5}-2\frac{4}{5}}{7*3/5 - 2*4/5}
#' - `item18`: \eqn{4\frac{1}{10}-2\frac{8}{10}}{4*1/10 - 2*8/10}
#' - `item19`: \eqn{4-1\frac{4}{3}}{4 - 1*4/3}
#' - `item20`: \eqn{4\frac{1}{3}-1\frac{5}{3}}{4*1/3 - 1*5/3}
#' 
#' @template papers-fractions
"qmatrix_fractions"