-- The rating gap between my ratings and the average ratings of movie platform users
-- since my rating scale is different (out of 100), my ratings were converted to the scale used in Letterboxd which is out of 5 

SELECT a.title, b.rating AS my_rating, a.letterboxd_rating, ROUND(ABS(b.rating/10/2 - a.letterboxd_rating), 2) AS rating_difference
FROM movie a
JOIN my_ratingS b ON b.movie_id = a.movie_id
ORDER BY rating_difference DESC
LIMIT 20;

