with Customer_Data_Input as (
    select * from {{ ref('Customer_Data_Input') }}
),

/* 

*/
Cases as (
    select
        Customer_Data_Input."OR_ID" + '_' + Customer_Data_Input."Client_Name" as "Case ID"
    from Customer_Data_Input
)

select * from Cases
