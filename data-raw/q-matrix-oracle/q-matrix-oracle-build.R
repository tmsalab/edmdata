### Oracle Q Matrix
## Used to check recovery of Q matrices

## Define q_c vectors ----
qc2 = c(1, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 3)
qc3 = c(1, 1, 1, 2, 2, 2, 4, 4, 4, 3, 3, 5, 5, 5, 6, 6, 6, 7, 7, 7)
qc4 = c(1, 1, 1, 2, 2, 2, 4, 4, 4, 8, 8, 8, 3, 5, 6, 9, 10, 12, 15, 15)
qc5 = c(1, 1, 2, 2, 4, 4, 8, 8, 16, 16, 3, 5, 9, 17, 6, 10, 18, 12, 20,
        24, 7, 11, 19, 13, 21, 25, 14, 22, 26, 28)

## Generate Q matrices based on pre-defined q_c vector ----
generate_oracle_q = function(q_c, J, K) {
  Qt = matrix(0, J, K)
  for (j in 1:J) {
    Qt[j, ] = t(ecdmcore::attribute_inv_bijection(K, q_c[j]))
  }
  Qt
}

qmatrix_oracle_k2_j12 = generate_oracle_q(qc2, 12, 2)
qmatrix_oracle_k3_j20 = generate_oracle_q(qc3, 20, 3)
qmatrix_oracle_k4_j20 = generate_oracle_q(qc4, 20, 4)
qmatrix_oracle_k5_j30 = generate_oracle_q(qc5, 30, 4)

## Validate generated Q matrices are identifiable.
stopifnot(all(ecdmcore::check_identifiability(qmatrix_oracle_k3_j20),
              ecdmcore::check_identifiability(qmatrix_oracle_k4_j20),
              ecdmcore::check_identifiability(qmatrix_oracle_k5_j30)))

## Export data ----
usethis::use_data(qmatrix_oracle_k2_j12, overwrite = TRUE)
usethis::use_data(qmatrix_oracle_k3_j20, overwrite = TRUE)
usethis::use_data(qmatrix_oracle_k4_j20, overwrite = TRUE)
usethis::use_data(qmatrix_oracle_k5_j30, overwrite = TRUE)
