##### Binning Continuous Variables

-- Create age bins
ALTER TABLE cleaned_mxmh_survey 
ADD Age_Group VARCHAR(20);
UPDATE cleaned_mxmh_survey
SET Age_Group = CASE
    WHEN Age < 18 THEN 'Under 18'
    WHEN Age BETWEEN 18 AND 24 THEN '18-24'
    WHEN Age BETWEEN 25 AND 34 THEN '25-34'
    WHEN Age BETWEEN 35 AND 44 THEN '35-44'
    WHEN Age BETWEEN 45 AND 54 THEN '45-54'
    WHEN Age BETWEEN 55 AND 64 THEN '55-64'
    ELSE '65 and above'
END;

-- Create Hours_per_day bins

ALTER TABLE cleaned_mxmh_survey 
ADD Hours_per_day_Group VARCHAR(20);
UPDATE cleaned_mxmh_survey
SET Hours_per_day_Group = CASE
    WHEN Hours_per_day < 1 THEN '0-1 hours'
    WHEN Hours_per_day BETWEEN 1 AND 3 THEN '1-3 hours'
    WHEN Hours_per_day BETWEEN 3 AND 5 THEN '3-5 hours'
    ELSE '5+ hours'
END;

-- Create BPM bins
ALTER TABLE cleaned_mxmh_survey 
ADD BPM_Group VARCHAR(20);
UPDATE cleaned_mxmh_survey
SET BPM_Group = CASE
    WHEN BPM < 60 THEN 'Slow'
    WHEN BPM BETWEEN 61 AND 120 THEN 'Moderate'
    WHEN BPM BETWEEN 121 AND 180 THEN 'Fast'
    ELSE 'Very Fast'
END;

-- Create Mental Health Level bins
ALTER TABLE cleaned_mxmh_survey 
ADD Anxiety_Group VARCHAR(20);
UPDATE cleaned_mxmh_survey
SET Anxiety_Group = CASE
    WHEN Anxiety <= 1 THEN 'No'
    WHEN Anxiety BETWEEN 2 AND 4 THEN 'Low'
    WHEN Anxiety BETWEEN 5 AND 7 THEN 'Medium'
    ELSE 'High'
END;

ALTER TABLE cleaned_mxmh_survey 
ADD Depression_Group VARCHAR(20);
UPDATE cleaned_mxmh_survey
SET Depression_Group = CASE
    WHEN Depression <= 1 THEN 'No'
    WHEN Depression BETWEEN 2 AND 4 THEN 'Low'
    WHEN Depression BETWEEN 5 AND 7 THEN 'Medium'
    ELSE 'High'
END;

ALTER TABLE cleaned_mxmh_survey 
ADD Insomnia_Group VARCHAR(20);
UPDATE cleaned_mxmh_survey
SET Insomnia_Group = CASE
    WHEN Insomnia <= 1 THEN 'No'
    WHEN Insomnia BETWEEN 2 AND 4 THEN 'Low'
    WHEN Insomnia BETWEEN 5 AND 7 THEN 'Medium'
    ELSE 'High'
END;

ALTER TABLE cleaned_mxmh_survey 
ADD OCD_Group VARCHAR(20);
UPDATE cleaned_mxmh_survey
SET OCD_Group = CASE
    WHEN OCD <= 1 THEN 'No'
    WHEN OCD BETWEEN 2 AND 4 THEN 'Low'
    WHEN OCD BETWEEN 5 AND 7 THEN 'Medium'
    ELSE 'High'
END;