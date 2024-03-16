with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        ship_cost

    from source

)

select * from renamed

-- SELECT
-- FROM pro-contact-411806.gz_raw_data.raw_gz_ship 
--WHERE shipping_fee = shipping_fee_1
