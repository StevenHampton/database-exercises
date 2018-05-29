USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(

  id INT UNSIGNED AUTO_INCREMENT NOT NULL,
  artist VARCHAR (128),
  name VARCHAR (128),
  release_date SMALLINT UNSIGNED,
  sales FLOAT (6, 2),
  genre VARCHAR (128),
  PRIMARY KEY (id),
  UNIQUE (artist, name)
);
