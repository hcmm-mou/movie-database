# Movie Database

## Project Overview 
This repository contains a relational database designed to track, manage, and analyze historical film viewing habits and personal behavioural trends. The primary goal of the project is to gain data-driven insights into personal media consumption trends using metrics, and to serve as practices in refining and sustaining SQL querying, database design, and data analysis skills.

## Database Structure
* **Primary Entities:** movie, actors, director, and genre.
* **Bridge Tables:** movie_actor, director_movie, and movie_genre to handle cross-referencing without data duplication.
* **Personal Log Table:** my_ratings logs the my historical data, capturing my personal rating, the specific streaming platform or medium used to watch the film.

## Entity Relationship Diagram
![image alt](https://github.com/hcmm-mou/movie-database/blob/32fba0152c15ba7ae07fe291e32ddff1b18d5969/other/Movie_ERD.png)

## Query Outputs
[View Queries](https://github.com/hcmm-mou/movie-database/tree/3f3ef3f3c5671c4b830ca07e42742423e9eea5c5/analytics%20and%20queries)

### 1. My Top Rated Genres
* Top rated genres in the movie databse and number of films watched in the category 
  
![image alt](https://github.com/hcmm-mou/movie-database/blob/8fd9c6e138d1db8c18684012c0c663e81b51b1f0/other/top_rated_genre.png)

### 2. Most Watched Platform
* Most used platform for watching movies and total watch time for each platform

![image alt](https://github.com/hcmm-mou/movie-database/blob/8fd9c6e138d1db8c18684012c0c663e81b51b1f0/other/most_watched_platform.png)

### 3. Favourite Movie Era
* The number of movies watched in each decade and its average rating

![image alt](https://github.com/hcmm-mou/movie-database/blob/8fd9c6e138d1db8c18684012c0c663e81b51b1f0/other/favourite_movie_era.png)

### 4. Most Watched Actors
* Most watched actors and personal average ratings for their projects

![image alt](https://github.com/hcmm-mou/movie-database/blob/8fd9c6e138d1db8c18684012c0c663e81b51b1f0/other/most_watched_actors.png)

### 5. Rating Difference Between Personal & Average User Rating (Letterboxd)
* The rating gap and difference of my personal rating relative to the average user rating on letterboxd

![image alt](https://github.com/hcmm-mou/movie-database/blob/8fd9c6e138d1db8c18684012c0c663e81b51b1f0/other/my_rating_difference.png)

