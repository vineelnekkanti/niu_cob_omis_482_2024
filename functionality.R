library(readxl)
library(dplyr)

# Read the Excel file
data <- read_excel("students_participation_tracker_BP.xlsx")

# Clean and process the data
cleaned_data <- data  |> 
  filter(!is.na(teams_score))  |> 
  arrange(desc(teams_score))  |> select(1) |> 
  head(5)

# Save the processed data to an RDS file for use in the Quarto document
saveRDS(cleaned_data, "cleaned_data.rds")

