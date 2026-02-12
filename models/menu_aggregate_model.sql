{{ config(materialized='table') }}

with source_data as (

SELECT 
    MENU_TYPE, 
    AVG(COST_OF_GOODS_USD) AS AVERAGE_COST,
    AVG(SALE_PRICE_USD) AS AVERAGE_SALE_PRICE
FROM MENU
GROUP BY MENU_TYPE

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
