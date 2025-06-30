{{
    config(
         materialized='table'
    )
}}



WITH specialty_cte AS (
    SELECT
    DISTINCT
    MD5(UPPER(TRIM(SPECIALTY_NAME))),
    SPECIALTY_NAME as SPECIALTY_NAME 
    FROM RAW_DATA
    WHERE SPECIALTY_NAME IS NOT NULL 
    
)
SELECT * FROM specialty_cte