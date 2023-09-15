select

    {{ date_field('"ORDERDATE"') }} as order_date,

    {{ string_field('"ORDERNUMBER"') }} as order_number,
    {{ string_field('"STATUS"') }} as status,
    {{ string_field('"QTR_ID"') }} as qtr_id,
    {{ string_field('"MONTH_ID"') }} as month_id,
    {{ string_field('"YEAR_ID"') }} as year_id,
    {{ string_field('"PRODUCTLINE"') }} as product_line,
    {{ string_field('"MSRP"') }} as msrp,
    {{ string_field('"PRODUCTCODE"') }} as product_code,
    {{ string_field('"CUSTOMERNAME"') }} as customer_name,
    {{ string_field('"PHONE"') }} as phone,
    {{ string_field('"ADDRESSLINE1"') }} as address_line1,
    {{ string_field('"ADDRESSLINE2"') }} as address_line2,
    {{ string_field('"CITY"') }} as city,
    {{ string_field('"STATE"') }} as state,
    {{ string_field('"POSTALCODE"') }} as postal_code,
    {{ string_field('"COUNTRY"') }} as country,
    {{ string_field('"TERRITORY"') }} as territory,
    {{ string_field('"CONTACTLASTNAME"') }} as contact_lastname,
    {{ string_field('"CONTACTFIRSTNAME"') }} as contact_firstname,
    {{ string_field('"DEALSIZE"') }} as dealsize,

    {{ number_field('"QUANTITYORDERED"') }} as quantity_ordered,
    {{ numeric_field('"PRICEEACH"') }} as price_each,
    {{ number_field('"ORDERLINENUMBER"') }} as order_line_number,
    {{ numeric_field('"SALES"') }} as sales

from {{ source('sales_data', 'seed_sales_data_sample') }}
