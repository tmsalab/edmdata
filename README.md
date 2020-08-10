
<!-- README.md is generated from README.Rmd. Please edit that file -->

# edmdata

<!-- badges: start -->

[![R build
status](https://github.com/tmsalab/edmdata/workflows/R-CMD-check/badge.svg)](https://github.com/tmsalab/edmdata/actions)
[![Package-License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat)](https://opensource.org/licenses/MIT)
<!-- badges: end -->

The goal of `edmdata` is to provide a set of an example assessment data
sets for psychometric modeling.

## Installation

You can install `edmdata` from github with:

``` r
# install.packages("devtools")
devtools::install_github("tmsalab/edmdata")
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
      - **TMSA Papers:** Chen et al. (2020), Culpepper (2019b),
        Culpepper & Chen (2019), Chen et al. (2018)
  - Revised PSVT:R (Culpepper & Balamuta, 2017; Yoon, 2011).
      - `items_revised_psvtr`: N = 516 subject responses to J = 30
        items.
      - **TMSA Papers:** Culpepper & Balamuta (2017), Culpepper (2015)
  - Subset of Early Childhood Longitudinal Study, Kindergarten Class of
    1998-1999’s Approaches to Learning (NCES, 2010).
      - `items_ordered_eclsk_atl`: N = 13354 subject responses to J = 12
        items.
      - **TMSA Papers:** Culpepper (2019a)
  - Last Series of the Standard Progressive Matrices (SPM-LS)
    (Myszkowski & Storme, 2018; Raven, 1941; Robitzsch, 2020).
      - `items_spm_ls`: N = 499 subject responses to J = 12 items.
  - Experimental Matrix Reasoning Test (OpenPsychometrics, 2012a).
      - `items_matrix_reasoning`: N = 400 subject responses to J = 25
        items.
      - **TMSA Papers:** Chen et al. (2020)
  - Taylor Manifest Anxiety Scale (OpenPsychometrics, 2012b; Taylor,
    1953).
      - `items_taylor_manifest_anxiety_scale`: N = 4468 subject
        responses to J = 50 items.
  - Narcissistic Personality Inventory (OpenPsychometrics, 2013; Raskin
    & Terry, 1988).
      - `items_narcissistic_personality_inventory`: N = 11243 subject
        responses to J = 40 items.
  - Pre-generated identified Q matrices.
      - `qmatrix_oracle_k3_j20`: J = 20 items and K = 3 traits.
      - `qmatrix_oracle_k4_j20`: J = 20 items and K = 4 traits.
      - `qmatrix_oracle_k5_j30`: J = 30 items and K = 5 traits.

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
# Load the `edmdata` package
library("edmdata")

# See the first 10 observations of the `items_revised_psvtr` dataset
head(items_revised_psvtr)

# View the help documentation for `items_revised_psvtr`
?items_revised_psvtr
```

The second approach is to use the `data()` command to load data on the
fly without loading the package. After using `data()`, the data set will
be available to use under the given name.

``` r
# Loading `items_revised_psvtr` without a `library(edmdata)` call
data("items_revised_psvtr", package = "edmdata")

# See the first 10 observations of the `items_revised_psvtr` dataset
head(items_revised_psvtr)

# View the help documentation for `items_revised_psvtr`
?items_revised_psvtr
```

## Build Scripts

Want to see how each data set was imported? Check out the
[`data-raw`](https://github.com/tmsalab/edmdata/tree/master/data-raw)
folder\!

## Authors

James Joseph Balamuta, Steven Andrew Culpepper, Jeffrey Douglas

## Citing the `edmdata` package

To ensure future development of the package, please cite `edmdata`
package if used during an analysis or simulation study. Citation
information for the package may be acquired by using in *R*:

``` r
citation("edmdata")
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

<div id="ref-Culpepper:2019:EODM">

Culpepper, S. A. (2019a). An exploratory diagnostic model for ordinal
responses with binary attributes: Identifiability and estimation.
*Psychometrika*, *84*(4), 921–940.
<https://doi.org/10.1007/s11336-019-09683-4>

</div>

<div id="ref-Culpepper:2019:EGDM">

Culpepper, S. A. (2019b). Estimating the cognitive diagnosis \(Q\)
matrix with expert knowledge: Application to the fraction-subtraction
dataset. *Psychometrika*, *84*(2), 333–357.
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

<div id="ref-Myszkowski:2018:IRTSPMLS">

Myszkowski, N., & Storme, M. (2018). A snapshot of g? Binary and
polytomous item-response theory investigations of the last series of the
standard progressive matrices (spm-ls). *Intelligence*, *68*, 109–116.
<https://doi.org/10.1016/j.intell.2018.03.010>

</div>

<div id="ref-ECLSK:2010:ATLData">

NCES. (2010). *Early childhood longitudinal study, kindergarten class of
1998-99 (ecls-k) kindergarten through fifth grade approaches to learning
and self-description questionnaire (sdq) items and public-use data
files*. <https://nces.ed.gov/pubsearch/pubsinfo.asp?pubid=2010070>

</div>

<div id="ref-OpenPsychometrics:2012:IQ1">

OpenPsychometrics. (2012a). *Experimental matrix reasoning iq test*.
<https://openpsychometrics.org/_rawdata/IQ1.zip>

</div>

<div id="ref-OpenPsychometrics:2012:TaylorAnxietyScale">

OpenPsychometrics. (2012b). *Taylor manifest anxiety scale*.
<https://openpsychometrics.org/_rawdata/TMA.zip>

</div>

<div id="ref-OpenPsychometrics:2013:NPI">

OpenPsychometrics. (2013). *Narcissistic personality inventory*.
<https://openpsychometrics.org/_rawdata/NPI.zip>

</div>

<div id="ref-Raskin:1988:NPI">

Raskin, R., & Terry, H. (1988). A principal-components analysis of the
narcissistic personality inventory and further evidence of its construct
validity. *Journal of Personality and Social Psychology*, *54*(5), 890.
<https://doi.org/10.1037/0022-3514.54.5.890>

</div>

<div id="ref-Raven:1941:SPM">

Raven, J. C. (1941). Standardization of progressive matrices, 1938.
*British Journal of Medical Psychology*, *19*(1), 137–150.
<https://doi.org/10.1111/j.2044-8341.1941.tb00316.x>

</div>

<div id="ref-Robitzsch:2020:IRTRCLMSPMLS">

Robitzsch, A. (2020). Regularized latent class analysis for polytomous
item responses: An application to spm-ls data. *Preprint*.
<https://doi.org/10.20944/preprints202007.0269.v1>

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
