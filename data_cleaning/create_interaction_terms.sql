##### Create Interaction Terms
/*
Potential Interaction Terms:
1. Age and Hours per day
    --> how the amount of time spent listening to music varies with age

2. BPM and Mental health levels
    --> whether certain BPM ranges correlate with mental health levels like depression or anxiety

3. Favorite genre and Music effects
    --> if certain genres have a stronger effect on the mental state

4. Frequency of listening to a specific genre and Mental health level
    --> how frequency of listening to a specific genres influence mental health levels
*/

### Interaction between Numerical Variables
-- Add interaction term column for Age and Hours per day
ALTER TABLE cleaned_mxmh_survey
ADD Age_Hours_Interaction FLOAT;
-- Update interaction term column with Age * Hours_per_day
UPDATE cleaned_mxmh_survey
SET Age_Hours_Interaction = Age * Hours_per_day


-- Add interaction term column for BPM and Anxiety
ALTER TABLE cleaned_mxmh_survey 
ADD BPM_Anxiety FLOAT;
-- Update interaction term column with BPM and Anxiety
UPDATE cleaned_mxmh_survey
SET BPM_Anxiety = `BPM` * `Anxiety`


-- Add interaction term column for BPM and Depression
ALTER TABLE cleaned_mxmh_survey 
ADD BPM_Depression FLOAT;
-- Update interaction term column with BPM and Depression
UPDATE cleaned_mxmh_survey
SET BPM_Depression = `BPM` * `Depression`


-- Add interaction term column for BPM and Insomnia
ALTER TABLE cleaned_mxmh_survey 
ADD BPM_Insomnia FLOAT;
-- Update interaction term column with BPM and Insomnia
UPDATE cleaned_mxmh_survey
SET BPM_Insomnia = `BPM` * `Insomnia`


-- Add interaction term column for BPM and OCD
ALTER TABLE cleaned_mxmh_survey 
ADD BPM_OCD FLOAT;
-- Update interaction term column with BPM and OCD
UPDATE cleaned_mxmh_survey
SET BPM_OCD = `BPM` * `OCD`


### Interaction between categorical variables
-- Add interaction term column for Favorite genre and Music effects (Combined Categories of Variables)
ALTER TABLE cleaned_mxmh_survey
ADD FavGenre_Musiceffects VARCHAR(150);
-- Update interaction term column with Fav_genre and Music_effect
UPDATE cleaned_mxmh_survey
SET `FavGenre_Musiceffects` = CONCAT(`Fav_genre`, '_', `Music_effect`);



### Interaction between Frequency and Mental health level
-- Add an id column to the table

ALTER TABLE cleaned_mxmh_survey
ADD id INT AUTO_INCREMENT PRIMARY KEY;

-- Create a table for encoded frequencies
CREATE TABLE encoded_frequencies (
    encoded_id INT AUTO_INCREMENT PRIMARY KEY,
    survey_id INT,
    Frequency_Classical_Encoded INT,
    Frequency_Country_Encoded INT,
    Frequency_EDM_Encoded INT,
    Frequency_Folk_Encoded INT,
    Frequency_Gospel_Encoded INT,
    Frequency_HipHop_Encoded INT,
    Frequency_Jazz_Encoded INT,
    Frequency_Kpop_Encoded INT,
    Frequency_Latin_Encoded INT,
    Frequency_Lofi_Encoded INT,
    Frequency_Metal_Encoded INT,
    Frequency_Pop_Encoded INT,
    Frequency_RB_Encoded INT,
    Frequency_Rap_Encoded INT,
    Frequency_Rock_Encoded INT,
    Frequency_VideoGameMusic_Encoded INT
);

