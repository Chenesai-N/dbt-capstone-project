select *
from {{ ref('src_airport_comments') }}
where comment_body is null
   or trim(comment_body) = ''