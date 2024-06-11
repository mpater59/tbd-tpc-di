select
    sk_customer_id,
    count(*) cnt
from {{ ref('dim_customer') }}
group by sk_customer_id
having cnt > 1