/*What are the top 3 countries from which customers are originating?*/
SELECT C.country, COUNT(C.country_id) AS `Customers` FROM `country` AS C, `city` AS CI ,`address` AS AD 
WHERE AD.city_id = CI.city_id AND CI.country_id = C.country_id GROUP by c.country_id ORDER by COUNT(C.country_id) DESC LIMIT 3;