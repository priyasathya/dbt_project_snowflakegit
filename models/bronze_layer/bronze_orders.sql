{{
    config(
        materialized='incremental',
        unique_key ='id'
    )

}}

select * from 
{{source('landing','orders')}}

{% if is_incremental() %}

where CREATED_AT >(select coalesce(max(CREATED_AT),'1900-01-01') from {{ this }} )

{% endif %}