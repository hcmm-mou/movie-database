-- most used platform and medium to watch movies

SELECT platform a, COUNT(*) AS count, SUM(runtime) AS total_watch_time FROM my_ratings a
LEFT JOIN movie b ON b.movie_id = a.movie_id
GROUP BY platform
ORDER BY count DESC;

-- does mediums or platforms influence my ratings?

SELECT platform a, COUNT(*) AS count, ROUND(AVG(rating)) AS avg_rating FROM my_ratings a
LEFT JOIN movie b ON b.movie_id = a.movie_id
GROUP BY platform
ORDER BY count DESC;