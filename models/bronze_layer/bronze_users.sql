{{
    config(
       tags='contain_pii'
    )
}}

select * from 
{{source('landing','users')}}