{{
    config(
         materialized='table'
    )
}}



WITH location_cte AS (
    SELECT
    DISTINCT
    MD5(UPPER(TRIM(LOCATION))),
    LOCATION as LOCATION
    FROM RAW_DATA
    WHERE LOCATION IS NOT NULL
)
SELECT * FROM location_cte