-- Nnumerical encoding on the 16 Frequency columns, importing the encoded frequencies to the new table
INSERT INTO encoded_frequencies (
    survey_id,
    Frequency_Classical_Encoded,
    Frequency_Country_Encoded,
    Frequency_EDM_Encoded,
    Frequency_Folk_Encoded,
    Frequency_Gospel_Encoded,
    Frequency_HipHop_Encoded,
    Frequency_Jazz_Encoded,
    Frequency_Kpop_Encoded,
    Frequency_Latin_Encoded,
    Frequency_Lofi_Encoded,
    Frequency_Metal_Encoded,
    Frequency_Pop_Encoded,
    Frequency_RB_Encoded,
    Frequency_Rap_Encoded,
    Frequency_Rock_Encoded,
    Frequency_VideoGameMusic_Encoded
)
SELECT
    id,
    CASE
        WHEN Frequency_classical = 'Never' THEN 0
        WHEN Frequency_classical = 'Rarely' THEN 1
        WHEN Frequency_classical = 'Sometimes' THEN 2
        WHEN Frequency_classical = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_Classical_Encoded,
    CASE
        WHEN Frequency_country = 'Never' THEN 0
        WHEN Frequency_country = 'Rarely' THEN 1
        WHEN Frequency_country = 'Sometimes' THEN 2
        WHEN Frequency_country = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_Country_Encoded,
    CASE
        WHEN Frequency_EDM = 'Never' THEN 0
        WHEN Frequency_EDM = 'Rarely' THEN 1
        WHEN Frequency_EDM = 'Sometimes' THEN 2
        WHEN Frequency_EDM = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_EDM_Encoded,
    CASE
        WHEN Frequency_folk = 'Never' THEN 0
        WHEN Frequency_folk = 'Rarely' THEN 1
        WHEN Frequency_folk = 'Sometimes' THEN 2
        WHEN Frequency_folk = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_Folk_Encoded,
    CASE
        WHEN Frequency_gospel = 'Never' THEN 0
        WHEN Frequency_gospel = 'Rarely' THEN 1
        WHEN Frequency_gospel = 'Sometimes' THEN 2
        WHEN Frequency_gospel = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_Gospel_Encoded,
    CASE
        WHEN Frequency_hip_hop = 'Never' THEN 0
        WHEN Frequency_hip_hop = 'Rarely' THEN 1
        WHEN Frequency_hip_hop = 'Sometimes' THEN 2
        WHEN Frequency_hip_hop = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_HipHop_Encoded,
    CASE
        WHEN Frequency_jazz = 'Never' THEN 0
        WHEN Frequency_jazz = 'Rarely' THEN 1
        WHEN Frequency_jazz = 'Sometimes' THEN 2
        WHEN Frequency_jazz = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_Jazz_Encoded,
    CASE
        WHEN Frequency_K_pop = 'Never' THEN 0
        WHEN Frequency_K_pop = 'Rarely' THEN 1
        WHEN Frequency_K_pop = 'Sometimes' THEN 2
        WHEN Frequency_K_pop = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_Kpop_Encoded,
    CASE
        WHEN Frequency_latin = 'Never' THEN 0
        WHEN Frequency_latin = 'Rarely' THEN 1
        WHEN Frequency_latin = 'Sometimes' THEN 2
        WHEN Frequency_latin = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_Latin_Encoded,
    CASE
        WHEN Frequency_lofi = 'Never' THEN 0
        WHEN Frequency_lofi = 'Rarely' THEN 1
        WHEN Frequency_lofi = 'Sometimes' THEN 2
        WHEN Frequency_lofi = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_Lofi_Encoded,
    CASE
        WHEN Frequency_metal = 'Never' THEN 0
        WHEN Frequency_metal = 'Rarely' THEN 1
        WHEN Frequency_metal = 'Sometimes' THEN 2
        WHEN Frequency_metal = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_Metal_Encoded,
    CASE
        WHEN Frequency_pop = 'Never' THEN 0
        WHEN Frequency_pop = 'Rarely' THEN 1
        WHEN Frequency_pop = 'Sometimes' THEN 2
        WHEN Frequency_pop = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_Pop_Encoded,
    CASE
        WHEN Frequency_R_and_B = 'Never' THEN 0
        WHEN Frequency_R_and_B = 'Rarely' THEN 1
        WHEN Frequency_R_and_B = 'Sometimes' THEN 2
        WHEN Frequency_R_and_B = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_RB_Encoded,
    CASE
        WHEN Frequency_rap = 'Never' THEN 0
        WHEN Frequency_rap = 'Rarely' THEN 1
        WHEN Frequency_rap = 'Sometimes' THEN 2
        WHEN Frequency_rap = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_Rap_Encoded,
    CASE
        WHEN Frequency_rock = 'Never' THEN 0
        WHEN Frequency_rock = 'Rarely' THEN 1
        WHEN Frequency_rock = 'Sometimes' THEN 2
        WHEN Frequency_rock = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_Rock_Encoded,
    CASE
        WHEN Frequency_video_game_music = 'Never' THEN 0
        WHEN Frequency_video_game_music = 'Rarely' THEN 1
        WHEN Frequency_video_game_music = 'Sometimes' THEN 2
        WHEN Frequency_video_game_music = 'Very Frequently' THEN 3
        ELSE NULL
    END AS Frequency_VideoGameMusic_Encoded
FROM cleaned_mxmh_survey;


