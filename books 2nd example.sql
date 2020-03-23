    DROP DATABASE IF EXISTS my_book_shop;
    CREATE DATABASE my_book_shop;
    USE my_book_shop; 
     
    CREATE TABLE books 
        (
            book_id INT NOT NULL AUTO_INCREMENT,
            title VARCHAR(100),
            released_year INT,
            stock_quantity INT,
            pages INT,
            PRIMARY KEY(book_id),
            author_id int,
            foreign key (author_id) refernces authors.id
        );
        create TABLE authors(
            id int primary key AUTO_INCREMENT;
            author_fname VARCHAR(100),
            author_lname VARCHAR(100)
            );
     
    INSERT INTO books (title,released_year, stock_quantity, pages)
    VALUES
    ('The Namesake', 2003, 32, 291),
    ('Norse Mythology',2016, 43, 304),
    ('American Gods', 2001, 12, 465),
    ('Interpreter of Maladies', 1996, 97, 198),
    ('A Hologram for the King: A Novel', 2012, 154, 352),
    ('The Circle', 2013, 26, 504),
    ('The Amazing Adventures of Kavalier & Clay', 2000, 68, 634),
    ('Just Kids',  2010, 55, 304),
    ('A Heartbreaking Work of Staggering Genius', 2001, 104, 437),
    ('Coraline',  2003, 100, 208),
    ('What We Talk About When We Talk About Love: Stories', 1981, 23, 176),
    ("Where I'm Calling From: Selected Stories", 1989, 12, 526),
    ('White Noise',  1985, 49, 320),
    ('Cannery Row',  1945, 95, 181),
    ('Oblivion: Stories', 2004, 172, 329),
    ('Consider the Lobster',  2005, 92, 343);



        INSERT INTO authors (author_fname, author_lname)
    VALUES
    ('Jhumpa', 'Lahiri'),
    ( 'Neil', 'Gaiman'),
    ( 'Neil', 'Gaiman'),
    ('Jhumpa', 'Lahiri'),
    ('Dave', 'Eggers'),
    ('Dave', 'Eggers'),
    ('Michael', 'Chabon'),
    ('Patti', 'Smith'),
    ('Dave', 'Eggers'),
    ( 'Neil', 'Gaiman'),
    ('Raymond', 'Carver'),
    ('Raymond', 'Carver'),
    ('Don', 'DeLillo'),
    ('John', 'Steinbeck'),
    ('David', 'Foster Wallace'),
    ('David', 'Foster Wallace');

2. Then source that file
source book_data.sql 

3. Now check your work:

    DESC books;
    SELECT * FROM books; 

        INSERT INTO books
        (title, author_fname, author_lname, released_year, stock_quantity, pages)
        VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
               ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
               ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
     
     
    SELECT title FROM books;
    