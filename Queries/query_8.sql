/*Get the total and average values of rentals per month per year per store.*/
SELECT SUM(P.amount) AS Total, AVG(P.amount) AS Average, MONTH(P.payment_date), year(P.payment_date),I.store_id FROM `payment` AS P,
`rental` AS R, `inventory` AS I WHERE P.rental_id = R.rental_id and 
R.inventory_id = I.inventory_id GROUP BY MONTH(P.payment_date), year(P.payment_date), I.store_id;