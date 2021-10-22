with payments as (
    select
    id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount/100 as amount, --amount is stored in cents
    created,
    _batched_at
    from raw.stripe.payment
)
select * from payments