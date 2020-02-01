-- 1. What query would you run to get all the customers inside city_id = 312? Your query should return customer first name, last name, email, and address.
SELECT customer.first_name, customer.last_name, address.city_id 
FROM customer 
JOIN address ON customer_id = city_id 
WHERE city_id = 312;

-- 1. What query would you run to get all the customers inside city_id = 312? Your query should return customer first name, last name, email, and address.
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name 
FROM film JOIN category ON category_id = film_id; 

-- 3. What query would you run to get all the films joined by actor_id=5? Your query should return the actor id, actor name, film title, description, and release year.
SELECT actor.actor_id, actor.first_name, actor.last_name, film.title, film.description, film.release_year 
FROM actor 
JOIN film ON film_id=actor_id

-- 4. What query would you run to get all the customers in store_id = 1 and inside these cities (1, 42, 312 and 459)? Your query should return customer first name, last name, email, and address.
SELECT customer.first_name, customer.last_name, customer.email, customer.store_id, address.city_id 
FROM customer 
JOIN address ON customer_id=address.address_id 
WHERE address.city_id IN (1, 42, 312, 459) AND customer.store_id = 1

-- 5. What query would you run to get all the films with a "rating = G" and "special feature = behind the scenes", joined by actor_id = 15? Your query should return the film title, description, release year, rating, and special feature. Hint: You may use LIKE function in getting the 'behind the scenes' part.
SELECT film.rating, film.special_features, film_actor.actor_id 
FROM film 
JOIN film_actor ON film_actor.film_id=film.film_id 
WHERE film.rating = 'G' AND film.special_features LIKE '%Behind the Scenes%'  AND film_actor.actor_id = 15

-- 6. What query would you run to get all the actors that joined in the film_id = 369? Your query should return the film_id, title, actor_id, and actor_name.
SELECT film_actor.actor_id, actor.first_name, actor.last_name, film.title, film.film_id 
FROM film JOIN film_actor ON film.film_id = film_actor.film_id 
JOIN actor ON film_actor.actor_id=actor.actor_id 
WHERE film.film_id = 369

-- 7. What query would you run to get all drama films with a rental rate of 2.99? Your query should return film title, description, release year, rating, special features, and genre (category).
SELECT film.rental_rate, film.title, film.description, film.release_year, film.rating, film.special_features, category.name 
FROM film 
JOIN film_category ON film.film_id = film_category.film_id 
JOIN category ON film_category.category_id = category.category_id 
WHERE rental_rate = 2.99 and name= 'Drama'

-- 8. What query would you run to get all the action films which are joined by SANDRA KILMER? Your query should return film title, description, release year, rating, special features, genre (category), and actor's first name and last name.
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name, actor.first_name, actor.last_name FROM film JOIN film_category ON film.film_id=film_category.film_id 
JOIN category ON film_category.category_id=category.category_id 
JOIN film_actor ON film_actor.film_id=film.film_id
JOIN actor ON actor.actor_id=film_actor.actor_id
WHERE actor.first_name = 'Sandra' and actor.last_name = 'Kilmer'