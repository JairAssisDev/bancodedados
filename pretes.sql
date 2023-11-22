-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.
  
SELECT c.first_name, c.last_name ,o.item from Customers as c 
join orders as o on c.customer_id = o.customer_id
where c.country in ('USA','UAE'); 


select c.first_name,c.last_name,o.item from Customers as c
left join  orders as o on c.customer_id = o.customer_id
where c.country in ('USA','UAE'); 

select c.first_name, c.last_name,sum(o.amount)
from Customers as c
join Orders as o
on c.customer_id=o.customer_id
group by c.customer_id;

select c.first_name, c.last_name,sum(o.amount)
from Customers as c
join Orders as o
on c.customer_id=o.customer_id
group by c.customer_id
having sum(o.amount) >500;



select c.first_name,c.last_name,count(s.status)
from Customers as c
join  Shippings as s on c.customer_id = s.customer
group by c.customer_id
having s.status like 'Pending';




select c.country, sum(o.amount)
from Customers as c
join Orders as o
on c.customer_id=o.customer_id
group by o.order_id
having o.item like 'Keyboard' ;


select c.first_name,c.last_name, sum(o.amount)
from Customers as c
join orders as o on c.customer_id = o.customer_id
group by c.customer_id
having c.country like 'UK';

