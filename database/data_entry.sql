-- =====================================================================
-- STEP 1: CONFIGURE MOVIE DATA (Change these values for each new movie)
-- =====================================================================
SET @input_movie_id = 5052;
SET @input_title = 'Supergirl';
SET @input_release_date = 2026;
SET @input_country = 'USA';
SET @input_runtime = 108;
SET @input_language = 'ENG';
SET @input_imdb = 6.1;
SET @input_letterboxd = 3.1;

-- CONFIGURE DIRECTOR DATA 
SET @input_director_id = 1051;
SET @input_director_name = 'Craig Gillespie';

-- CONFIGURE MY RATING DATA
SET @input_row_id = 52;
SET @input_rating = 75;
SET @input_platform = 'IMAX';
SET @input_watched_date = '2026-06-24';

-- CONFIGURE ACTOR DATA
-- 1 --------------------- 
SET @input_actor_id_1 = 4010200;
SET @input_actor_1 = 'Milly Alcock';
-- 2 --------------------- 
SET @input_actor_id_2 = 4010201;
SET @input_actor_2 = 'Eve Ridley';
-- 3 ---------------------
SET @input_actor_id_3 = 4010202;
SET @input_actor_3 = 'Matthias Schoenaerts';
-- 4 ---------------------
SET @input_actor_id_4 = 4010203;
SET @input_actor_4 = 'Jason Momoa';
-- 5 ---------------------
SET @input_actor_id_5 = 4010204;
SET @input_actor_5 = 'David Krumholtz';
-- 6 ---------------------
SET @input_actor_id_6 = 4010205;
SET @input_actor_6 = 'Emily Beecham';
-- -----------------------

-- =====================================================================
-- INSERT MAIN METADATA 
-- =====================================================================
INSERT INTO movie (movie_id, title, release_date, country, runtime, language, imdb_rating, letterboxd_rating)
VALUES (@input_movie_id, @input_title, @input_release_date, @input_country, @input_runtime, @input_language, @input_imdb, @input_letterboxd);

INSERT INTO director (director_id, director_name)
VALUES (@input_director_id, @input_director_name);

INSERT INTO director_movie (director_id, movie_id)
VALUES (@input_director_id, @input_movie_id);

INSERT INTO my_ratings (row_id, movie_id, rating, platform, watched_date)
VALUES (@input_row_id, @input_movie_id, @input_rating, @input_platform, @input_watched_date);

-- INSERT ACTOR DATA
SELECT * FROM actors; #search actors in db before adding

-- 1
INSERT INTO actors (actor_id, actor_name)
VALUES (@input_actor_id_1, @input_actor_1);
INSERT INTO movie_actor (actor_id, movie_id)
VALUES (@input_actor_id_1, @input_movie_id);
-- 2
INSERT INTO actors (actor_id, actor_name)
VALUES (@input_actor_id_2, @input_actor_2);
INSERT INTO movie_actor (actor_id, movie_id)
VALUES (@input_actor_id_2, @input_movie_id);
-- 3
INSERT INTO actors (actor_id, actor_name)
VALUES (@input_actor_id_3, @input_actor_3);
INSERT INTO movie_actor (actor_id, movie_id)
VALUES (@input_actor_id_3, @input_movie_id);
-- 4
INSERT INTO actors (actor_id, actor_name)
VALUES (@input_actor_id_4, @input_actor_4);
INSERT INTO movie_actor (actor_id, movie_id)
VALUES (@input_actor_id_4, @input_movie_id);
-- 5
INSERT INTO actors (actor_id, actor_name)
VALUES (@input_actor_id_5, @input_actor_5);
INSERT INTO movie_actor (actor_id, movie_id)
VALUES (@input_actor_id_5, @input_movie_id);
-- 6
INSERT INTO actors (actor_id, actor_name)
VALUES (@input_actor_id_6, @input_actor_6);
INSERT INTO movie_actor (actor_id, movie_id)
VALUES (@input_actor_id_6, @input_movie_id);


-- =====================================================================
-- INSERT REMAING MOVIE DATA (GENRE / OTHER ACTORS)
-- =====================================================================
SELECT * FROM genre; #select from genre list

INSERT INTO movie_genre (genre_id, movie_id)
VALUES (602, @input_movie_id);
INSERT INTO movie_genre (genre_id, movie_id)
VALUES (605, @input_movie_id);
INSERT INTO movie_genre (genre_id, movie_id)
VALUES (6011, @input_movie_id);

-- INSERT REMAINING ACTOR DATA 
SELECT * FROM actors;
INSERT INTO movie_actor (actor_id, movie_id)
VALUES (401087, @input_movie_id);




