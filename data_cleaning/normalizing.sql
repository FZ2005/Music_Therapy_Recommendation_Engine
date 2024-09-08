##### Normalizing Features
-- Normalize Hours_per_day
ALTER TABLE cleaned_mxmh_survey 
ADD Normalized_HoursPerDay FLOAT;

-- Calculate MIN and MAX
SET @min_hours = (SELECT MIN(Hours_per_day) FROM cleaned_mxmh_survey);
SET @max_hours = (SELECT MAX(Hours_per_day) FROM cleaned_mxmh_survey);

-- Update Normalized Hours_per_day
UPDATE cleaned_mxmh_survey
SET Normalized_HoursPerDay = (Hours_per_day - @min_hours) / (@max_hours - @min_hours);


-- Normalize BPM
ALTER TABLE cleaned_mxmh_survey 
ADD Normalized_BPM FLOAT;

-- Calculate MIN and MAX
SET @min_BPM = (SELECT MIN(BPM) FROM cleaned_mxmh_survey);
SET @max_BPM = (SELECT MAX(BPM) FROM cleaned_mxmh_survey);

-- Update Normalized BPM
UPDATE cleaned_mxmh_survey
SET Normalized_BPM = (Hours_per_day - @min_hours) / (@max_hours - @min_hours);


-- Normalize Mental Health Levels
ALTER TABLE cleaned_mxmh_survey 
ADD Normalized_Anxiety FLOAT;

SET @min_Anxiety = (SELECT MIN(Anxiety) FROM cleaned_mxmh_survey);
SET @max_Anxiety = (SELECT MAX(Anxiety) FROM cleaned_mxmh_survey);
UPDATE cleaned_mxmh_survey
SET Normalized_Anxiety = (Anxiety - @min_hours) / (@max_hours - @min_hours);

ALTER TABLE cleaned_mxmh_survey 
ADD Normalized_Depression FLOAT;

SET @min_Depression = (SELECT MIN(Depression) FROM cleaned_mxmh_survey);
SET @max_Depression = (SELECT MAX(Depression) FROM cleaned_mxmh_survey);

UPDATE cleaned_mxmh_survey
SET Normalized_Depression = (Depression - @min_hours) / (@max_hours - @min_hours);


ALTER TABLE cleaned_mxmh_survey 
ADD Normalized_Insomnia FLOAT;

SET @min_Insomnia = (SELECT MIN(Insomnia) FROM cleaned_mxmh_survey);
SET @max_Insomnia = (SELECT MAX(Insomnia) FROM cleaned_mxmh_survey);
UPDATE cleaned_mxmh_survey
SET Normalized_Insomnia = (Insomnia - @min_hours) / (@max_hours - @min_hours);


ALTER TABLE cleaned_mxmh_survey 
ADD Normalized_OCD FLOAT;

SET @min_OCD = (SELECT MIN(OCD) FROM cleaned_mxmh_survey);
SET @max_OCD = (SELECT MAX(OCD) FROM cleaned_mxmh_survey);
UPDATE cleaned_mxmh_survey
SET Normalized_OCD = (OCD - @min_hours) / (@max_hours - @min_hours);