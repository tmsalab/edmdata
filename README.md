
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ecdmdata

<!-- badges: start -->

[![Build
Status](https://travis-ci.org/tmsalab/ecdmdata.svg)](https://travis-ci.org/tmsalab/ecdmdata)
[![Package-License](http://img.shields.io/badge/license-GPL%20\(%3E=2\)-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-2.0.html)
[![CRAN Version
Badge](http://www.r-pkg.org/badges/version/ecdmdata)](https://cran.r-project.org/package=ecdmdata)
[![CRAN
Status](https://cranchecks.info/badges/worst/ecdmdata)](https://cran.r-project.org/web/checks/check_results_ecdmdata.html)
[![RStudio CRAN Mirror’s Monthly
Downloads](http://cranlogs.r-pkg.org/badges/ecdmdata?color=brightgreen)](http://www.r-pkg.org/pkg/ecdmdata)
[![RStudio CRAN Mirror’s Total
Downloads](http://cranlogs.r-pkg.org/badges/grand-total/ecdmdata?color=brightgreen)](http://www.r-pkg.org/pkg/ecdmdata)
[![Coverage
status](https://codecov.io/gh/tmsalab/ecdmdata/branch/master/graph/badge.svg)](https://codecov.io/github/tmsalab/ecdmdata?branch=master)
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

  - Examination for the Certificate of Proficiency in English (ECPE),
    Templin, J. and Hoffman, L. (2013).
      - `items_ecpe`, N = 2922 subject responses to J = 28 items.
      - `qmatrix_ecpe`, J = 28 items and K = 3 traits.
  - Fraction Addition and Subtraction, Tatsuoka, K. K. (1984).
      - `items_fractions`: N = 536 subject responses to J = 20 items.
      - `qmatrix_fractions`: J = 20 items and K = 8 traits.
  - Revised PSVT:R, Culpepper and Balamuta (2017).
      - `items_spatial`: N = 516 subject responses to J = 30 items.
