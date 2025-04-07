select extract(year from order_date) as order_year, round(sum(discount * unit_price * quantity)::numeric, 2) as discount_amount from order_details
natural join products
natural join orders
group by order_year
order by order_year desc