-- combining tables
SELECT * 
FROM order_details o
LEFT JOIN menu_items m
	ON m.menu_item_id = o.item_id;
    
-- what were the most to least ordered items and their catagories
SELECT m.item_name, m.category, COUNT(o.order_details_id) AS num_purchases
FROM order_details o
LEFT JOIN menu_items m
	ON m.menu_item_id = o.item_id
GROUP BY m.item_name, category
ORDER BY num_purchases DESC;

-- what were the stop 5 most expensive orders
SELECT order_id, SUM(price) AS total_spend
FROM order_details o
LEFT JOIN menu_items m
	ON m.menu_item_id = o.item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;

-- view the details of highest spent orders and get any insights -- they pref italian
SELECT category, COUNT(item_id) as num_items
FROM order_details o
LEFT JOIN menu_items m
	ON m.menu_item_id = o.item_id
WHERE order_id = 440
GROUP BY category;
    
-- view details of top 5 highest spent orders. what are the insights? 
-- they still pref italian overall
SELECT order_id, category, COUNT(item_id) as num_items
FROM order_details o
LEFT JOIN menu_items m
	ON m.menu_item_id = o.item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675) 
GROUP BY order_id, category;