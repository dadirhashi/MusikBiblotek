DROP TABLE IF EXISTS Track;
DROP TABLE IF EXISTS Album;
DROP TABLE IF EXISTS Artist;
CREATE TABLE Artist (
    Id INTEGER PRIMARY KEY,
    Name TEXT NOT NULL
);


CREATE TABLE Album (
    Id INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    ReleaseYear INTEGER,
    ArtistId INTEGER NOT NULL,
    FOREIGN KEY (ArtistId) REFERENCES Artist(Id)
);


CREATE TABLE Track (
    Id INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    Duration INTEGER, -- sekunder
    AlbumId INTEGER NOT NULL,
    FOREIGN KEY (AlbumId) REFERENCES Album(Id)
);

INSERT INTO Artist (Id, Name) VALUES
(1, 'The Beatles'),
(2, 'Taylor Swift');

INSERT INTO Album (Id, Title, ReleaseYear, ArtistId) VALUES
(1, 'Abbey Road', 1969, 1),
(2, '1989', 2014, 2);

INSERT INTO Track (Id, Title, Duration, AlbumId) VALUES
(1, 'Come Together', 259, 1),
(2, 'Something', 182, 1),
(3, 'Blank Space', 231, 2),
(4, 'Style', 230, 2);


SELECT * FROM Album WHERE ReleaseYear = 2014;