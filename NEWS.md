# edmdata 1.2.0

## Data Sets

- `items_probability_part_one`
  - Elementary Probability Theory Assessment Item Responses based on data
    from the `pks` package.
- `qmatrix_probability_part_one` 
  - Elementary Probability Theory Assessment Expert-Derived Q Matrix based
    off of the mapping given in the `pks` package data example.
- Oracle Strategy Sets for use in multiple-strategies simulation studies.
  - `strategy_oracle_k3_j20_s2`: 20 items, 3 traits, and 2 strategies.
  - `strategy_oracle_k3_j30_s2`: 30 items, 3 traits, and 2 strategies.
  - `strategy_oracle_k3_j40_s2`: 40 items, 3 traits, and 2 strategies.
  - `strategy_oracle_k3_j50_s2`: 50 items, 3 traits, and 2 strategies.
  - `strategy_oracle_k4_j20_s2`: 20 items, 4 traits, and 2 strategies.
  - `strategy_oracle_k4_j30_s2`: 30 items, 4 traits, and 2 strategies.
  - `strategy_oracle_k4_j40_s2`: 40 items, 4 traits, and 2 strategies.
  - `strategy_oracle_k4_j50_s2`: 50 items, 4 traits, and 2 strategies.

## Bugfixes

- Fixed `ecpe` paper references.

## Deployment 

- Added a custom user dictionary containing author names to prevent the 
  R CMD check error of 'Possibly misspelled words in DESCRIPTION'. 

# edmdata 1.1.0

## Data Sets

- `qmatrix_oracle_k2_j12`
  - Oracle Q Matrices for J = 12 Items and K = 2 Traits.

## Bugfixes

- Fixed use of DOIs with URLs instead of `\doi{}`.
- Fixed an issue with K = 5 attribute in `qmatrix_oracle_k5_j30`

# edmdata 1.0.0

## Features

- Datasets used in different psychometric publications focused on 
  diagnostic modeling. 
- Accompanying documentation is available via `?dataset`.

## Data Sets

- `items_ecpe`
  - Examination for the Certificate of Proficiency in English (ECPE) Item Responses
- `qmatrix_ecpe`
  - Examination for the Certificate of Proficiency in English (ECPE) Expert-Derived Q matrix
- `items_fractions`
  - Fraction Subtraction and Addition Assessment Item Responses
- `qmatrix_fractions`
  - Fraction Subtraction and Addition Assessment Expert-Derived Q Matrix
- `items_revised_psvtr`
  - Revised PSVT:R Item Responses
- `items_ordered_eclsk_atl`
  - Subset of Early Childhood Longitudinal Study, Kindergarten (ECLS-K)'s Approaches to Learning Item Responses
- `items_matrix_reasoning`
  - Experimental Matrix Reasoning Test Item Responses
- `items_taylor_manifest_anxiety_scale`
  - Taylor Manifest Anxiety Scale Item Responses
- `items_narcissistic_personality_inventory`
  - Narcissistic Personality Inventory Item Responses
- `items_spm_ls`
  - Last Series of the Standard Progressive Matrices (SPM-LS) Item Responses
- `qmatrix_oracle_k3_j20`
  - Oracle Q Matrices for J = 20 Items and K = 3 Traits.
- `qmatrix_oracle_k4_j20`
  - Oracle Q Matrices for J = 20 Items and K = 4 Traits.
- `qmatrix_oracle_k5_j30`
  - Oracle Q Matrices for J = 30 Items and K = 5 Traits.
