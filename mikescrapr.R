library(nflfastR)
library(puntr)
library(tidyverse)
library(glue)

# This is very similar to puntr::import_punts()
import_mike <- function(game_ids, local = FALSE, path = NULL) {
  if(local == TRUE) {
    message(glue("Importing locally from {path}"))
    punts <- game_ids %>%
      purrr::map_df(import_local_csv, path)
    return(punts)
  } else if(local == FALSE) {
    message("Importing from https://raw.githubusercontent.com/mlounsberry/Punt-Charting-2021/main/Punt-Data/
    For faster import, clone this repo locally and use local = TRUE")
    punts <- game_ids %>%
      purrr::map_df(import_one_csv, 'https://raw.githubusercontent.com/mlounsberry/Punt-Charting-2021/main/Punt-Data/')
    return(punts)
  } else { stop("'local' must be TRUE or FALSE")}

}

# Helper function for a single file, pulling from URL
import_one_csv <- function(game_id, url) {
  pbp <- glue::glue('{url}{game_id}.csv') %>%
    url() %>%
    read_csv(show_col_types=FALSE)
  return(pbp)
}

# Helper function for a single file, downloaded locally
import_local_csv <- function(game_id, path) {
  pbp <- glue::glue('{path}/Punt-Charting-2021/Punt-Data/{game_id}.csv') %>%
    read_csv(show_col_types=FALSE)
  return(pbp)
}
