data <- read_excel("streaming_cleaned.xlsx")

data$skip_30s <- factor(data$skip_30s, levels = c(0, 1),
                        labels = c("Not Skipped", "Skipped"))

# Distribution analysis
ggplot(data, aes(energy, fill = skip_30s)) +
  geom_histogram(alpha = 0.6, bins = 30) +
  theme_minimal()

# Outlier & spread analysis
ggplot(data, aes(skip_30s, loudness)) +
  geom_boxplot() +
  theme_minimal()

