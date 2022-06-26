/*Get the top 3 customers who rented the highest number of movies within a given year.*/
SELECT C.first_name, C.last_name, year(R.rental_date) FROM `customer` AS C, `rental`AS R, `film` AS F 
WHERE C.customer_id = R.customer_id AND year(R.rental_date) = 2006  GROUP by c.customer_id LIMIT 3;