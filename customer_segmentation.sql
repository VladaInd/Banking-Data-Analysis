-- Customer Segmentation by Account Balance

select id,balance,
case
    when balance < 10000 then 'Low'
    when balance between 10000 and 100000 then 'Medium'
    when balance > 100000 then 'High'
        end as balance_segment
from banking_data_analysis
order by balance desc
