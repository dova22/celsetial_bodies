--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    description text,
    age_in_millions_of_years integer,
    name character varying(30) NOT NULL,
    star_number integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    description text,
    distance_from_planet integer,
    name character varying(30) NOT NULL,
    surface_area numeric(10,1),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    surface_area numeric(10,1),
    name character varying(30) NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    type text,
    name character varying(30) NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    life_cycle integer,
    composition text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 136000, 'Milky Way', 100);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 130000, 'Andromeda', 1000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 8000, 'Triangulum', 40);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 400, 'Whirlpool', 100);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 10000, 'Sombrero', 10);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 12000, 'Centaurus A', 100);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 384400, 'Moon', 0.1, 1);
INSERT INTO public.moon VALUES (2, 'Titan', 1222000, 'Titan', 0.4, 6);
INSERT INTO public.moon VALUES (3, 'Ganymede', 1070400, 'Ganymede', 0.4, 5);
INSERT INTO public.moon VALUES (4, 'Callisto', 1882700, 'Callisto', 0.3, 5);
INSERT INTO public.moon VALUES (5, 'Io', 421800, 'Io', 0.3, 5);
INSERT INTO public.moon VALUES (6, 'Europa', 671100, 'Europa', 0.2, 5);
INSERT INTO public.moon VALUES (7, 'Triton', 354800, 'Triton', 0.0, 8);
INSERT INTO public.moon VALUES (8, 'Enceladus', 238000, 'Enceladus', 0.0, 6);
INSERT INTO public.moon VALUES (9, 'Mimas', 185520, 'Mimas', 0.0, 6);
INSERT INTO public.moon VALUES (10, 'Phobos', 9377, 'Phobos', 0.0, 2);
INSERT INTO public.moon VALUES (11, 'Deimos', 23459, 'Deimos', 0.0, 2);
INSERT INTO public.moon VALUES (12, 'Rhea', 527040, 'Rhea', 0.1, 6);
INSERT INTO public.moon VALUES (13, 'Thethys', 294660, 'Thethys', 0.1, 6);
INSERT INTO public.moon VALUES (14, 'Dione', 377400, 'Dione', 0.1, 6);
INSERT INTO public.moon VALUES (16, 'Miranda', 129900, 'Miranda', 0.0, 7);
INSERT INTO public.moon VALUES (17, 'Ariel', 191020, 'Ariel', 0.0, 7);
INSERT INTO public.moon VALUES (18, 'Umbriel', 266000, 'Umbriel', 0.0, 7);
INSERT INTO public.moon VALUES (19, 'Oberon', 583520, 'Oberon', 0.0, 7);
INSERT INTO public.moon VALUES (20, 'Titania', 435840, 'Titania', 0.0, 7);
INSERT INTO public.moon VALUES (15, 'Charon', 19573, 'Charon', 0.0, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 1.0, 'Earth', 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, true, 0.9, 'Venus', 1);
INSERT INTO public.planet VALUES (4, 'Mercury', false, true, 0.1, 'Mercury', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, 121.9, 'Jupiter', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 83.7, 'Saturn', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 15.8, 'Uranus', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 14.9, 'Neptune', 1);
INSERT INTO public.planet VALUES (9, 'Kepler 22', false, false, 0.0, 'Kepler 22', 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri B', false, false, 0.0, 'Proxima Centauri b', 1);
INSERT INTO public.planet VALUES (11, 'TRAPPIST', false, false, 0.0, 'TRAPPIST', 1);
INSERT INTO public.planet VALUES (12, 'HD 40307', false, false, 0.0, 'HD 40307', 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, true, 0.3, 'Mars', 1);
INSERT INTO public.planet VALUES (13, 'Pluto', false, true, 0.0, 'Pluto', 1);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial Planet', 'Mars');
INSERT INTO public.planet_types VALUES (2, 'Gas Giants', 'Saturn');
INSERT INTO public.planet_types VALUES (3, 'Ice Giants', 'Neptune');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Sun', 1000, 'Helium and Hydrogen', 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'Alpha Centauri A', 1000, 'Helium and Hydrogen', 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 'Alpha Centauri B', 1000, 'Helium and Hydrogen', 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'Proxima Centauri', 1000, 'Helium and Hydrogen', 1);
INSERT INTO public.star VALUES (5, 'Sirius A', 'Sirius A', 1000, 'Helium and Hydrogen', 1);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'Betelgeuse', 1000, 'Helium and Hydrogen and Heavier Elements', 1);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

