library(DBI)
library(RSQLite)
library(nflfastR)
library(puntr)
library(tidyverse)
library(gsisdecoder)

# Standard code chunk we use to get up-to-date data #####
update_db()
connection <- dbConnect(SQLite(), "./pbp_db")
pbp <- tbl(connection, "nflfastR_pbp")
extra_cols <- pbp %>%
  filter(season==2021) %>%
  filter(week==1) %>%
  collect %>%
  select(-c(play_id, game_id)) %>%
  colnames()

punts <- pbp %>%
  filter(punt_attempt==1) %>%
  filter(season %in% 2019:2021) %>%
  collect() %>%
  trust_the_process() %>%
  calculate_all() %>%
  filter(season == 2021)

dbDisconnect(connection)

# Grab game_ids #####
game_ids <- fast_scraper_schedules(2021) %>%
  # filter down to what you want
  filter(week == 1) %>%
  filter(weekday == "Thursday") %>%

  # select only the game_ids
  select(game_id)

# Merge Mike data into pbp #####
mike <- game_ids %>%
  import_mike() %>%
  #
  select(-all_of(extra_cols))

punts_mike <- punts %>%
  left_join(mike, by = c('game_id', 'play_id'))


