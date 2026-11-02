{% docs __overview__ %}

# Airport Data Project

This project transforms raw airport data in Snowflake into clean, analysis-ready
tables. The raw layer consists of three source tables: `airports`, `airport_comments`
and `runways`.

## Silver layer

The silver tables clean and standardise those sources. `src_airport_comments`
is built from the `airport_comments` source and drops any record with a null or empty
comment body. The incremental model on top of it loads only new records, using
`comment_id` to compare against the highest `comment_id` already in the target,
replaces null member nicknames with `__UNKNOWN__`, and adds a `loaded_at`
timestamp. Runways relate to airports through `airport_ident`, and comments
likewise describe individual airports, so `airports` acts as the central
reference table that the other silver tables connect back to.

{% enddocs %}
