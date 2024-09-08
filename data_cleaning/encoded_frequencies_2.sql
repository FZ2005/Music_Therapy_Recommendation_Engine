##### Create a table for encoded frequencies from 1 to 4
-- Different from create_interatcion_terms.sql (frequencies were encoded from 0 to 3)

-- Create a table for encoded frequencies
CREATE TABLE encoded_frequencies_2 (
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

-- Nnumerical encoding on the 16 Frequency columns, Importing the encoded frequencies to the new table
INSERT INTO encoded_frequencies_2 (
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
        WHEN Frequency_classical = 'Never' THEN 1
        WHEN Frequency_classical = 'Rarely' THEN 2
        WHEN Frequency_classical = 'Sometimes' THEN 3
        WHEN Frequency_classical = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_Classical_Encoded,
    CASE
        WHEN Frequency_country = 'Never' THEN 1
        WHEN Frequency_country = 'Rarely' THEN 2
        WHEN Frequency_country = 'Sometimes' THEN 3
        WHEN Frequency_country = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_Country_Encoded,
    CASE
        WHEN Frequency_EDM = 'Never' THEN 1
        WHEN Frequency_EDM = 'Rarely' THEN 2
        WHEN Frequency_EDM = 'Sometimes' THEN 3
        WHEN Frequency_EDM = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_EDM_Encoded,
    CASE
        WHEN Frequency_folk = 'Never' THEN 1
        WHEN Frequency_folk = 'Rarely' THEN 2
        WHEN Frequency_folk = 'Sometimes' THEN 3
        WHEN Frequency_folk = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_Folk_Encoded,
    CASE
        WHEN Frequency_gospel = 'Never' THEN 1
        WHEN Frequency_gospel = 'Rarely' THEN 2
        WHEN Frequency_gospel = 'Sometimes' THEN 3
        WHEN Frequency_gospel = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_Gospel_Encoded,
    CASE
        WHEN Frequency_hip_hop = 'Never' THEN 1
        WHEN Frequency_hip_hop = 'Rarely' THEN 2
        WHEN Frequency_hip_hop = 'Sometimes' THEN 3
        WHEN Frequency_hip_hop = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_HipHop_Encoded,
    CASE
        WHEN Frequency_jazz = 'Never' THEN 1
        WHEN Frequency_jazz = 'Rarely' THEN 2
        WHEN Frequency_jazz = 'Sometimes' THEN 3
        WHEN Frequency_jazz = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_Jazz_Encoded,
    CASE
        WHEN Frequency_K_pop = 'Never' THEN 1
        WHEN Frequency_K_pop = 'Rarely' THEN 2
        WHEN Frequency_K_pop = 'Sometimes' THEN 3
        WHEN Frequency_K_pop = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_Kpop_Encoded,
    CASE
        WHEN Frequency_latin = 'Never' THEN 1
        WHEN Frequency_latin = 'Rarely' THEN 2
        WHEN Frequency_latin = 'Sometimes' THEN 3
        WHEN Frequency_latin = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_Latin_Encoded,
    CASE
        WHEN Frequency_lofi = 'Never' THEN 1
        WHEN Frequency_lofi = 'Rarely' THEN 2
        WHEN Frequency_lofi = 'Sometimes' THEN 3
        WHEN Frequency_lofi = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_Lofi_Encoded,
    CASE
        WHEN Frequency_metal = 'Never' THEN 1
        WHEN Frequency_metal = 'Rarely' THEN 2
        WHEN Frequency_metal = 'Sometimes' THEN 3
        WHEN Frequency_metal = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_Metal_Encoded,
    CASE
        WHEN Frequency_pop = 'Never' THEN 1
        WHEN Frequency_pop = 'Rarely' THEN 2
        WHEN Frequency_pop = 'Sometimes' THEN 3
        WHEN Frequency_pop = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_Pop_Encoded,
    CASE
        WHEN Frequency_R_and_B = 'Never' THEN 1
        WHEN Frequency_R_and_B = 'Rarely' THEN 2
        WHEN Frequency_R_and_B = 'Sometimes' THEN 3
        WHEN Frequency_R_and_B = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_RB_Encoded,
    CASE
        WHEN Frequency_rap = 'Never' THEN 1
        WHEN Frequency_rap = 'Rarely' THEN 2
        WHEN Frequency_rap = 'Sometimes' THEN 3
        WHEN Frequency_rap = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_Rap_Encoded,
    CASE
        WHEN Frequency_rock = 'Never' THEN 1
        WHEN Frequency_rock = 'Rarely' THEN 2
        WHEN Frequency_rock = 'Sometimes' THEN 3
        WHEN Frequency_rock = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_Rock_Encoded,
    CASE
        WHEN Frequency_video_game_music = 'Never' THEN 1
        WHEN Frequency_video_game_music = 'Rarely' THEN 2
        WHEN Frequency_video_game_music = 'Sometimes' THEN 3
        WHEN Frequency_video_game_music = 'Very Frequently' THEN 4
        ELSE NULL
    END AS Frequency_VideoGameMusic_Encoded
FROM cleaned_mxmh_survey;