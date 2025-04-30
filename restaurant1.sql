-- what are the most to least expensive menu items?
SELECT item_name, price
FROM menu_items
ORDER BY price DESC;

-- how many menu items are there?
SELECT COUNT(*) 
FROM menu_items; 

-- what are the most to least expensive italian dishes?
SELECT item_name, price
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC; 

-- how many italian dishes are there?
SELECT COUNT(*) AS number_of_italian
FROM menu_items
WHERE category = 'Italian'; 

-- how many dishes in each category
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

-- average dish price for each category
SELECT category, AVG(price) AS avg_price
FROM menu_items
GROUP BY category;