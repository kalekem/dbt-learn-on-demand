with customers as (

    select
        id as customer_id,
        first_name,
        last_name

<<<<<<< HEAD
    from {{ source('jaffle_shop', 'customers')}}
=======
    from raw.jaffle_shop.customers
>>>>>>> 51263835e1cdaed1f87f37319847000bd27d9596

)
select * from customers