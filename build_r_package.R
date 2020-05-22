library(styler)
library(lubridate)
library(glue)
library(stringr)
library(fs)
base_dir <- "/Users/fdrennan/redditor/redditor-api"

style_dir(base_dir)
style_dir(file.path(base_dir, "R"))
style_dir(file.path("/Users/fdrennan/redditor/", 'redditor-shiny'))
devtools::install(base_dir)
dir_copy(base_dir, 'redditor-shiny/redditor-api', overwrite = TRUE)

current_time <- now(tzone = "MST") + hours(1)
redditor::send_message(messages = glue("Package built at {current_time}"), SLACK_API_KEY = Sys.getenv('SLACK_API_KEY'))