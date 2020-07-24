## Template generation ----
template_location = file.path("man-roxygen", "var-docs-narcissistic-personality-inventory.R")
data_raw_location = file.path("data-raw", "narcissistic-personality-inventory")

## Process answers ----
nip_raw_answers = readLines(file.path(data_raw_location, "nips-scoring.txt"))

# Convert scoring rules to detect correct answers.
nip_answers = stringr::str_replace(nip_raw_answers,
                     "\\(\\(int\\) \\$_POST\\['Q[0-9]+'\\] == ([1-2]).*",
                     "\\1")


## Process questions ----

nip_questions = readLines(file.path(data_raw_location, "raw-npi-questions.txt"))

## Inject bold for score detection
highlight_question_answers = stringr::str_replace(
  nip_questions,
  pattern = paste0(nip_answers, "="),
  replacement = paste0("**Option ", nip_answers, "**: ")
  )

## Convert the remainder
convert_question_answers = stringr::str_replace(
  highlight_question_answers,
  pattern = "([1-2])=",
  replacement = "Option \\1: "
  )

highlight_question_id = stringr::str_replace(
  convert_question_answers,
  pattern = "(Q[0-9]+)",
  replacement = "`\\1`"
)

## Breakup single-line data to list-form ----

# Sample data:
# Q1. 1=I have a natural talent for influencing people. 2=I am not good at influencing people.
#
# Strategy:
# Split on period (.) as it is the most common.
# Drop the last period split by setting n = 3, otherwise, we'll get an empty string.

# Split
questions_split = stringr::str_split(highlight_question_id,
                                     "\\.[[:space:]]?", n = 3)

## Write to documentation template ----
writeLines("#' @details
#'
#' Items with their desired option response bolded:",
  template_location
)

write(
  paste0("#' - ", sapply(questions_split, paste, collapse="\n#'    - "), collapse="\n"),
  template_location,
  append = TRUE
  )
