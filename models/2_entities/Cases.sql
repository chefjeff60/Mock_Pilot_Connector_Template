with Customer_Data_Raw as (
    select * from [jeff_schema].[Process Mining Data.csv]
),

/* 

*/
Cases as (
    select
        Customer_Data_Raw."OR ID" + '_' + Customer_Data_Raw."Client Name" as "Case ID"
    from Customer_Data_Raw
)

select * from Customer_Data_Input
