with 

source as (

    select * from {{ source('raw', 'raw_raw_gz_product') }}

),

renamed as (

    select
        products_id,
        CAST(purchSE_PRICE AS INT64) AS purchase_price


    from source

)

select * from renamed