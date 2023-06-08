use project_movie_database;
-- a)
select * from movies; 
-- b) 
select * from directors;
-- c)
select count(*) from movies;
-- d)
select * from directors where name in ('James Cameron', 'Luc Besson', 'John Woo');
-- e)
SELECT * FROM directors WHERE name LIKE 'Steven%';
-- f)
select count(*) from directors where gender=1;
-- g)
select name from directors where gender=1 order by id limit 10;
-- h)
select * from movies order by popularity desc limit 3;
-- i)
select * from movies order by revenue desc limit 3;
-- j)
select * from movies where release_date>='2000-01-01' order by vote_average desc limit 1;
-- k)
select m.title from movies m inner join directors d on d.id=m.director_id where d.name='Brenda Chapman';
-- l)
select d.name, count(m.director_id) as "No of Movies" from directors d inner join movies m on d.id=m.director_id group by d.name order by count(m.director_id) desc limit 1;
-- m)
select d.name, sum(m.revenue) from directors d inner join movies m on m.director_id=d.id group by d.name order by sum(m.revenue) desc limit 1;