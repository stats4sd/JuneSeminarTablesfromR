library(tidyverse)
library(flextable)
setwd("C:/Users/AlexThomson/OneDrive - Statistic For Sustainable Development/June Seminar - tables from R/flextable/examples/")
load("imdb.Rdata")

top_20_movies <- imdb %>%
  filter(type == "movie" & numVotes > 99999)%>%
  arrange(desc(averageRating))%>%
  select(title, year, averageRating, numVotes)%>%
  slice(1:20)


t <- flextable(top_20_movies)
t <- add_header_lines(t, values = "IMDB Entries with at least 100,000 votes") # subtitle
t <- add_header_lines(t, values = "Top 20 Movies of all time") # title
t <- fontsize(t, i = 1, size = 14, part = "header") 
t <- autofit(t) 
t


t <- flextable(top_20_movies)
t <- add_header_lines(t, values = "Top 20 Movies of all time") # title
t <- add_header_lines(t, values = "IMDB Entries with at least 100,000 votes") # subtitle
t <- fontsize(t, i = 1, size = 14, part = "header") 
t <- autofit(t) 
t

imdb_animation_avgs <- imdb %>%
  filter(type != "videoGame")%>%
  group_by(type, animation)%>%
  summarise(Mean.Votes = mean(numVotes, na.rm = TRUE),
            Mean.Rating = mean(averageRating, na.rm = TRUE),
            Number.Of.Entries = n())

knitr::kable(imdb_animation_avgs, "html") 