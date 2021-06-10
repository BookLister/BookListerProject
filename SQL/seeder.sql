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


INSERT INTO ads (users_id, genres_id, title, price, conditions, description, summary, image_url)
VALUES (1, 3, 'cats', 19.99, 'well worn', 'blah', 'summamama', 'http://books.google.com/books/content?id=AbGHDQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_apialt="thecount"')


       (1, 3, 'asdf', 19.99, 'New', 'very good book', 'adventure book'),
       (1, 5, 'asdf2', 19.99, 'New', 'very good book', 'adventure book'),
       (1, 7, 'asdf3', 19.99, 'New', 'very good book', 'adventure book');