{% docs comment_id %}
Unique identifier for a comment left on an airport. Used by the incremental
model to detect which records are new.
{% enddocs %} 

{% docs member_nickname %}
Nickname of the member who wrote the comment. In the incremental model, null
values are replaced with `__UNKNOWN__`.
{% enddocs %}