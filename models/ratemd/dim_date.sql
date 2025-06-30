{{
    config(
         materialized='table'
    )
}}


WITH date_cte AS (
    SELECT
    DISTINCT
    MD5(UPPER(TRIM(MODIFIED))),
    MODIFIED as MODIFIED
    FROM RAW_DATA
    WHERE MODIFIED IS NOT NULL
)
SELECT * FROM date_cte