select
    sk_customer_id,
    sk_account_id,
    sk_transaction_date,
    count(*) cnt
from {{ ref('fact_cash_transactions') }}
where amount is null
group by sk_customer_id, sk_account_id
having cnt > 0