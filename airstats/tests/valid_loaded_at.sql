select *
from {{ ref('silver_airport_comments') }}
where loaded_at is null
   or loaded_at > current_timestamp()