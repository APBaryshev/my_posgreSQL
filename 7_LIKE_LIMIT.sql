SELECT last_name, first_name
FROM employees
WHERE first_name LIKE '%n'

SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'B%'

SELECT product_name, unit_price
FROM products
WHERE discontinued <> 1
ORDER BY unit_price DESC
LIMIT 9