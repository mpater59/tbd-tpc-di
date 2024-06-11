select
    sk_customer_id,
    sk_account_id,
    sk_transaction_date,
    transaction_timestamp,
    description,
    count(*) cnt
from {{ ref('fact_cash_transactions') }}
group by sk_customer_id, sk_account_id, sk_transaction_date, transaction_timestamp, description
having cnt > 1