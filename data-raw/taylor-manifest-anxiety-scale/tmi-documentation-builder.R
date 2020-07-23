## Template generation ----
template_location = "man-roxygen/var-docs-taylor-manifest-anxiety-scale.R"

## Retrieve and format question data ----
question_ids = readLines("data-raw/taylor-manifest-anxiety-scale/tmi-question-text.txt")
question_ans = readLines("data-raw/taylor-manifest-anxiety-scale/tmi-answer-key.txt")

question_merged_with_answer =
  paste0(
    question_ids,
    paste0(" **(", question_ans, ")**"),
    collapse = "\n"
  )

## Write format header to template file ----
writeLines("#' @format
#' A `matrix` consisting of **`r nrow(ecdmdata::items_taylor_manifest_anxiety_scale)`**
#' rows and **`r ncol(ecdmdata::items_taylor_manifest_anxiety_scale)`** columns.
#'
#' Items with their desired response bolded:",
  template_location
)

## Add data to created file ----
# Output to terminal the merge of question text with answer key output.
write(
  question_merged_with_answer,
  template_location,
  append = TRUE
)
