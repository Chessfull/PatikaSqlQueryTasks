-- 1. Select the 5 longest films from the film table where the title ends with 'n', ordered by length in descending order.
SELECT *
FROM film
WHERE title LIKE '%n'
ORDER BY length desc
LIMIT 5;

-- 2. Select the 5 shortest films (with lengths 6, 7, 8, 9, 10) from the film table where the title ends with 'n', ordered by length in ascending order. Exclude the first 5 results.
SELECT *
FROM film
WHERE title LIKE '%n'
ORDER BY length asc
OFFSET 5
LIMIT 5;

-- 3. Select the first 4 records from the customer table where store_id is 1, ordered by last_name in descending order.
SELECT *
FROM customer
WHERE store_id=1
ORDER BY last_name desc
LIMIT 4;