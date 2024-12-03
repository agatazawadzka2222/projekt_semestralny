# Skrypt dzień pierwszy

# Załaduj biblioteki/paczki
library(tidyverse)

# Dane z internetu
dane_internetowe <- readr::read_csv("https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv")

# Dane z dysku - sciezka bezwzględna
dane_dysk_01 <- readr::read_csv("C:/GitHub/projekt_semestralny/R/dane/annual-enterprise-survey-2023-financial-year-provisional.csv")

# Dane z dysku - sciezka wzgledna
dane_dysk_02 <- readr::read_csv("R/dane/annual-enterprise-survey-2023-financial-year-provisional.csv")

# Zmaiana kolumny tekst na liczbę
dane_dysk_02$Value <- as.numeric(dane_dysk_02$Value)

# Parsowanie tekstu na liczbę
dane_dysk_01$value <- readr::parse_number(dane_dysk_01$Value)

# Sprawdzenie wiersza 748
dane_internetowe[748, "Value"]

dane_internetowe <- readr::read_csv("R/dane/annual-enterprise-survey-2023-financial-year-provisional.csv")
dane_internetowe[700,2] <- "123"
