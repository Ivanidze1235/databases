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
        last_name VARCHAR(255),
        date_of_birth DATETIME DEFAULT NOW(),
        date_of_death DATETIME DEFAULT NULL
    );
    
-- insert games:

INSERT INTO
    game (title, release_date)
VALUES
    ("The Witcher", "2022-09-06"),
    ("Roblox", "2006-09-01"),
    ("Fortnite", "2017-07-21"),
    ("Minecraft", "2009-05-17"),
    ("Dead by Daylight", "2016-06-14"),
    ("Cyberpunk 2077", "2020-12-10");
    
    -- insert game developer relations

INSERT INTO
    develops (game_id, developer_id)
VALUES
	(1, 1),
    (6, 1),
    (2, 4),
    (3, 3),
    (4, 2),
    (5, 5);
    -- insert developers

INSERT INTO
    developer (name, country_of_origin, date_established)
VALUES
    ("CD Projekt Red", "Poland", '2002-05-01'),
	("Mojang", "Sweden", '2009-06-01'),
    ("Epic Games", "United States", '1991-01-01'),
    ("Roblox Corporation", "United States", '2004-01-01'),
    ("Behaviour Interactive", "Canada", '1992-09-21');
    
-- insert game genres

INSERT INTO
	game_genre (game_id, genre)
VALUES
	(1, "Action"),
    (1, "Adventure"),
    (1, "RPG"),
    (1, "Open World"),
    (2, "Sandbox"),
    (2, "Creativity"),
    (3, "3rd person shooter"),
    (3, "Battle Royale"),
    (4, "Open World"),
    (4, "Exploration"),
    (4, "Sandbox"),
    (4, "Open World"),
    (4, "Survival"),
    (5, "Survival"),
    (5, "Multiplayer"),
    (6, "First Person Shooter"),
    (6, "RPG"),
    (6, "Open World");

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
    
    -- insert studios

INSERT INTO
    studio (name, date_established, country_of_origin)
VALUES
    ("Wit Studio", '2012-06-01', "Japan"),
	("David Production", '2007-09-01', "Japan"),
    ("Pierrot", '1979-05-01', "Japan"),
    ("MAPPA", '2011-06-14', "Japan"),
    ("Science Saru", '2013-02-04', "Japan");
    
-- insert anime-studio relations

INSERT INTO
    animates (anime_id, studio_id)
VALUES
    (1, 1),
	(2, 2),
    (4, 3),
    (3, 1),
    (3, 4),
    (5, 5);

-- insert anime genres

INSERT INTO
	anime_genre (anime_id, genre)
VALUES
	(1, "Comedy"),
    (2, "Adventure"),
    (2, "Fantasy"),
    (3, "Action"),
    (3, "Adventure"),
    (4, "Adventure"),
    (5, "Action"),
    (5, "Comedy");
    
-- insert manga:

INSERT INTO
    manga (title, date_published)
VALUES
    ("Berserk", '1990-09-30'),
    ("Berserk two", '1990-10-30'),
    ("Invincible", '2013-05-13'),
    ("One Punch Man", '1980-06-16'),
    ("Two Punch Man", '1990-07-25');
    


-- insert authors

INSERT INTO
	author (first_name, last_name, country_of_origin, date_of_birth, date_of_death)
VALUES
	("Kentaro", "Miura", "Japan", '1966-07-11', '2021-05-06'),
    ("Robert", "Kirkman", "United States", '1978-10-30', NULL),
    ("ONE", NULL, "Japan", NULL, NULL),
    ("Ivan", "Fedorov", "Ukraine", '2005-09-30', NULL),
    ("John", "Darksoul", "Japan", '2011-01-01', NULL);
    
-- insert author-manga relationships

INSERT INTO
	writes (manga_id, author_id)
VALUES
	(1, 1),
    (3, 2),
    (2, 1),
    (4, 3),
    (5, 3);

-- insert user-game relations

INSERT INTO
	games_played (user_id, game_id, playtime, date_started)
VALUES
	(1, 4, 10000, '2010-07-20'),
    (1, 3, 1, '2018-06-10'),
    (2, 5, 45, '2022-01-20'),
    (2, 1, 130, '2023-10-30'),
    (3, 2, 5000, '2020-03-28'),
    (3, 3, 300, '2019-04-10');

-- insert user-anime relations

INSERT INTO
	anime_watched (user_id, anime_id)
VALUES
	(1, 3),
    (1, 5),
    (2, 5),
    (2, 3),
    (3, 4),
    (3, 1),
    (5, 2),
    (6, 5);
    
-- insert user-manga relations

INSERT INTO
	manga_read (user_id, manga_id)
VALUES
	(1, 4),
    (2, 3),
    (2, 1),
    (3, 3),
    (4, 5),
    (7, 2),
    (5, 4),
    (6, 1);


-- insert manga genres

INSERT INTO
	manga_genre (manga_id, genre)
VALUES
	(1, "Fantasy"),
    (1, "Dark Fantasy"),
    (2, "Comedy"),
    (3, "Action"),
    (4, "Action"),
    (5, "Horror");

INSERT INTO
	user_achievements (user_id, achievement)
VALUES
	(1, "Gamer"),
    (2, "Nerd"),
    (3, "Wholesome 100"),
    (5, "Schadenfreude"),
    (7, "Gamer"),
    (9, "Wholesome 100");


-- SELECT * FROM author INNER JOIN writes ON author.id = author_id JOIN manga ON manga.id = manga_id;
-- SELECT username, level, playtime, title FROM user INNER JOIN games_played ON user_id = user.id JOIN game ON game_id = game.id;
-- SELECT username, title FROM user INNER JOIN anime_watched ON user_id = user.id JOIN anime ON anime_id = anime.id;
SELECT username, title FROM user INNER JOIN manga_read ON user_id = user.id JOIN manga ON manga_id = manga.id;
SELECT * FROM manga INNER JOIN manga_genre ON manga.id = manga_id;

SELECT * FROM user INNER JOIN user_achievements ON user.id = user_id;