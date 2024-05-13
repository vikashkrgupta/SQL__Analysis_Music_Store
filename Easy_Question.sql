
Question Sets :-
use `music-das`;

Q1: Who is the the senior most employee based on job title?

SELECT *FROM employee
ORDER BY levels desc
limit 1 ;

Ques 2 : Which countries have the most invoices?

SELECT COUNT(*) as c, billing_country 
from invoice
group by billing_country
order by c desc;

Ques 3: what are top 3 values of total invoices?

SELECT total FROM invoice
order by total desc
limit 3; 

Ques 4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. Write a query that returns one city that has the highest sum of invoice totals.
		Return both the city name & sum of the  invoice total?
        
select sum(total) as invoice_total , billing_city 
from invoice
GROUP BY billing_city
ORDER BY invoice_total desc;

Ques 5: Who is the best customer? The customer who has spent the most money will be declared the best customer. 
		Write a query that returns the person who has spent the most money?
        

SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(invoice.total) as total
FROM customer
JOIN  invoice on customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name
ORDER BY total desc
limit 1


