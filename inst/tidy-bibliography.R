#' Format Bibliography Entries
#'
#' @param bibfile Path to bibliography file to format
#'
#' @return
#' An updated bibliography file.
#'
#' @details
#' You may wish to check that the bibfile has the appropriate entry keys.
#'
#' @export
format_bibliography = function(bibfile = "bibliography.bib") {

  # Process bib file using biber
  system(paste0("biber --tool --output_align --output_indent=2 --output_fieldcase=lower ", bibfile))

  # Find the bib file location on disk without extension
  bibfile_location = tools::file_path_sans_ext(bibfile)

  # Side-effect
  processed_bibfile_location = paste0(bibfile_location, ".bib.blg")
  file.remove(processed_bibfile_location)

  # Bring in the bibliography data
  tidied_bibfile_location = paste0(bibfile_location, "_bibertool.bib")
  tidied_bibfile_data = readLines(tidied_bibfile_location)

  # Remove newly converted file
  file.remove(tidied_bibfile_location)

  # Revert non-standard changes of year -> date and journal -> journaltitle
  tidied_bibfile_data = stringr::str_replace(tidied_bibfile_data, "journaltitle =", "journal      =")
  tidied_bibfile_data = stringr::str_replace(tidied_bibfile_data, "date ", "year ")

  # Output correct bibliography
  writeLines(tidied_bibfile_data, bibfile)
}
