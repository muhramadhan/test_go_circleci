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