-- Write an INNER JOIN query to display city names from the city table and corresponding country names from the country table.
SELECT city.city, country.country 
FROM city
INNER JOIN country ON city.country_id=country.country_id
ORDER BY country.country ASC;

-- Write an INNER JOIN query to display payment_id along with the first_name and last_name from the customer table.
SELECT payment_id, first_name, last_name
FROM customer
INNER JOIN payment ON customer.customer_id=payment.customer_id;

-- Write an INNER JOIN query to display rental_id along with the first_name and last_name from the customer table.
SELECT rental_id, first_name, last_name
FROM customer
INNER JOIN rental ON customer.customer_id=rental.customer_id;