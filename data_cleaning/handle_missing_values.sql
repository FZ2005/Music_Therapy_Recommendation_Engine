##### Handling Missing Values
/*
Since the skewness of variables 'Age' and 'BPM' are 2 and 25, the data is significantly skewed. 
Thus, median is used to replace missing values.
*/

-- Find the number of null values in BPM column
SELECT COUNT(*) AS null_count
FROM music_rec_engine.cleaned_mxmh_survey
WHERE BPM = 0;
;

### Numerical Variables
-- Replace missing values in BPM column with median of 120.0 (calculated in data_exploration.py)
UPDATE cleaned_mxmh_survey
SET BPM = 120.0
WHERE BPM IS NULL;

-- Create a new table for the cleaned data
CREATE TABLE cleaned_mxmh_survey AS 
SELECT *
FROM music_rec_engine.mxmh_survey_results;

-- Replace missing values in Age column with median of 21.0 (calculated in data_exploration.py)
UPDATE cleaned_mxmh_survey
SET Age = 21
WHERE Age IS NULL;

### Categorical Variables
-- Find the mode in Primary_streaming_service
SELECT `Primary_streaming_service`, COUNT(*) AS frequency
FROM cleaned_mxmh_survey
GROUP BY `Primary_streaming_service`
ORDER BY frequency DESC
LIMIT 1;
-- Found that the mode is 'Spotify' with 458 occurrences

-- Replace missing values in Primary_streaming_service column with mode of 'Spotify'
UPDATE cleaned_mxmh_survey
SET `Primary_streaming_service` = 'Spotify'
WHERE `Primary_streaming_service` IS NULL;



-- Find the mode in Music effects
SELECT `Music_effect`, COUNT(*) AS frequency
FROM cleaned_mxmh_survey
GROUP BY `Music_effect`
ORDER BY frequency DESC
LIMIT 1;
-- Found that the mode is 'Improve' with 542 occurrences

-- Replace missing values in Music_effect with mode of 'Improve'
UPDATE cleaned_mxmh_survey
SET `Music_effect` = 'Improve'
WHERE `Music_effect` IS NULL;


-- Find the mode in Instrumentalist
SELECT `Instrumental`, COUNT(*) AS frequency
FROM cleaned_mxmh_survey
GROUP BY `Instrumental`
ORDER BY frequency DESC
LIMIT 1;
-- Found that the mode is 'No' with 497 occurrences

-- Replace missing values in Instrumental with mode of 'No'
UPDATE cleaned_mxmh_survey
SET `Instrumental` = 'No'
WHERE `Instrumental` IS NULL;


-- Find the mode in Foreign Languages
SELECT `Foreign_languages`, COUNT(*) AS frequency
FROM cleaned_mxmh_survey
GROUP BY `Foreign_languages`
ORDER BY frequency DESC
LIMIT 1;
-- Found that the mode is 'Yes' with 404 occurrences

-- Replace missing values in Foreign_languages with mode of 'Yes'
UPDATE cleaned_mxmh_survey
SET `Foreign_languages` = 'Yes'
WHERE `Foreign_languages` IS NULL;


-- Find the mode in While_working
SELECT `While_working`, COUNT(*) AS frequency
FROM cleaned_mxmh_survey
GROUP BY `While_working`
ORDER BY frequency DESC
LIMIT 1;
-- Found that the mode is 'Yes' with 579 occurrences

-- Replace missing values in While_working with mode of 'Yes'
UPDATE cleaned_mxmh_survey
SET `While_working` = 'Yes'
WHERE `While_working` IS NULL;


-- Find the mode in While working
SELECT `Composer`, COUNT(*) AS frequency
FROM cleaned_mxmh_survey
GROUP BY `Composer`
ORDER BY frequency DESC
LIMIT 1;
-- Found that the mode is 'No' with 609 occurrences

-- Replace missing values in Composer with mode of 'No'
UPDATE cleaned_mxmh_survey
SET `Composer` = 'No'
WHERE `Composer` IS NULL;


SELECT *
FROM mxmh_survey_results
;
