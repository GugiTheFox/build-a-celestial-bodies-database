--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    description text,
    distance_in_tsdlj integer NOT NULL,
    here_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    planet_id integer,
    total_moons integer NOT NULL,
    rounds integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: multiverse; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.multiverse (
    multiverse_id integer NOT NULL,
    name character varying(50) NOT NULL,
    here_life boolean
);


ALTER TABLE public.multiverse OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    star_id integer,
    color text NOT NULL,
    on_fire boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    galaxy_id integer,
    distance_in_mly numeric(20,3),
    how_many integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Gugis Galaxy 1', 'A lot of Life and beautiful Planets', 0, true);
INSERT INTO public.galaxy VALUES (2, 'Gugis Galaxy 2', 'Near', 10, true);
INSERT INTO public.galaxy VALUES (3, 'Gugis Galaxy 3', 'Far', 15, true);
INSERT INTO public.galaxy VALUES (4, 'Gugis Galaxy 4', 'Far Away', 18, true);
INSERT INTO public.galaxy VALUES (5, 'Gugis Galaxy 5', 'Not seen', 19, false);
INSERT INTO public.galaxy VALUES (6, 'Gugis Galaxy 6', 'not knowing', 19, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', 1, 3, 1);
INSERT INTO public.moon VALUES (2, 'Aa', 1, 3, 2);
INSERT INTO public.moon VALUES (3, 'Ab', 1, 3, 1);
INSERT INTO public.moon VALUES (4, 'Ba', 1, 5, 3);
INSERT INTO public.moon VALUES (5, 'Bb', 1, 5, 4);
INSERT INTO public.moon VALUES (6, 'Bc', 1, 5, 2);
INSERT INTO public.moon VALUES (7, 'Bd', 1, 5, 1);
INSERT INTO public.moon VALUES (8, 'Be', 1, 5, 2);
INSERT INTO public.moon VALUES (9, 'C', 2, 1, 1);
INSERT INTO public.moon VALUES (10, 'D', 3, 4, 1);
INSERT INTO public.moon VALUES (11, 'Da', 3, 4, 2);
INSERT INTO public.moon VALUES (12, 'Dc', 3, 4, 3);
INSERT INTO public.moon VALUES (13, 'Dd', 3, 4, 2);
INSERT INTO public.moon VALUES (14, 'De', 3, 4, 1);
INSERT INTO public.moon VALUES (15, 'E', 4, 1, 1);
INSERT INTO public.moon VALUES (16, 'G', 5, 1, 1);
INSERT INTO public.moon VALUES (17, 'H', 5, 2, 1);
INSERT INTO public.moon VALUES (18, 'Hi', 5, 2, 2);
INSERT INTO public.moon VALUES (19, 'U', 5, 1, 3);
INSERT INTO public.moon VALUES (20, 'P', 6, 1, 1);


--
-- Data for Name: multiverse; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.multiverse VALUES (1, 'Gugis Universe', true);
INSERT INTO public.multiverse VALUES (2, 'Not Gugis Universe', false);
INSERT INTO public.multiverse VALUES (3, 'soon Gugis Uinverse', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'AG', 1, 'blue', false);
INSERT INTO public.planet VALUES (2, 'BG', 1, 'lightblue', false);
INSERT INTO public.planet VALUES (3, 'CG', 2, 'green', false);
INSERT INTO public.planet VALUES (4, 'DG', 3, 'red', true);
INSERT INTO public.planet VALUES (5, 'EG', 3, 'darkred', true);
INSERT INTO public.planet VALUES (6, 'FG', 3, 'yellow', false);
INSERT INTO public.planet VALUES (7, 'GG', 4, 'pink', false);
INSERT INTO public.planet VALUES (8, 'HG', 4, 'green', false);
INSERT INTO public.planet VALUES (9, 'IG', 4, 'blue', false);
INSERT INTO public.planet VALUES (10, 'JG', 4, 'red', true);
INSERT INTO public.planet VALUES (11, 'KG', 5, 'black', true);
INSERT INTO public.planet VALUES (12, 'LG', 6, 'white', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Gugi the Star', 1, 5.230, 200);
INSERT INTO public.star VALUES (2, 'Gugi 2', 2, 6.240, 183);
INSERT INTO public.star VALUES (3, 'Gugi 3', 3, 7.560, 495);
INSERT INTO public.star VALUES (4, 'Gugi 4', 4, 8.000, 670);
INSERT INTO public.star VALUES (5, 'Gugi 5', 5, 8.400, 0);
INSERT INTO public.star VALUES (6, 'Gugi 6', 6, 9.430, 0);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: multiverse multiverse_multiverse_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse
    ADD CONSTRAINT multiverse_multiverse_id_key UNIQUE (multiverse_id);


--
-- Name: multiverse multiverse_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse
    ADD CONSTRAINT multiverse_pkey PRIMARY KEY (multiverse_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

