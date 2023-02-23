SELECT c.company_name AS customer,
       CONCAT(e.first_name, ' ', e.last_name) AS employee
FROM orders as o 
JOIN customers as c USING(customer_id)
JOIN employees as e USING(employee_id)
JOIN shippers as s ON o.ship_via = s.shipper_id
WHERE c.city = 'London'
 AND e.city = 'London'
 AND s.company_name = 'Speedy Express';
 
 SELECT product_name, units_in_stock, contact_name, phone
  FROM products
  JOIN categories USING(category_id)
  JOIN suppliers USING(supplier_id)
 WHERE category_name IN ('Beverages', 'Seafood')
   AND discontinued = 0
   AND units_in_stock < 20
 ORDER BY units_in_stock;
 
SELECT distinct contact_name, order_id
FROM customers
LEFT JOIN orders USING(customer_id)
WHERE order_id IS NULL
ORDER BY contact_name;
 