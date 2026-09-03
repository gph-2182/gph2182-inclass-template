# Download this week's in-class worksheet into your project folder.
#
# Usage (in the RStudio Console, from inside this project):
#   source("get_worksheet.R")
#   get_worksheet(2)          # downloads week-02-inclass.qmd
#
# Worksheets unlock on the course website the Sunday before each class.
# The function never overwrites a file you already have, so re-running it
# is always safe.

get_worksheet <- function(week) {
  stopifnot(is.numeric(week), length(week) == 1, week >= 1, week <= 14)
  file <- sprintf("week-%02d-inclass.qmd", week)
  url  <- paste0("https://gph-2182.github.io/weeks/inclass/", file)

  if (file.exists(file)) {
    message("You already have ", file, ". Nothing downloaded (your work is safe).")
    return(invisible(file))
  }

  ok <- tryCatch(
    {
      utils::download.file(url, destfile = file, mode = "wb", quiet = TRUE)
      TRUE
    },
    error = function(e) FALSE,
    warning = function(w) FALSE
  )

  # A real worksheet starts with a YAML header; an HTML error page does not.
  looks_like_qmd <- ok && file.exists(file) &&
    identical(trimws(readLines(file, n = 1, warn = FALSE)), "---")
  if (!looks_like_qmd) {
    if (file.exists(file)) unlink(file)
    stop(
      "Could not download ", file, ".\n",
      "Week ", week, " may not be released yet (worksheets unlock the Sunday ",
      "before class), or you may be offline. Check ",
      "https://gph-2182.github.io/weeks/week-", sprintf("%02d", week), ".html",
      call. = FALSE
    )
  }

  message("Downloaded ", file, ". Open it, add both partners' names, and get started!")
  invisible(file)
}
