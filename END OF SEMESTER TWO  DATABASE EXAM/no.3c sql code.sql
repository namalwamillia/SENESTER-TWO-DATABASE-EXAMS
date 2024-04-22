CREATE TABLE Series (
    series_id INT PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(100)
);

CREATE TABLE Episodes (
    episode_id INT PRIMARY KEY,
    series_id INT,
    episode_number INT,
    title VARCHAR(255),
    FOREIGN KEY (series_id) REFERENCES Series(series_id)
);

CREATE TABLE Actors (
    actor_id INT PRIMARY KEY,
    actor_name VARCHAR(255),
    dob DATE
);

CREATE TABLE Directors (
    director_id INT PRIMARY KEY,
    director_name VARCHAR(255),
    nationality VARCHAR(100)
);

INSERT INTO Series(series_id, title, genre)
VALUES
      (1, 'UNRATE', 'crime'),
      (2, 'GNPCA', 'mistery'),
      (3, 'GST', 'adventureS');

INSERT INTO Episodes(episode_id, series_id, episode_number, title)
VALUES
      (1, 1, 101, 'Fallen Love'),
      (2, 2, 102, 'Twist of love'),
      (3, 3, 111, 'Blood sister');

INSERT INTO Actors(actor_id, actor_name, dob)
VALUES
      (1, 'MOSES', '1987-02-05'),
      (2, 'MILTON', '1890-05-08'),
      (3, 'TITUS', '1980-09-10');

INSERT INTO Directors(director_id, director_name, nationality)
VALUES
      (1, 'MULOKWA DAVID', 'CANADIAN'),
      (2, 'KOTAKI SAM', 'USA'),
      (3, 'AALINDA AARON', 'UK');

SELECT
      Series.series_id,
      Episodes.title AS episode_title,
      Series.genre
FROM
    Series
INNER JOIN Episodes
     ON Series.series_id = Episodes.series_id;
	 
	 
	 
-- 	no.3d (i) Primary Key:
-- The primary key is a column or a set of columns that uniquely identifies each row in a table.

-- (ii) secondary key
-- A secondary key is a column or a set of columns used to establish and enforce a link between the data in two tables


	 
