select id,customer,order_date,delivery_date, delivery_date::date - order_date::date as days_late
from purchase_orders
where delivery_date::date - order_date::date > 5;