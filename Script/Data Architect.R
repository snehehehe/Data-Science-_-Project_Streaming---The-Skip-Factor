getwd()

raw_data <- read_excel("streaming_raw_data.xlsx")

# Handling missing values
raw_data$energy[is.na(raw_data$energy)] <- median(raw_data$energy, na.rm = TRUE)
raw_data$tempo[is.na(raw_data$tempo)] <- median(raw_data$tempo, na.rm = TRUE)
raw_data$loudness[is.na(raw_data$loudness)] <- median(raw_data$loudness, na.rm = TRUE)

# Removing duplicates & creating clean base dataset
clean_data <- raw_data %>%
  distinct()

write_xlsx(clean_data, "streaming_cleaned.xlsx")
