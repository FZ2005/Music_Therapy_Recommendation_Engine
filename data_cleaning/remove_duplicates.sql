##### Removing Duplicates
-- Check if there are duplicates in key columns 
/* Chose Timestamp, Age, Primary Streaming Service, Hours per day, While working, Instrumentalist, Composer, and Favorite genre
as the key columns to identify duplicates in the dataset.
*/
SELECT 
    Timestamp, 
    Age, 
    Primary_streaming_service, 
    Hours_per_day, 
    While_working, 
    Instrumental,
    Composer, 
    Fav_genre, 
    COUNT(*) as count
FROM 
    cleaned_mxmh_survey
GROUP BY 
    Timestamp, 
    Age, 
    Primary_streaming_service, 
    Hours_per_day, 
    While_working, 
    Instrumental, 
    Composer, 
    Fav_genre
HAVING 
    COUNT(*) > 1;

/* Since there are no output, there is no duplicate in the file.
*/