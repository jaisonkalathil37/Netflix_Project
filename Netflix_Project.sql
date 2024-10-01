--1. Count the Number of Movies vs TV Shows
SELECT type, COUNT(*) 
FROM netflix
GROUP BY type;

--2.The top 5 countries that have produced the most titles
SELECT country, COUNT(*) AS total_titles 
FROM netflix 
GROUP BY country 
ORDER BY total_titles DESC 
LIMIT 5;

--3.The distribution of content ratings
SELECT rating, COUNT(*) AS rating_count 
FROM netflix 
GROUP BY rating 
ORDER BY rating_count DESC;

--4.The top 10 genres
SELECT listed_in, COUNT(*) AS genre_count 
FROM netflix 
GROUP BY listed_in 
ORDER BY genre_count DESC 
LIMIT 10;

--5.The total number of titles by release year
SELECT release_year, COUNT(*) AS total_titles 
FROM netflix 
GROUP BY release_year 
ORDER BY release_year DESC
LIMIT 31;

--6.The directors who directed the most titles
SELECT director, COUNT(*) AS total_titles 
FROM netflix 
WHERE director IS NOT NULL AND director != '' 
GROUP BY director 
ORDER BY total_titles DESC 
LIMIT 5;

--7.Find the oldest titles by release year
SELECT title, release_year 
FROM netflix 
ORDER BY release_year ASC 
LIMIT 10;

--8.The top 5 cast members who appeared in the most titles
SELECT casts, COUNT(*) AS total_appearances 
FROM netflix 
WHERE casts IS NOT NULL AND casts != '' 
GROUP BY casts 
ORDER BY total_appearances DESC 
LIMIT 5;

--9.All titles that are available in the United States
SELECT title, country 
FROM netflix 
WHERE country LIKE '%United States%';


--10.The top 5 longest movies 
SELECT title, duration 
FROM netflix 
WHERE type = 'Movie' 
ORDER BY CAST(SPLIT_PART(duration, ' ', 1) AS INTEGER) DESC 
LIMIT 5;







