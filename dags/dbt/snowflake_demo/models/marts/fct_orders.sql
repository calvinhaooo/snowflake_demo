SELECT 
    orders.*,
    summary.gross_item_sales_amount,
    summary.item_discount_amount
FROM 
    {{ ref('stg_tpch_orders') }} AS orders
JOIN
    {{ ref('int_order_items_summary') }} AS summary
ON orders.order_key = summary.order_key
ORDER BY 
    orders.order_date