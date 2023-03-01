-- Write SELECT statements to output each of the following with a caption:
--
--     All albums in your table.
--     All albums released before 1980
--     All albums by Michael Jackson
--     After each SELECT add an UPDATE statement to:
--
--     Make all the albums 10 times more popular (sales * 10)
--     Move all the albums before 1980 back to the 1800s.
--     Change 'Michael Jackson' to 'Peter Jackson'

-- (`id`, `artist`, `album_name`, `release_date`, `sales`, `genre`)

SELECT *
FROM albums;

UPDATE albums
SET sales = sales * 10;

SELECT *
FROM albums
WHERE release_date < 1980;

UPDATE albums
SET release_date = release_date - 100;
WHERE release_date < 1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';