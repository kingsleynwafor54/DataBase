-- Write a query in SQL to find the name and year of the movies
SELECT mov_title, mov_year
FROM movie;

--  Write a query in SQL to find the year when the movie American Beauty released.
SELECT mov_year
FROM movie
WHERE mov_title='American Beauty';

-- Write a query in SQL to find the movie which was released in the year 1999
SELECT mov_title
FROM movie
WHERE mov_year=1999;

--  Write a query in SQL to find the movies which was released before 1998
select mov_title
from movie
where mov_year=1998;
-- I collected the name of  reviewer and union them together with a union
-- Write  a query to return the name of reviewers and name of movies together in a single list
SELECT reviewer.rev_name
FROM reviewer
UNION
(SELECT movie.mov_title
FROM movie);

-- Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating
SELECT reviewer.rev_name
FROM reviewer, rating
WHERE rating.rev_id = reviewer.rev_id
AND rating.rev_stars>=7 
AND reviewer.rev_name IS NOT NULL;

-- Write a query in SQL to find the titles of all movies that have no ratings.
SELECT mov_title
FROM movie
WHERE mov_id NOT IN (
SELECT mov_id 
FROM rating
);
-- Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL value


select rev_id,rev_name
from reviewer
where rev_name is null;

-- Write a query in SQL to find the name of movie and director (first and last names) who directed a 
-- movie that casted a role for 'Eyes Wide Shut'.
SELECT dir_fname, dir_lname, mov_title
FROM  director 
NATURAL JOIN movie_direction
NATURAL JOIN movie
NATURAL JOIN movie_cast
WHERE role IS  NOT NULL
AND mov_title='Eyes Wide Shut';