use project_customer_segmentation ;
desc customer;
show tables;

select *
from customer;

select count(customer_id)
from customer;

select gender ,count(*) as tot_count , sum(quantity) as tot_quant
from customer
group by gender ;

select	gender , sum(quantity) as tot_product
from customer
group by gender
limit 2;

select gender ,  sum(price * quantity) as revenue
from customer 
group by gender 
order by revenue desc;

select distinct category
from customer;

select  category , sum(quantity) as tot_productsold
from customer 
group by category
order by  tot_productsold desc ;

select category , gender ,count(gender) as tot_gender , sum(price * quantity) as revenue
from customer 
group by category ,gender ;

select 
 case
  when age between 18 and 25 then '18-25'
  when age between 26 and 35 then '25-35'
  when age between 36 and 45 then '36-45'
  when age between 46 and 55 then '46-55'
	else'60+'
end as age_group,
sum(quantity ) as tot_qua
from customer
 group by age_group;
 
 SELECT 
  CASE 
    WHEN age BETWEEN 18 AND 25 THEN '18-25'
    WHEN age BETWEEN 26 AND 35 THEN '26-35'
    WHEN age BETWEEN 36 AND 45 THEN '36-45'
    WHEN age BETWEEN 46 AND 60 THEN '46-60'
    ELSE '60+'
  END AS age_group,
  SUM(price*quantity) AS total_products
FROM customer
GROUP BY age_group
ORDER BY total_products DESC;	

select payment_method , sum(quantity)
from customer
group by payment_method;

select payment_method , category, sum(price * quantity) as revenue
from customer
group by payment_method , category;

select payment_method , age ,sum(price * quantity)
from customer
group by payment_method , age;

select payment_method , age ,sum(price * quantity)
from customer
where payment_method = 'credit card'
group by payment_method , age;

select payment_method , count(quantity)
from customer
group by payment_method ;

SELECT payment_method, COUNT(*) AS total_transactions
FROM customer
GROUP BY payment_method
ORDER BY total_transactions DESC;




