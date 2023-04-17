use sql_store;
show tables;

select count(*) as records from orders where order_date>'2019-01-01';
show tables;
select * from products;
select * from products where quantity_in_stock in ( 49,38,72);

select * from customers where points between 2000 and 4000;

select * from customers where birth_date between '1990/01/01' AND '2000/01/01';

select * from customers where last_name like 'brush%';

select * from customers where last_name like '%y';

select * from customers where last_name like 'b____y';

select * from customers where (address like '%TRAIL%' or address like '%AVENUE%');

select * from customers where phone like '%9' ;


select * from customers;
