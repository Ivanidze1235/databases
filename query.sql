DROP DATABASE project_fedoroi2db;
CREATE DATABASE project_fedoroi2db;

USE project_fedoroi2db;

CREATE TABLE
    user (
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        username VARCHAR(255),
        level INT NOT NULL DEFAULT 0
    );

CREATE TABLE
    user_achievements(
        user_id INT NOT NULL,
        achievement VARCHAR(255) NOT NULL
    );

CREATE TABLE
    games_played (
        user_id INT NOT NULL,
        game_id INT NOT NULL,
        playtime INT NOT NULL DEFAULT 0,
        date_started DATETIME DEFAULT NOW() NOT NULL
    );

CREATE TABLE
    game (
        id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        title VARCHAR(255) NOT NULL,
        release_date DATETIME DEFAULT NOW() NOT NULL
    );
CREATE TABLE 
    game_genre (
        game_id INT NOT NULL,
        genre VARCHAR(255) NOT NULL
    );

CREATE TABLE
    develops (game_id INT NOT NULL, developer_id INT NOT NULL);

CREATE TABLE
    developer (
        id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        country_of_origin VARCHAR(255) NOT NULL,
        name VARCHAR(255) NOT NULL,
        date_established DATETIME DEFAULT NOW() NOT NULL
    );

CREATE TABLE
    anime_watched (user_id INT NOT NULL, anime_id INT NOT NULL);

CREATE TABLE
    anime (
        id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        title VARCHAR(255) NOT NULL,
        total_episodes INT NOT NULL,
        total_seasons INT NOT NULL
    );

CREATE TABLE 
    anime_genre (
        anime_id INT NOT NULL,
        genre VARCHAR(255) NOT NULL
    );

CREATE TABLE
    animates (anime_id INT NOT NULL, studio_id INT NOT NULL);

CREATE TABLE
    studio (
        id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        name VARCHAR(255),
        date_established DATETIME DEFAULT NOW() NOT NULL,
        country_of_origin VARCHAR(255)
    );

CREATE TABLE
    manga_read (user_id INT NOT NULL, manga_id INT NOT NULL);

CREATE TABLE
    manga (
        id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        title VARCHAR(255) NOT NULL,
        date_published DATETIME DEFAULT NOW() NOT NULL
    );

CREATE TABLE 
    manga_genre (
        manga_id INT NOT NULL,
        genre VARCHAR(255) NOT NULL
    );

CREATE TABLE
    writes (manga_id INT NOT NULL, author_id INT NOT NULL);

CREATE TABLE
    author (
        id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        first_name VARCHAR(255) NOT NULL,
        country_of_origin VARCHAR(255) NOT NULL,
        last_name VARCHAR(255) NOT NULL,
        date_of_birth DATETIME DEFAULT NOW() NOT NULL,
        date_of_death DATETIME,
        age DATETIME /* add code later*/
    );
    
-- insert games:

INSERT INTO
    game (title, release_date)
VALUES
    ("The Witcher", "2022-09-06"),
    ("Roblox", "2006-09-01"),
    ("Fortnite", "2017-07-21"),
    ("Minecraft", "2009-05-17"),
    ("Dead by Daylight", "2016-06-14");

-- insert users:

INSERT INTO
    user (username, level)
VALUES
    ("fedoroi2", 43),
    ("bilskim3", 25),
    ("kogutb2", 77),
    ("novak7", 27),
    ("miller42", 35),
    ("taylor19", 18),
    ("bennett3", 50),
    ("rojas88", 23),
    ("choi55", 41);
    
-- insert anime:
    
INSERT INTO
    anime (title, total_episodes, total_seasons)
VALUES
    ("My deer friend Nokotan", 12, 1),
    ("JoJo's Bizarre Adventure", 190, 5),
    ("Attack on titan", 87, 4),
    ("Naruto", 356, 10),
    ("DanDaDan", 24, 2);
    
-- insert manga:

INSERT INTO
    manga (title, date_published)
VALUES
    ("Berserk", '1990-9-30'),
    ("Berserk two", '1990-10-30'),
    ("Invincible", '2013-05-13'),
    ("One Punch Man", '1980-06-16'),
    ("Two Punch Man", '1990-07-25');

SELECT * FROM anime;
SELECT * FROM manga;