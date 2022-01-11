SELECT
    order_id
    , coalesce(sum(case when payment_method = 'bank_transfer' then amount end), 0) as bank_transfer_amount
    , coalesce(sum(case when payment_method = 'credit_card' then amount end), 0) as credit_card_amount
    , coalesce(sum(case when payment_method = 'gift_card' then amount end), 0) as gift_card_amount
    , coalesce(sum(case when payment_method = 'coupon' then amount end), 0) as coupon_amount
from {{ ref('stg_payments') }}
group by order_id