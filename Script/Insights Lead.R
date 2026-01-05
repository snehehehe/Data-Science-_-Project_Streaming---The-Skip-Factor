predictions <- predict(rf_model, test_data)

actual <- test_data$skip_30s

predictions <- factor(predictions, levels = levels(actual))
actual <- factor(actual, levels = levels(actual))

confusionMatrix(predictions, actual)
