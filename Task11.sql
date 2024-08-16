-- 1. Retrieve all unique first_name values from both the actor and customer tables.
(SELECT first_name FROM actor)
UNION
(SELECT first_name FROM customer);

-- 2. Retrieve the first_name values that are common between the actor and customer tables.
(SELECT first_name FROM actor)
INTERSECT
(SELECT first_name FROM customer);


-- 3. Retrieve the first_name values that are present in the actor table but not in the customer table.
(SELECT first_name FROM actor)
EXCEPT
(SELECT first_name FROM customer);

-- 4. Retrieve all first_name values from both the actor and customer tables, including duplicates.
(SELECT first_name FROM actor)
UNION ALL
(SELECT first_name FROM customer);