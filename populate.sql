-- Database: demo_circleci

-- DROP DATABASE demo_circleci;

CREATE DATABASE demo_circleci
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
	TEMPLATE template0;

\c demo_circleci

-- Table: public."User"

-- DROP TABLE public."User";

CREATE TABLE public."User"
(
    id SERIAL NOT NULL,
    nama VARCHAR(20),
    email VARCHAR(25),
    CONSTRAINT "User_pkey" PRIMARY KEY (id),
    CONSTRAINT unique_email UNIQUE (email)

)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."User"
    OWNER to postgres;

INSERT INTO public."User"(
	nama, email)
	VALUES ('aaaa', 'aaaa@gmail.com');
	
INSERT INTO public."User"(
	nama, email)
	VALUES ('bbbb', 'bbbb@gmail.com');

INSERT INTO public."User"(
	nama, email)
	VALUES ('cccc', 'cccc@gmail.com');

INSERT INTO public."User"(
	nama, email)
	VALUES ('dddd', 'dddd@gmail.com');

INSERT INTO public."User"(
	nama, email)
	VALUES ('eeee', 'eeee@gmail.com');