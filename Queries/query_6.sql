/*Find all the film categories in which there are between 55 and 65 films. Return the names of these categories
and the number of films per category, sorted by the number of films. If there are no categories between 55 and
65, return the highest available counts.*/
SELECT C.name AS `category Name`,COUNT(FC.category_id) AS `Number`
FROM `category` C, `film_category` AS FC
WHERE C.category_id = FC.category_id
GROUP BY FC.category_id
HAVING IF(COUNT(name) >65 AND COUNT(name)<55 ,
          COUNT(name) > 65 ,
          COUNT(name) BETWEEN 55 AND 65)
ORDER BY COUNT(FC.category_id) DESC;