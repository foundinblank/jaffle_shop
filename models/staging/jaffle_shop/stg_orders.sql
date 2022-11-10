with orders as (
    
    select distinct
        -- I know we shouldn't do select distinct but the raw table seems to be duplicated on everything
        id as order_id,
        user_id as customer_id,
        order_date,
        status as order_status

    from {{ source('jaffle_shop', 'orders') }}
)

select * from orders
