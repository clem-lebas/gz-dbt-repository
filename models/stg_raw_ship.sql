with

source as (

    select * from {{ source ('raw', 'ship') }}

), 

renamed as (

    select
        orders_ids_id,
        shipping_fee,
        logCost,
        ship_cost,
    from source

)

select * from renamed