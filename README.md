
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ecdmdata

<!-- badges: start -->

[![R build
status](https://github.com/tmsalab/ecdmdata/workflows/R-CMD-check/badge.svg)](https://github.com/tmsalab/ecdmdata/actions)
[![Package-License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat)](https://opensource.org/licenses/MIT)
<!-- badges: end -->

The goal of `ecdmdata` is to provide a set of an example assessment data
sets for psychometric modeling.

## Installation

You can install `ecdmdata` from github with:

``` r
# install.packages("devtools")
devtools::install_github("tmsalab/ecdmdata")
```

## Data Sets Included

  - Examination for the Certificate of Proficiency in English (ECPE)
    (Templin and Hoffman 2013).
      - `items_ecpe`: N = 2922 subject responses to J = 28 items.
      - `qmatrix_ecpe`: J = 28 items and K = 3 traits.
  - Fraction Addition and Subtraction (Tatsuoka 1984).
      - `items_fractions`: N = 536 subject responses to J = 20 items.
      - `qmatrix_fractions`: J = 536 items and K = 20 traits.
  - Revised PSVT:R (Culpepper and Balamuta 2017).
      - `items_revised_psvtr`: N = 516 subject responses to J = 30
        items.
  - Taylor Manifest Anxiety Scale (OpenPsychometrics, n.d.b).
      - `items_taylor_manifest_anxiety_scale`: N = 4468 subject
        responses to J = 50 items.
  - Narcissistic Personality Inventory (Raskin and Terry 1988;
    OpenPsychometrics, n.d.a).
      - `items_narcissistic_personality_inventory`: N = 11243 subject
        responses to J = 40 items.

## Using data in the package

There are two ways to access the data contained within this package.

The first is to load the package itself and type the name of a data set.
This approach takes advantage of *R*’s lazy loading mechansim, which
avoids loading the data until it is used in *R* session. For details on
how lazy loading works, please see [Section 1.17: Lazy
Loading](https://cran.r-project.org/doc/manuals/r-release/R-ints.html#Lazy-loading)
of the [R
Internals](https://cran.r-project.org/doc/manuals/r-release/R-ints.html)
manual.

``` r
# Load the `ecdmdata` package
library("ecdmdata")

# See the first 10 observations of the `items_revised_psvtr` dataset
head(items_revised_psvtr)

# View the help documentation for `items_revised_psvtr`
?items_revised_psvtr
```

The second approach is to use the `data()` command to load data on the
fly without and type the name of a data set.

``` r
# Loading `items_revised_psvtr` without a `library(ucidata)` call
data("items_revised_psvtr", package = "ucidata")

# See the first 10 observations of the `items_revised_psvtr` dataset
head(items_revised_psvtr)

# View the help documentation for `items_revised_psvtr`
?items_revised_psvtr
```

## Build Scripts

Want to see how each data set was imported? Check out the
[`data-raw`](https://github.com/tmsalab/ecdmdata/tree/master/data-raw)
folder\!

## Authors

James Joseph Balamuta and Steven Andrew Culpepper

## Citing the `ecdmdata` package

To ensure future development of the package, please cite `ecdmdata`
package if used during an analysis or simulation study. Citation
information for the package may be acquired by using in *R*:

``` r
citation("ecdmdata")
```

## License

MIT

## References

<div id="refs" class="references">

<div id="ref-Culpepper:2017:ChoiceIRT">

Culpepper, Steven Andrew, and James Joseph Balamuta. 2017. “A
Hierarchical Model for Accuracy and Choice on Standardized Tests.”
*Psychometrika* 82 (3): 820–45.

</div>

<div id="ref-OpenPsychometrics:2013:NPI">

OpenPsychometrics. n.d.a. *Narcissistic Personality Inventory*.
<http://openpsychometrics.org/_rawdata/NPI.zip>.

</div>

<div id="ref-OpenPsychometrics:2012:TaylorAnxietyScale">

———. n.d.b. *Taylor Manifest Anxiety Scale*.
<http://openpsychometrics.org/_rawdata/TMA.zip>.

</div>

<div id="ref-Raskin:1988:NPI">

Raskin, Robert, and Howard Terry. 1988. “A Principal-Components Analysis
of the Narcissistic Personality Inventory and Further Evidence of Its
Construct Validity.” *Journal of Personality and Social Psychology* 54
(5): 890.

</div>

<div id="ref-Tatsuoka:1984:FractionSubtraction">

Tatsuoka, Kikumi K. 1984. “Analysis of Errors in Fraction Addition and
Subtraction Problems. Final Report.”

</div>

<div id="ref-Templin:2013:DCMECPE">

Templin, Jonathan, and Lesa Hoffman. 2013. “Obtaining Diagnostic
Classification Model Estimates Using Mplus.” *Educational Measurement:
Issues and Practice* 32 (2): 37–50.
<https://doi.org/10.1111/emip.12010>.

</div>

</div>
