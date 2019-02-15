use sakila;
select * FROM (SELECT last_name, COUNT(last_name) AS cnt FROM actor GROUP BY last_name) AS counting where cnt > 1;

SELECT * FROM film, rental, inventory where title = "Academy Dinosaur" && store_id = 1;

select * from film, rental where title = "Academy Dinosaur";

SELECT * FROM film f left JOIN rental r ON r.return_date = f.title;

select avg(length) from film;

select avg_length, `name` from film f join (select `name` , fc.category_id, film_id, avg(length) as avg_length from film_category fc join category c on fc.film_id = c.category_id group by category.category_id) as ct on f.film_id = ct.film_id;
