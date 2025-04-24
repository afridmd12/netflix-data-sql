-- DROP AND CREATE MAIN TABLE
DROP TABLE IF EXISTS netflix2;
CREATE TABLE netflix2 (
    show_id      VARCHAR(6),
    type         VARCHAR(10),
    title        VARCHAR(150),
    director     VARCHAR(208),
    casts        VARCHAR(1000),
    country      VARCHAR(150),
    date_added   VARCHAR(50),
    release_year INT,
    rating       VARCHAR(10),
    duration     VARCHAR(15),
    listed_in    VARCHAR(100),
    description  VARCHAR(250)
);

SELECT * FROM netflix2

-- 1. SELECT, WHERE, ORDER BY, GROUP BY
SELECT type, COUNT(*) AS total
FROM netflix2
WHERE release_year > 2015
GROUP BY type
ORDER BY total DESC;

-- 2. Aggregate Functions (SUM, AVG)
-- Average duration for movies (strip 'min' and cast to integer)
SELECT AVG(CAST(REGEXP_REPLACE(duration, '[^0-9]', '', 'g') AS INT)) AS avg_movie_duration
FROM netflix2
WHERE type = 'Movie';

--Sum function
SELECT SUM(CAST(REGEXP_REPLACE(duration, '[^0-9]', '', 'g') AS INT)) AS total_movie_duration_minutes
FROM netflix2
WHERE type = 'Movie';

-- 3. Subquery: Top country with most titles
SELECT title, country FROM netflix2
WHERE country = (
    SELECT country
    FROM netflix2
    GROUP BY country
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

-- 4. CREATE VIEW for titles after 2020
CREATE VIEW recent_titles AS
SELECT show_id, title, release_year, rating
FROM netflix2
WHERE release_year > 2020;

-- View usage
SELECT * FROM recent_titles;

-- 5. Indexes for performance optimization
CREATE INDEX idx_release_year ON netflix2(release_year);
CREATE INDEX idx_country ON netflix2(country);

-- 6. JOIN examples
-- Example LEFT JOIN with hypothetical 'directors' table
CREATE TABLE directors (
    name VARCHAR(150),
    nationality VARCHAR(100)
);

-- LEFT JOIN
SELECT n.title, n.director, d.nationality
FROM netflix2 n
LEFT JOIN directors d ON n.director = d.name;

-- INNER JOIN
SELECT n.title, n.director, d.nationality
FROM netflix2 n
INNER JOIN directors d ON n.director = d.name;

-- RIGHT JOIN
SELECT d.name AS director, d.nationality, n.title
FROM directors d
RIGHT JOIN netflix2 n ON n.director = d.name;

