## Template generation ----
template_location = "man-roxygen/var-docs-spm-ls.R"

## Retrieve and format question data ----
question_ans = readLines("data-raw/spm-ls/spm-ls-answer-key.txt")
question_ids = paste0("SPM", seq_len(length(question_ans)))

question_merged_with_answer =
  paste0(
    "#' - ",
    question_ids,
    paste0(": **", question_ans, "**"),
    collapse = "\n"
  )

## Write format header to template file ----
writeLines("#' @details
#' Items with the correct answer response based off of Table 9 of the
#' Robitzsch (2020) pre-print paper.
#'",
  template_location
)

## Add data to created file ----
# Output to terminal the merge of question text with answer key output.
write(
  question_merged_with_answer,
  template_location,
  append = TRUE
)
