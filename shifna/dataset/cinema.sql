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




