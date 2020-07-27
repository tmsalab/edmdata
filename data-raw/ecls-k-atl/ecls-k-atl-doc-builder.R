## Template generation ----
template_location = file.path("man-roxygen", "var-docs-eclsk-atl.R")
data_raw_location = file.path("data-raw", "ecls-k-atl")

srs_p_names = paste0('P4SRS', c(10, 13, 15, 18, 22, 24))
srs_t_names = paste0('T4SRS', c(11, 14, 15, 21, 23, 24))

teacher_items = readLines(file.path(data_raw_location, "teacher-items.txt"))
parent_items = readLines(file.path(data_raw_location, "parent-items.txt"))


## Write to documentation template ----
writeLines("#' @details
#' Items were split between being answered by **Parents** and **Teachers**.
#'",
  template_location
)

write(
  paste0("#' - **Parents**:\n",
         paste0("#'   - `", srs_p_names,"`: ", parent_items, collapse="\n"),
        "\n#' - **Teachers**:\n",
         paste0("#'   - `", srs_t_names,"`: ", teacher_items, collapse="\n")
  ),
  template_location,
  append = TRUE
  )
