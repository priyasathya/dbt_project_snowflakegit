select 
id ,
TO_DATE(CREATED_AT::TIMESTAMP::DATE) as order_date,
user_id,
product_id,
quantity,
unit_price,
quantity * unit_price as order_amount
from 
{{ref("bronze_orders")}}