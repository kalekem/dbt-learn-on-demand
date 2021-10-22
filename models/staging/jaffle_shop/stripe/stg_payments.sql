with payments as (
    select
    id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount/100 as amount, --amount is stored in cents
    created,
    _batched_at
<<<<<<< HEAD
    from {{source('stripe', 'payment')}}
=======
    from raw.stripe.payment
>>>>>>> 51263835e1cdaed1f87f37319847000bd27d9596
)
select * from payments