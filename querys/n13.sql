use sakila;

SELECT
	payment.*
from payment
join rental on payment.rental_id = rental.rental_id
where payment.rental_id is null