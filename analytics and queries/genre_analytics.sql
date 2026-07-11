-- What is my favourite genre and the total watched?

SELECT a.genre_name AS genre, ROUND(AVG(rating)) AS avg_rating, COUNT(*) AS num_movies_rated FROM genre a
JOIN movie_genre b ON b.genre_id = a.genre_id
JOIN my_ratings c ON c.movie_id = b.movie_id
GROUP BY genre
ORDER BY avg_rating DESC;

-- What is my least favourite genre and the total watched?

SELECT a.genre_name AS genre, ROUND(AVG(rating)) AS avg_rating, COUNT(*) AS num_movies_rated FROM genre a
JOIN movie_genre b ON b.genre_id = a.genre_id
JOIN my_ratings c ON c.movie_id = b.movie_id
GROUP BY genre
ORDER BY avg_rating ASC;