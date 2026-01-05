set.seed(123)

train_index <- createDataPartition(data$skip_30s, p = 0.7, list = FALSE)

train_data <- data[train_index, ]
test_data  <- data[-train_index, ]

rf_model <- randomForest(
  skip_30s ~ energy + tempo + loudness +
    low_energy + very_quiet + energy_tempo,
  data = train_data
)
