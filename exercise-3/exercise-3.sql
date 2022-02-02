-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT country.country, AVG(payment.amount) from country
INNER JOIN city ON country.country_id = city.country_id
INNER JOIN address ON city.city_id = address.city_id
INNER JOIN customer on address.address_id = customer.address_id
INNER JOIN payment on customer.customer_id = payment.customer_id
GROUP BY country.country
ORDER by avg desc
LIMIT 10;
