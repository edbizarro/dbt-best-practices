select

    {{ string_field('"ORDERNUMBER"') }} as order_number,
    {{ string_field('"CUSTOMERNAME"') }} as customer_name,
    {{ string_field('"PRODUCTLINE"') }} as product_line,
    {{ string_field('"CONTACTFIRSTNAME"') }} as contact_firstname,

    {{ number_field('"QUANTITYORDERED"') }} as quantity_ordered,
    {{ numeric_field('"PRICEEACH"') }} as price_each,

    {{ date_field('"ORDERDATE"') }} as order_date

from {{ ref('seed_sales_data_sample') }}
