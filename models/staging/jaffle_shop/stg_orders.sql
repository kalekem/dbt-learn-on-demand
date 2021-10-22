with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
<<<<<<< HEAD
        status, 
        _etl_loaded_at

    from {{ source('jaffle_shop', 'orders')}}
=======
        status

    from raw.jaffle_shop.orders
>>>>>>> 51263835e1cdaed1f87f37319847000bd27d9596

)
select * from orders