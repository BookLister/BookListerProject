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

(1, 3, 'asdf', 19.99, 'New', 'very good book', 'adventure book'),
INSERT INTO ads (users_id, genres_id, title, price, conditions, description, summary)
VALUES
       (1, 5, 'asdf2', 19.99, 'New', 'very good book', 'adventure book'),
       (1, 7, 'asdf3', 19.99, 'New', 'very good book', 'adventure book');