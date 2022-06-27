with Customer_Data_Raw as (
    select * from [jeff_schema].[Process Mining Data.csv]
),

/*  */
Customer_Data_Input as (
    select
        Customer_Data_Raw."Reject Cleared?"
        {{pm_utils.to_timestamp('customer_data_raw."Reject Cleared?"')}} as "Reject Cleared?"
        ,Customer_Data_Raw."OR Total Rejects"
        {{pm_utils.to_timestamp('customer_data_raw."OR Total Rejects"')}} as "OR Total Rejects"
        ,Customer_Data_Raw."OR ID"
        {{pm_utils.to_timestamp('customer_data_raw."OR ID"')}} as "OR ID"
        ,Customer_Data_Raw."PLI Prod Name"
        {{pm_utils.to_timestamp('customer_data_raw."PLI Prod Name"')}} as "PLI Prod Name"
        ,Customer_Data_Raw."Queue Name"
        {{pm_utils.to_timestamp('customer_data_raw."Queue Name"')}} as "Queue Name"
        ,Customer_Data_Raw."Queue Group Name"
        {{pm_utils.to_timestamp('customer_data_raw."Queue Group Name"')}} as "Queue Group Name"
        ,Customer_Data_Raw."Queue Occurrence Start Time"
        {{pm_utils.to_timestamp('customer_data_raw."Queue Occurrence Start Time"')}} as "Queue Occurrence Start Time"
        ,Customer_Data_Raw."Queue Occurrence End Time"
        {{pm_utils.to_timestamp('customer_data_raw."Queue Occurrence End Time"')}} as "Queue Occurrence End Time"
        ,Customer_Data_Raw."Queue Occurrence Completed"
        {{pm_utils.to_timestamp('customer_data_raw."Queue Occurrence Completed"')}} as "Queue Occurrence Completed"
        ,Customer_Data_Raw."Task Name"
        {{pm_utils.to_timestamp('customer_data_raw."Task Name"')}} as "Task Name"
        ,Customer_Data_Raw."Task Id"
        {{pm_utils.to_timestamp('customer_data_raw."Task ID"')}} as "Task ID"
        ,Customer_Data_Raw."Task Start Time"
        {{pm_utils.to_timestamp('customer_data_raw."Task Start Time"')}} as "Task Start Time"
        ,Customer_Data_Raw."Task End Time"
        {{pm_utils.to_timestamp('customer_data_raw."Task End Time"')}} as "Task End Time"
        ,Customer_Data_Raw."Product Req Type Desc"
        {{pm_utils.to_timestamp('customer_data_raw. "Product Req Type Desc"')}} as "Product Req Type Desc"
        ,Customer_Data_Raw."LOB Type Description DM"
        {{pm_utils.to_timestamp('customer_data_raw."LOB Type Description DM"')}} as "LOB Type Desctiption DM"
        ,Customer_Data_Raw."Sub Product Name MVG"
        {{pm_utils.to_timestamp('customer_data_raw."Sub Product Name MVG"')}} as "Sub Product Name MVG"
        ,Customer_Data_Raw."Queue Start Date To Queue End Date"
        {{pm_utils.to_timestamp('customer_data_raw."Queue Start Date To Queue End Date"')}} as "Queue Start Date To Queue End Date"
        ,Customer_Data_Raw."IR Total DDA Accounts"
        {{pm_utils.to_timestamp('customer_data_raw."IR Total DDA Accounts"')}} as "IR Total DDA Accounts"
        ,Customer_Data_Raw."Task Assigned To SID"
        {{pm_utils.to_timestamp('customer_data_raw."Task Assigned to SID"')}} as "Task Assigned to SID"
        ,Customer_Data_Raw."Task Assigned To Name"
        {{pm_utils.to_timestamp('customer_data_raw."Task Assigned To Name"')}} as "Task Assigned To Name"
        ,Customer_Data_Raw."Client Name"
        {{pm_utils.to_timestamp('customer_data_raw."Client Name"')}} as "Client Name"
        ,Customer_Data_Raw."CASID"
        {{pm_utils.to_timestamp('customer_data_raw."CASID"')}} as "CASID"

    from Customer_Data_Raw
)

select * from Customer_Data_Input
