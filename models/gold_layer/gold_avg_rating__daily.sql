select 
    to_date(r.created_at) as review_date,
    r.product_id,
    p.product_name,
    avg(r.rating) as avg_rating
from
{{ref('bronze_reviews')}} r 
left join {{ref('silver_products')}} p
on r.product_id=p.id
group by all