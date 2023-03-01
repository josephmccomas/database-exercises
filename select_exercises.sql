-- The name of all albums by Pink Floyd.
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- The genre for Nevermind
-- Which albums were released in the 1990s
-- Which albums had less than 20 million certified sales
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

-- (`id`, `artist`, `album_name`, `release_date`, `sales`, `genre`)

SELECT artist, album_name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date
FROM albums
WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre
FROM albums
WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT *
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT *
FROM albums
Where sales < 20.000000;

SELECT *
FROM albums
WHERE genre =  'rock';