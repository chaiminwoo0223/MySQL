CREATE DATABASE netflix_db;

USE netflix_db;

CREATE TABLE movie(
movie_id INT, 
movie_title VARCHAR(30),
movie_director VARCHAR(20),
movie_star VARCHAR(20),
movie_script LONGTEXT,
movie_film LONGBLOB
)