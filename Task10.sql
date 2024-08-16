-- 1. Write a LEFT JOIN query to display city names from the city table and corresponding country names from the country table.
SELECT city, country 
FROM city
LEFT JOIN country ON city.country_id=country.country_id;

-- 2. Write a RIGHT JOIN query to display payment_id along with the first_name and last_name from the customer table.
SELECT payment_id, first_name, last_name
FROM customer
RIGHT JOIN payment ON customer.customer_id=payment.customer_id;

-- 3. Write a FULL JOIN query to display rental_id along with the first_name and last_name from the customer table.
SELECT rental_id, first_name, last_name
FROM customer
FULL JOIN rental ON customer.customer_id=rental.customer_id;