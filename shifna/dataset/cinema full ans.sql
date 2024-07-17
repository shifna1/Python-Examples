create database movies;
use movies;
create table movies2 (id int primary key );
select * from cinema;
select * from cinema where distribution_company_id;
select movie_title , imdb_rating , year_released from cinema;
select movie_title , box_office from cinema where box_office>300;
select movie_title , imdb_rating , year_released from cinema where movie_title='The Godfather';
select movie_title , imdb_rating , year_released from cinema where year_released >= 2001 and imdb_rating>=9;
select movie_title , imdb_rating , year_released from cinema order by year_released;
select language, count(movie_title) from cinema  group by language;
select language,year_released, count(movie_title) from cinema  group by language,year_released order by year_released;
select language,avg(budget) from cinema group by language having avg(budget)>50 order by language;
select movie_title,company_name from cinema join movies on cinema.distribution_company_id=movies.Reg_Num;