-- Create a table for interaction terms between Encoded Frequencies and Mental health levels (division Interatcion = frequency / (anxiety level + 1))
CREATE TABLE frequency_mental_health_interactions(
    interaction_id INT AUTO_INCREMENT PRIMARY KEY,
    survey_id INT,
    Classical_Anxiety FLOAT,
    Country_Anxiety FLOAT,
    EDM_Anxiety FLOAT,
    Folk_Anxiety FLOAT,
    Gospel_Anxiety FLOAT,
    HipHop_Anxiety FLOAT,
    Jass_Anxiety FLOAT,
    Kpop_Anxiety FLOAT,
    Latin_Anxiety FLOAT,
    Lofi_Anxiety FLOAT,
    Metal_Anxiety FLOAT,
    Pop_Anxiety FLOAT,
    RB_Anxiety FLOAT,
    Rap_Anxiety FLOAT,
    Rock_Anxiety FLOAT, 
    VideoGameMusic_Anxiety FLOAT,
    Classical_Depression FLOAT,
    Country_Depression FLOAT,
    EDM_Depression FLOAT,
    Folk_Depression FLOAT,
    Gospel_Depression FLOAT,
    HipHop_Depression FLOAT,
    Jass_Depression FLOAT,
    Kpop_Depression FLOAT,
    Latin_Depression FLOAT,
    Lofi_Depression FLOAT,
    Metal_Depression FLOAT,
    Pop_Depression FLOAT,
    RB_Depression FLOAT,
    Rap_Depression FLOAT,
    Rock_Depression FLOAT, 
    VideoGameMusic_Depression FLOAT,
    Classical_Insomnia FLOAT,
    Country_Insomnia FLOAT,
    EDM_Insomnia FLOAT,
    Folk_Insomnia FLOAT,
    Gospel_Insomnia FLOAT,
    HipHop_Insomnia FLOAT,
    Jass_Insomnia FLOAT,
    Kpop_Insomnia FLOAT,
    Latin_Insomnia FLOAT,
    Lofi_Insomnia FLOAT,
    Metal_Insomnia FLOAT,
    Pop_Insomnia FLOAT,
    RB_Insomnia FLOAT,
    Rap_Insomnia FLOAT,
    Rock_Insomnia FLOAT, 
    VideoGameMusic_Insomnia FLOAT,
    Classical_OCD FLOAT,
    Country_OCD FLOAT,
    EDM_OCD FLOAT,
    Folk_OCD FLOAT,
    Gospel_OCD FLOAT,
    HipHop_OCD FLOAT,
    Jass_OCD FLOAT,
    Kpop_OCD FLOAT,
    Latin_OCD FLOAT,
    Lofi_OCD FLOAT,
    Metal_OCD FLOAT,
    Pop_OCD FLOAT,
    RB_OCD FLOAT,
    Rap_OCD FLOAT,
    Rock_OCD FLOAT, 
    VideoGameMusic_OCD FLOAT
)

