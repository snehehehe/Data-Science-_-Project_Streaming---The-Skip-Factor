data <- data %>%
  mutate(
    low_energy = ifelse(energy < 0.5, 1, 0),
    very_quiet = ifelse(loudness < -9, 1, 0),
    energy_tempo = energy * tempo
  )
