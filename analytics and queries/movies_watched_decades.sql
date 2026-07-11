-- the number of watched movies in each decade and my average ratings for it

SELECT FLOOR(a.release_date / 10) * 10 AS release_decade, COUNT(*) AS count, ROUND(AVG(b.rating), 2) AS my_avg_rating
FROM my_ratings b
JOIN movie a ON a.movie_id = b.movie_id
GROUP BY release_decade
ORDER BY release_decade DESC;

-- the number of movies watched in the last 2 years

SELECT a.release_date, ROUND(AVG(b.rating), 2) AS avg_year_rating, COUNT(*) AS total FROM movie a 
JOIN my_ratings b ON b.movie_id = a.movie_id
WHERE a.release_date IN (2024, 2025)
GROUP BY a.release_date;
