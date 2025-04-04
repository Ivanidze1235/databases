DROP DATABASE project_fedoroi2db;
CREATE DATABASE project_fedoroi2db;
USE project_fedoroi2db;
CREATE TABLE user(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255),
    level INT NOT NULL DEFAULT 0
);
CREATE TABLE games_played(
    user_id INT NOT NULL,
    game_id INT NOT NULL,
    playtime INT NOT NULL DEFAULT 0,
    date_started DATETIME DEFAULT NOW() NOT NULL
);
CREATE TABLE game(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    release_date DATETIME DEFAULT NOW() NOT NULL
);
CREATE TABLE develops(
    game_id INT NOT NULL,
    developer_id INT NOT NULL
);
CREATE TABLE developer(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    date_established DATETIME DEFAULT NOW() NOT NULL
);

CREATE TABLE anime_watched(
    user_id INT NOT NULL,
    anime_id INT NOT NULL
);
CREATE TABLE anime(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    total_episodes INT NOT NULL,
    total_seasons INT NOT NULL
);
CREATE TABLE animates(
    anime_id INT NOT NULL,
    studio_id INT NOT NULL
);
CREATE TABLE studio(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    date_established DATETIME DEFAULT NOW() NOT NULL,
    country_of_origin VARCHAR(255)
);
CREATE TABLE manga_read(
    user_id INT NOT NULL,
    manga_id INT NOT NULL
);
CREATE TABLE manga(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    date_published DATETIME DEFAULT NOW() NOT NULL
);
CREATE TABLE writes(
    manga_id INT NOT NULL,
    author_id INT NOT NULL
);
CREATE TABLE author(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    date_of_birth DATETIME DEFAULT NOW() NOT NULL,
    date_of_death DATETIME,
    age DATETIME /* add code later*/
);