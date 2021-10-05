 WITH total_amount_paid_cte AS (SELECT  
	customer.customer_id,
	customer.first_name, 
	customer.last_name,
	country.country,
	city.city,
	ROUND(sum(payment.amount),2) as total_amount
FROM
	customer
	JOIN payment ON customer.customer_id = payment.customer_id
	JOIN address ON customer.address_id = address.address_id
	JOIN city ON address.city_id = city.city_id
	JOIN country ON city.country_id = country.country_id
WHERE
	city.city IN ('Balikesir', 'Binzhou', 'Bhimavaram', 'Carmen', 'Battambang', 'Amersfoort', 'Baha Blanca', 'Bag', 'Al Qadarif', 'Bydgoszcz')
GROUP BY 
	customer.customer_id,
	customer.first_name, 
	customer.last_name,
	country.country,
	city.city
ORDER BY
    sum(payment.amount) DESC
LIMIT 5)

SELECT ROUND(AVG(total_amount),2) AS average
	FROM total_amount_paid_cte
