SELECT *
FROM da_sales.customers;

SELECT count(birthyear) as birthyear_count, count(city) as city_count
FROM da_sales.customers;

SELECT *
FROM da_sales.purchases;

SELECT prodid, custid, count(*) 
FROM da_sales.purchases
GROUP BY prodid, custid;

SELECT dt, sum(price) 
FROM da_readychef.meals
WHERE dt >= '2013-10-01' AND dt < '2013-11-01'
GROUP BY dt
ORDER BY dt 
LIMIT 100;

SELECT max(price)
FROM da_readychef.meals
GROUP BY dt
LIMIT 100
