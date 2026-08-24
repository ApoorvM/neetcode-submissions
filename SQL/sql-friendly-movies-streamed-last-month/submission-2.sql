-- Write your query below

select
distinct title
from
tv_program tv
join content c
on tv.content_id = c.content_id
and c.kids_content = 'Y' and (tv.program_date between '2020-06-01' and '2020-07-01' ) and c.content_type = 'Movies'