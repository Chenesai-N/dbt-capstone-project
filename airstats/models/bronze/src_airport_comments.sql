{{
    config(
        materialized='ephemeral',
    )
}}

WITH raw_airport_comments AS (
    SELECT * FROM {{ source('airstats', 'airport_comments') }}
)
SELECT
    id AS comment_id,
    airport_ident,
    date AS comment_timsestamp,
    member_nickname,
    subject AS comment_subject,
    body AS comment_body
FROM raw_airport_comments