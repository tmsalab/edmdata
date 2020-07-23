## Process answers ----

nip_raw_answers = readLines("data-raw/narcissistic-personality-inventory/nips-scoring.txt")

nip_answers = stringr::str_replace(nip_answers,
                     "\\(\\(int\\) \\$_POST\\['Q[0-9]+'\\] == ([1-2]).*",
                     "\\1")


## Process questions ----

nip_questions = readLines("data-raw/narcissistic-personality-inventory/raw-npi-questions.txt")

## Inject bold for score detection
highlight_question_answers = stringr::str_replace(
  nip_questions,
  pattern = paste0(nip_answers,"="),
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



# Sample data:
# Q1. 1=I have a natural talent for influencing people. 2=I am not good at influencing people.
#
# Strategy:
# Split on period (.) as it is the most common.
# Drop the last period split by setting n = 3, otherwise, we'll get an empty string.

# Split
questions_split = stringr::str_split(highlight_question_id,
                                     "\\.[[:space:]]?", n = 3)


## Old, not used
## Convert 1= and 2= to Options
# questions_labelled = questions_split %>% lapply(
#   stringr::str_replace_all,
#   "1=", "Option 1: "
# ) %>%
#   lapply(
#     stringr::str_replace_all,
#     "2=", "Option 2: "
#   )

writeLines(
  paste0("#' - ", sapply(questions_split, paste, collapse="\n#'    - "), collapse="\n"),
  "man-roxygen/var-docs-narcissistic-personality-inventory.R"
  )
