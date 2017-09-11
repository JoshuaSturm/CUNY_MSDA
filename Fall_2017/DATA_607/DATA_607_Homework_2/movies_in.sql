DROP TABLE IF EXISTS movies;

CREATE TABLE movies 
(
  Movie varchar(100) NOT NULL,
  Friend int NOT NULL,
  Rating int NOT NULL
);

SELECT * FROM movies;

LOAD DATA LOCAL INFILE '/home/shua/Desktop/movies.csv' 
INTO TABLE movies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(Movie, Friend, Rating);

SELECT * FROM movies
