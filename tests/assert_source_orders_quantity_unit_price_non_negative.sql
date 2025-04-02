{{
    config(
        severity='warn'
    )
}}


select
*
from
{{source('landing','orders')}}
where quantity<0 OR unit_price<0