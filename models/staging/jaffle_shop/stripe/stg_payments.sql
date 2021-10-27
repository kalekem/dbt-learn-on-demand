with payments as (
    select
    id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    {{cents_to_dollars('amount',2)}} as amount,
    --amount/100 as amount, --amount is stored in cents
    created
    from {{source('stripe', 'payment')}}
)
select * from payments