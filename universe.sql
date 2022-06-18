
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
    name character varying,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: lifeforms; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifeforms (
    type character varying,
    lifeforms_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.lifeforms OWNER TO freecodecamp;

--
-- Name: lifeforms_lifeforms_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lifeforms_lifeforms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lifeforms_lifeforms_id_seq OWNER TO freecodecamp;

--
-- Name: lifeforms_lifeforms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lifeforms_lifeforms_id_seq OWNED BY public.lifeforms.lifeforms_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer NOT NULL,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer NOT NULL,
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
    name character varying,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer NOT NULL,
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: lifeforms lifeforms_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeforms ALTER COLUMN lifeforms_id SET DEFAULT nextval('public.lifeforms_lifeforms_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'MILKYWAY', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123);
INSERT INTO public.galaxy VALUES (2, 'ANDROMEDA GALAXY', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123);
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123);
INSERT INTO public.galaxy VALUES (4, 'PinWheel Galaxy', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123);
INSERT INTO public.galaxy VALUES (6, 'Tadpole Galaxy', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123);


--
-- Data for Name: lifeforms; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifeforms VALUES ('Omnivores', 1, 'Humans');
INSERT INTO public.lifeforms VALUES ('Carnivores', 2, 'Wild Animals');
INSERT INTO public.lifeforms VALUES ('Herbivores', 3, 'Plants');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (2, 'Moon2', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (3, 'Moon3', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (4, 'Moon4', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (5, 'Moon5', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (6, 'Moon6', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (7, 'Moon7', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (8, 'Moon8', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (9, 'Moon9', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (10, 'Moon10', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (11, 'Moon11', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (12, 'Moon12', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (13, 'Moon13', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (14, 'Moon14', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (15, 'Moon15', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (16, 'Moon16', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (17, 'Moon17', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (18, 'Moon18', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (19, 'Moon19', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.moon VALUES (20, 'Moon20', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.planet VALUES (10, 'Planet10', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.planet VALUES (11, 'Planet11', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);
INSERT INTO public.planet VALUES (12, 'Planet12', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, 1);
INSERT INTO public.star VALUES (1, 'Deneb', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, 2);
INSERT INTO public.star VALUES (6, 'Regel', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, 3);
INSERT INTO public.star VALUES (5, 'Vega', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, 4);
INSERT INTO public.star VALUES (3, 'Antares', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, 5);
INSERT INTO public.star VALUES (4, 'Arcturus', 'The appearance from earth of the galaxy band of light', true, true, 454232.54, 123, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: lifeforms_lifeforms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lifeforms_lifeforms_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: lifeforms lifeforms_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeforms
    ADD CONSTRAINT lifeforms_name_key UNIQUE (name);


--
-- Name: lifeforms lifeforms_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeforms
    ADD CONSTRAINT lifeforms_pkey PRIMARY KEY (lifeforms_id);


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

