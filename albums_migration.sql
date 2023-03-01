USE ymir_joseph;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(100) NOT NULL,
                        album_name  VARCHAR(100) NOT NULL,
                        release_date INT(4),
                        sales FLOAT(2),
                        genre CHAR(255),
                        PRIMARY KEY (id)
);

