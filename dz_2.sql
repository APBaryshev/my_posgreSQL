SELECT *
FROM orders
WHERE ship_country IN ('France', 'Austria', 'Spain');

SELECT *
FROM orders
ORDER BY required_date DESC, shipped_date ASC;

SELECT MAX(unit_price)
FROM products
WHERE units_in_stock > 30;

SELECT AVG(shipped_date - order_date)
FROM orders
WHERE ship_country = 'USA';

SELECT SUM(units_in_stock * unit_price)
FROM products
WHERE discontinued <>1

