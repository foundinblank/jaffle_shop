with customers as (
    
    select distinct
        -- I know we shouldn't do select distinct but the raw table seems to be duplicated on everything
        id as customer_id,
        first_name,
        last_name

    from {{ source('jaffle_shop', 'customers') }}
)

select * from customers