-- Populate the created table with interaction terms
INSERT INTO frequency_mental_health_interactions (
    survey_id,
    Classical_Anxiety,
    Country_Anxiety,
    EDM_Anxiety,
    Folk_Anxiety,
    Gospel_Anxiety,
    HipHop_Anxiety,
    Jass_Anxiety,
    Kpop_Anxiety,
    Latin_Anxiety,
    Lofi_Anxiety,
    Metal_Anxiety,
    Pop_Anxiety,
    RB_Anxiety,
    Rap_Anxiety,
    Rock_Anxiety, 
    VideoGameMusic_Anxiety,
    Classical_Depression,
    Country_Depression,
    EDM_Depression,
    Folk_Depression,
    Gospel_Depression,
    HipHop_Depression,
    Jass_Depression,
    Kpop_Depression,
    Latin_Depression,
    Lofi_Depression,
    Metal_Depression,
    Pop_Depression,
    RB_Depression,
    Rap_Depression,
    Rock_Depression, 
    VideoGameMusic_Depression,
    Classical_Insomnia,
    Country_Insomnia,
    EDM_Insomnia,
    Folk_Insomnia,
    Gospel_Insomnia,
    HipHop_Insomnia,
    Jass_Insomnia,
    Kpop_Insomnia,
    Latin_Insomnia,
    Lofi_Insomnia,
    Metal_Insomnia,
    Pop_Insomnia,
    RB_Insomnia,
    Rap_Insomnia,
    Rock_Insomnia, 
    VideoGameMusic_Insomnia,
    Classical_OCD,
    Country_OCD,
    EDM_OCD,
    Folk_OCD,
    Gospel_OCD,
    HipHop_OCD,
    Jass_OCD,
    Kpop_OCD,
    Latin_OCD,
    Lofi_OCD,
    Metal_OCD,
    Pop_OCD,
    RB_OCD,
    Rap_OCD,
    Rock_OCD, 
    VideoGameMusic_OCD
)
SELECT
    encoded_frequencies.survey_id,
    Frequency_Classical_Encoded / (original.Anxiety + 1),
    Frequency_Country_Encoded / (original.Anxiety + 1),
    Frequency_EDM_Encoded / (original.Anxiety + 1),
    Frequency_Folk_Encoded / (original.Anxiety + 1),
    Frequency_Gospel_Encoded / (original.Anxiety + 1),
    Frequency_HipHop_Encoded / (original.Anxiety + 1),
    Frequency_Jazz_Encoded / (original.Anxiety + 1),
    Frequency_Kpop_Encoded / (original.Anxiety + 1),
    Frequency_Latin_Encoded / (original.Anxiety + 1),
    Frequency_Lofi_Encoded / (original.Anxiety + 1),
    Frequency_Metal_Encoded / (original.Anxiety + 1),
    Frequency_Pop_Encoded / (original.Anxiety + 1),
    Frequency_RB_Encoded / (original.Anxiety + 1),
    Frequency_Rap_Encoded / (original.Anxiety + 1),
    Frequency_Rock_Encoded / (original.Anxiety + 1),
    Frequency_VideoGameMusic_Encoded / (original.Anxiety + 1),
    Frequency_Classical_Encoded / (original.Depression + 1),
    Frequency_Country_Encoded / (original.Depression + 1),
    Frequency_EDM_Encoded / (original.Depression + 1),
    Frequency_Folk_Encoded / (original.Depression + 1),
    Frequency_Gospel_Encoded / (original.Depression + 1),
    Frequency_HipHop_Encoded / (original.Depression + 1),
    Frequency_Jazz_Encoded / (original.Depression + 1),
    Frequency_Kpop_Encoded / (original.Depression + 1),
    Frequency_Latin_Encoded / (original.Depression + 1),
    Frequency_Lofi_Encoded / (original.Depression + 1),
    Frequency_Metal_Encoded / (original.Depression + 1),
    Frequency_Pop_Encoded / (original.Depression + 1),
    Frequency_RB_Encoded / (original.Depression + 1),
    Frequency_Rap_Encoded / (original.Depression + 1),
    Frequency_Rock_Encoded / (original.Depression + 1),
    Frequency_VideoGameMusic_Encoded / (original.Depression + 1),
    Frequency_Classical_Encoded / (original.Insomnia + 1),
    Frequency_Country_Encoded / (original.Insomnia + 1),
    Frequency_EDM_Encoded / (original.Insomnia + 1),
    Frequency_Folk_Encoded / (original.Insomnia + 1),
    Frequency_Gospel_Encoded / (original.Insomnia + 1),
    Frequency_HipHop_Encoded / (original.Insomnia + 1),
    Frequency_Jazz_Encoded / (original.Insomnia + 1),
    Frequency_Kpop_Encoded / (original.Insomnia + 1),
    Frequency_Latin_Encoded / (original.Insomnia + 1),
    Frequency_Lofi_Encoded / (original.Insomnia + 1),
    Frequency_Metal_Encoded / (original.Insomnia + 1),
    Frequency_Pop_Encoded / (original.Insomnia + 1),
    Frequency_RB_Encoded / (original.Insomnia + 1),
    Frequency_Rap_Encoded / (original.Insomnia + 1),
    Frequency_Rock_Encoded / (original.Insomnia + 1),
    Frequency_VideoGameMusic_Encoded / (original.Insomnia + 1),
    Frequency_Classical_Encoded / (original.OCD + 1),
    Frequency_Country_Encoded / (original.OCD + 1),
    Frequency_EDM_Encoded / (original.OCD + 1),
    Frequency_Folk_Encoded / (original.OCD + 1),
    Frequency_Gospel_Encoded / (original.OCD + 1),
    Frequency_HipHop_Encoded / (original.OCD + 1),
    Frequency_Jazz_Encoded / (original.OCD + 1),
    Frequency_Kpop_Encoded / (original.OCD + 1),
    Frequency_Latin_Encoded / (original.OCD + 1),
    Frequency_Lofi_Encoded / (original.OCD + 1),
    Frequency_Metal_Encoded / (original.OCD + 1),
    Frequency_Pop_Encoded / (original.OCD + 1),
    Frequency_RB_Encoded / (original.OCD + 1),
    Frequency_Rap_Encoded / (original.OCD + 1),
    Frequency_Rock_Encoded / (original.OCD + 1),
    Frequency_VideoGameMusic_Encoded / (original.OCD + 1)
FROM
    encoded_frequencies
JOIN
    cleaned_mxmh_survey AS original ON encoded_frequencies.survey_id = original.id;