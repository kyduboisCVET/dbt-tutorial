SELECT 
      id as payment_id
    , orderid as order_id
    , paymentmethod as payment_method
    , status
    , amount
    , created
    , "_batched_at"
FROM stripe.payment
