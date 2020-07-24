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
writeLines("#' @details
#' Questions alongside of their correct answer is based off of Table 1 of the
#' Taylor (1953) paper.
#'
#' Items with their desired response bolded in parentheses:",
  template_location
)

## Add data to created file ----
# Output to terminal the merge of question text with answer key output.
write(
  question_merged_with_answer,
  template_location,
  append = TRUE
)
