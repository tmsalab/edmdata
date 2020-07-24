
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
    (Templin & Bradshaw, 2014; Templin & Hoffman, 2013).
      - `items_ecpe`: N = 2922 subject responses to J = 28 items.
      - `qmatrix_ecpe`: J = 28 items and K = 3 traits.
      - **TMSA Papers:** Culpepper & Chen (2019)
  - Fraction Addition and Subtraction (Tatsuoka, 2002, 1984).
      - `items_fractions`: N = 536 subject responses to J = 20 items.
      - `qmatrix_fractions`: J = 536 items and K = 20 traits.
      - **TMSA Papers:** Chen et al. (2020), Culpepper (2019), Culpepper
        & Chen (2019), Chen et al. (2018)
  - Revised PSVT:R (Culpepper & Balamuta, 2017; Yoon, 2011).
      - `items_revised_psvtr`: N = 516 subject responses to J = 30
        items.
      - **TMSA Papers:** Culpepper & Balamuta (2017), Culpepper (2015)
  - Taylor Manifest Anxiety Scale (OpenPsychometrics, 2012; Taylor,
    1953).
      - `items_taylor_manifest_anxiety_scale`: N = 4468 subject
        responses to J = 50 items.
  - Narcissistic Personality Inventory (OpenPsychometrics, 2013; Raskin
    & Terry, 1988).
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

James Joseph Balamuta, Steven Andrew Culpepper, Jeffrey Douglas

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

<div id="ref-Chen:2018:EDINA">

Chen, Y., Culpepper, S. A., Chen, Y., & Douglas, J. (2018). Bayesian
estimation of the dina q matrix. *Psychometrika*, *83*(1), 89–108.
<https://doi.org/10.1007/s11336-017-9579-4>

</div>

<div id="ref-Chen:2020:SLCMDC">

Chen, Y., Culpepper, S. A., & Liang, F. (2020). A sparse latent class
model for cognitive diagnosis. *Psychometrika*, 1–33.
<https://doi.org/10.1007/s11336-019-09693-2>

</div>

<div id="ref-Culpepper:2015:BayesianDINA">

Culpepper, S. A. (2015). Bayesian estimation of the dina model with
gibbs sampling. *Journal of Educational and Behavioral Statistics*,
*40*(5), 454–476. <https://doi.org/10.3102/1076998615595403>

</div>

<div id="ref-Culpepper:2019:EGDM">

Culpepper, S. A. (2019). Estimating the cognitive diagnosis \(Q\) matrix
with expert knowledge: Application to the fraction-subtraction dataset.
*Psychometrika*, *84*(2), 333–357.
<https://doi.org/10.1007/s11336-018-9643-8>

</div>

<div id="ref-Culpepper:2017:ChoiceIRT">

Culpepper, S. A., & Balamuta, J. J. (2017). A Hierarchical Model for
Accuracy and Choice on Standardized Tests. *Psychometrika*, *82*(3),
820–845. <https://doi.org/10.1007/s11336-015-9484-7>

</div>

<div id="ref-Culpepper:2019:ErRUM">

Culpepper, S. A., & Chen, Y. (2019). Development and application of an
exploratory reduced reparameterized unified model. *Journal of
Educational and Behavioral Statistics*, *44*(1), 3–24.
<https://doi.org/10.3102/1076998618791306>

</div>

<div id="ref-OpenPsychometrics:2012:TaylorAnxietyScale">

OpenPsychometrics. (2012). *Taylor manifest anxiety scale*.
<http://openpsychometrics.org/_rawdata/TMA.zip>

</div>

<div id="ref-OpenPsychometrics:2013:NPI">

OpenPsychometrics. (2013). *Narcissistic personality inventory*.
<http://openpsychometrics.org/_rawdata/NPI.zip>

</div>

<div id="ref-Raskin:1988:NPI">

Raskin, R., & Terry, H. (1988). A principal-components analysis of the
narcissistic personality inventory and further evidence of its construct
validity. *Journal of Personality and Social Psychology*, *54*(5), 890.
<https://doi.org/10.1037/0022-3514.54.5.890>

</div>

<div id="ref-Tatsuoka:2002:FractionSubtractionRelease">

Tatsuoka, C. (2002). Data analytic methods for latent partially ordered
classification models. *Journal of the Royal Statistical Society: Series
C (Applied Statistics)*, *51*(3), 337–350.
<https://doi.org/10.1111/1467-9876.00272>

</div>

<div id="ref-Tatsuoka:1984:FractionSubtraction">

Tatsuoka, K. K. (1984). *Analysis of errors in fraction addition and
subtraction problems. Final report.* <https://eric.ed.gov/?id=ED257665>

</div>

<div id="ref-Taylor:1953:TMI">

Taylor, J. A. (1953). A personality scale of manifest anxiety. *The
Journal of Abnormal and Social Psychology*, *48*(2), 285.
<https://doi.org/10.1037/h0056264>

</div>

<div id="ref-Templin:2014:HierarchicalDCM">

Templin, J., & Bradshaw, L. (2014). Hierarchical diagnostic
classification models: A family of models for estimating and testing
attribute hierarchies. *Psychometrika*, *79*(2), 317–339.
<https://doi.org/10.1007/s11336-013-9362-0>

</div>

<div id="ref-Templin:2013:DCMECPE">

Templin, J., & Hoffman, L. (2013). Obtaining diagnostic classification
model estimates using mplus. *Educational Measurement: Issues and
Practice*, *32*(2), 37–50. <https://doi.org/10.1111/emip.12010>

</div>

<div id="ref-Yoon:2011:RevisedPSVTR">

Yoon, S. Y. (2011). *Psychometric properties of the revised purdue
spatial visualization tests: Visualization of rotations (the revised
psvt: R)*. Purdue University.
<https://docs.lib.purdue.edu/dissertations/AAI3480934/>

</div>

</div>
