-- Database: demo_circleci

-- DROP DATABASE demo_circleci;

CREATE DATABASE demo_circleci
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;



-- SCHEMA: public

-- DROP SCHEMA public ;

CREATE SCHEMA public
    AUTHORIZATION postgres;

COMMENT ON SCHEMA public
    IS 'standard public schema';

GRANT ALL ON SCHEMA public TO postgres;

GRANT ALL ON SCHEMA public TO PUBLIC;



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