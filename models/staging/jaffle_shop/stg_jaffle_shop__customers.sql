with source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

customers as (

    select
        id as customer_id,
        name

    from source

)

select * from customers