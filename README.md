
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ecdmdata

<!-- badges: start -->

[![R build
status](https://github.com/tmsalab/ecdmdata/workflows/R-CMD-check/badge.svg)](https://github.com/tmsalab/ecdmdata/actions)
[![Package-License](http://img.shields.io/badge/license-GPL%20\(%3E=2\)-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-2.0.html)
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
    (Jonathan Templin and Lesa Hoffman 2013).
      - `items_ecpe`, N = 2922 subject responses to J = 28 items.
      - `qmatrix_ecpe`, J = 28 items and K = 3 traits.
  - Fraction Addition and Subtraction (Kikumi K Tatsuoka 1984).
      - `items_fractions`: N = 536 subject responses to J = 20 items.
      - `qmatrix_fractions`: J = 20 items and K = 8 traits.
  - Revised PSVT:R (Steven Andrew Culpepper and James Joseph Balamuta
    2017).
      - `items_spatial`: N = 516 subject responses to J = 30 items.

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

<div id="ref-Templin:2013:DCMECPE">

Jonathan Templin and Lesa Hoffman. 2013. “Obtaining Diagnostic
Classification Model Estimates Using Mplus.” *Educational Measurement:
Issues and Practice* 32 (2): 37–50.
<https://doi.org/10.1111/emip.12010>.

</div>

<div id="ref-Tatsuoka:1984:FractionSubtraction">

Kikumi K Tatsuoka. 1984. “Analysis of Errors in Fraction Addition and
Subtraction Problems. Final Report.”

</div>

<div id="ref-Culpepper:2017:ChoiceIRT">

Steven Andrew Culpepper and James Joseph Balamuta. 2017. “A Hierarchical
Model for Accuracy and Choice on Standardized Tests.” *Psychometrika* 82
(3): 820–45.

</div>

</div>
