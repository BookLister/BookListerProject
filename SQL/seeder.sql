USE booklister_db;

TRUNCATE genres;

INSERT INTO genres (genre)
VALUES ('Mystery'),
       ('Horror'),
       ('Adventure'),
       ('Crime'),
       ('Sci-fi'),
       ('Romance'),
       ('Fantasy'),
       ('Non-fiction'),
       ('Self-help'),
       ('Childrens');
