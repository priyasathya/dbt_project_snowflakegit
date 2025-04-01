select 
id,
created_at,
city,
state,
year(TO_date(BIRTH_DATE ,'YYYY-MM-DD')) as birth_year,
source as sales_channel
from
{{ref("bronze_users")}}