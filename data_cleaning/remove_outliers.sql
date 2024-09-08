### Remove Outliers
-- Remove rows that havae Hours per day of 24 hours
-- Identified other outliers in data exploration using Python (original_data_exploration.ipynb)
DELETE FROM cleaned_mxmh_survey
WHERE `Hours_per_day` = 24;
