/*Find the names (first and last) of all the actors and costumers whose first name is the same as the first name of
the actor with ID 8. Do not return the actor with ID 8 himself. Note that you cannot use the name of the actor
with ID 8 as a constant (only the ID). There is more than one way to solve this question, but you need to
provide only one solution.*/
Select C.first_name , C.last_name
from `customer` AS C
where C.first_name= (SELECT first_name FROM actor WHERE actor_id = 8) 
UNION Select A.first_name,A.last_name FROM `actor` AS A WHERE A.actor_id <> 8 AND A.first_name = (SELECT first_name FROM actor WHERE actor_id = 8);