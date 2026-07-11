-- most watched actors and my average ratings for their films

SELECT a.actor_name, COUNT(c.rating) AS total_watched, ROUND(AVG(c.rating)) AS avg_rating FROM actors a
JOIN movie_actor b ON b.actor_id = a.actor_id
JOIN my_ratings c ON c.movie_id = b.movie_id
GROUP BY a.actor_name
ORDER BY total_watched DESC;

