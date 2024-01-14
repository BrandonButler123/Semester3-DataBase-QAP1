CREATE DATABASE library
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE public.authors
(
    author_id bigserial NOT NULL,
    author_name character varying(100) NOT NULL,
    PRIMARY KEY (author_id)
);

ALTER TABLE IF EXISTS public.authors
    OWNER to postgres;

CREATE TABLE public.books
(
    book_id serial NOT NULL,
    book_title character varying(200) NOT NULL,
    author_id bigint NOT NULL,
    PRIMARY KEY (book_id),
    CONSTRAINT fk_author_id FOREIGN KEY (author_id)
        REFERENCES public.authors (author_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS public.books
    OWNER to postgres;

INSERT INTO authors(author_name)
VALUES ('J.K Rowling'), ('Stephen King'), ('Agatha Christie');

INSERT INTO books(book_title, author_id) VALUES 
	('Harry Potter & the Sorcerers Stone', 1), 
	('Harry Potter & the Half-Blodd Prince', 1), 
	('It', 2),
	('Pet Sematary', 2),
	('Crooked House', 3),
	('Five Little Pigs', 3);

SELECT * FROM authors;
SELECT * FROM books;

