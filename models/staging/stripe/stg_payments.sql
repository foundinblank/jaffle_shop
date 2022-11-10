with payments as (
    
    select distinct
        -- I know we shouldn't do select distinct but the raw table seems to be duplicated on everything
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status as payment_status,
        amount / 100 as amount,
        created as created_at
    from {{ source('stripe', 'payment') }}

)

select * from payments