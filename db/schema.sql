DROP TABLE IF EXISTS favourites;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL
);

CREATE TABLE movies (
    movie_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL
);

CREATE TABLE favourites (
    favourite_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    movie_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

