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
    name character varying NOT NULL,
    known_planets_with_life numeric,
    diameter_ly integer,
    thickness integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    temperature integer,
    diameter integer,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: other_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other_info (
    has_water boolean NOT NULL,
    has_atmosphere boolean,
    visited_by_humans boolean,
    unique_characteristics text NOT NULL,
    planet_id integer,
    other_info_id integer NOT NULL,
    name character varying
);


ALTER TABLE public.other_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    temperature integer,
    diameter integer,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    temperature integer,
    diameter integer,
    type text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 105700, 1000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 0, 220000, 1000);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 0, 14000, 4000);
INSERT INTO public.galaxy VALUES (4, 'Bodego', 0, 84000, 46000);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel Galaxy', 0, 150000, 75000);
INSERT INTO public.galaxy VALUES (6, 'Triangulum Galaxy', 0, 65000, 1500);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon I', 50, 500, false, NULL);
INSERT INTO public.moon VALUES (2, 'Moon II', 150, 1500, false, NULL);
INSERT INTO public.moon VALUES (3, 'Moon III', 120, 2500, false, NULL);
INSERT INTO public.moon VALUES (4, 'Moon IV', 40, 2000, false, NULL);
INSERT INTO public.moon VALUES (5, 'Moon V', 60, 1000, false, NULL);
INSERT INTO public.moon VALUES (6, 'Moon VI', 160, 1000, false, NULL);
INSERT INTO public.moon VALUES (7, 'Moon VII', 1160, 5000, false, NULL);
INSERT INTO public.moon VALUES (8, 'Moon VIII', 120, 3000, false, NULL);
INSERT INTO public.moon VALUES (9, 'Moon IX', 110, 2900, false, NULL);
INSERT INTO public.moon VALUES (10, 'Moon X', 10, 2000, false, NULL);
INSERT INTO public.moon VALUES (11, 'Moon XI', 10, 2000, false, NULL);
INSERT INTO public.moon VALUES (14, 'Moon XII', 10, 2000, false, NULL);
INSERT INTO public.moon VALUES (15, 'Moon XIII', 10, 2000, false, NULL);
INSERT INTO public.moon VALUES (16, 'Moon XIV', 10, 2000, false, NULL);
INSERT INTO public.moon VALUES (17, 'Moon XV', 10, 2000, false, NULL);
INSERT INTO public.moon VALUES (18, 'Moon XVI', 10, 2000, false, NULL);
INSERT INTO public.moon VALUES (19, 'Moon XVII', 10, 2000, false, NULL);
INSERT INTO public.moon VALUES (20, 'Moon XVIII', 10, 2000, false, NULL);
INSERT INTO public.moon VALUES (21, 'Moon XIX', 10, 2000, false, NULL);
INSERT INTO public.moon VALUES (22, 'Moon XX', 10, 2000, false, NULL);


--
-- Data for Name: other_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other_info VALUES (true, NULL, NULL, 'Its nice', NULL, 2, NULL);
INSERT INTO public.other_info VALUES (false, NULL, NULL, 'Too close to Sun', NULL, 1, NULL);
INSERT INTO public.other_info VALUES (false, NULL, NULL, 'Very hot planet', NULL, 3, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 442, 4879, false, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', 737, 6051, false, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 210, 3389, false, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 165, 71492, false, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 134, 54364, false, NULL);
INSERT INTO public.planet VALUES (7, 'Uran', 76, 25559, false, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 72, 24622, false, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 24, 2376, false, NULL);
INSERT INTO public.planet VALUES (10, 'Planet I', 300, 10000, false, NULL);
INSERT INTO public.planet VALUES (11, 'Planet II', 250, 70000, false, NULL);
INSERT INTO public.planet VALUES (12, 'Planet III', 650, 1500, false, NULL);
INSERT INTO public.planet VALUES (2, 'Earth', 288, 6371, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5800, 1392700, 'G2 V', NULL);
INSERT INTO public.star VALUES (2, 'Alpha Andromedae', 13000, 3760290, 'B8 IV-V HgMn', NULL);
INSERT INTO public.star VALUES (3, 'R71', 12600, 142055400, 'LBV', NULL);
INSERT INTO public.star VALUES (4, 'VY Canis Majoris', 3490, 1977634000, 'M3–M4.5', NULL);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 5790, 1685167, 'G2 V', NULL);
INSERT INTO public.star VALUES (6, 'BERNARDS STAR', 5790, 1685167, 'G2 V', NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: planet id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT id UNIQUE (planet_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: other_info other_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_info
    ADD CONSTRAINT other_info_pkey PRIMARY KEY (other_info_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: other_info tak; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_info
    ADD CONSTRAINT tak UNIQUE (unique_characteristics);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

