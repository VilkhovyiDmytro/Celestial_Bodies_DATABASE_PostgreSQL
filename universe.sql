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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_name character varying(30) NOT NULL,
    asteroid_id integer NOT NULL,
    speed numeric,
    name character varying(20)
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    quantity_of_start integer,
    has_live boolean,
    have_seen_people boolean,
    name character varying(20)
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
    moon_name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_name text,
    have_seen_people boolean,
    has_live boolean,
    name character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_name text,
    has_live boolean,
    has_water boolean,
    distance_to_star integer,
    distance_to_moon integer,
    name character varying(20)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    galaxy_name text,
    has_live boolean,
    have_seen_people boolean,
    name character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES ('qwe', 1, NULL, NULL);
INSERT INTO public.asteroid VALUES ('asd', 2, NULL, NULL);
INSERT INTO public.asteroid VALUES ('zxc', 3, NULL, NULL);
INSERT INTO public.asteroid VALUES ('vbn', 4, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('a1', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('b2', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('c3', 3, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('d4', 4, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('e5', 5, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('f6', 6, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('g7', 7, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('h8', 8, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('zx0', 1, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx1', 2, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx2', 3, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx3', 4, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx4', 5, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx5', 6, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx6', 7, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx7', 8, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx8', 9, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx9', 10, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx10', 11, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx21', 12, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx32', 13, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx43', 14, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx54', 15, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx65', 16, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx76', 17, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx87', 18, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx98', 19, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx101', 20, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx212', 21, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx323', 22, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx434', 23, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx545', 24, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx656', 25, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx767', 26, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx878', 27, 'z0', NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zx989', 28, 'z0', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('z0', 1, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z1', 2, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z2', 3, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z3', 4, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z4', 5, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z5', 6, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z6', 7, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z7', 8, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z8', 9, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z9', 10, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z10', 11, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z11', 12, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z12', 13, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z13', 14, 'a11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('z14', 15, 'a11', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('a11', 10, 'a1', NULL, NULL, NULL);
INSERT INTO public.star VALUES ('a12', 11, 'a1', NULL, NULL, NULL);
INSERT INTO public.star VALUES ('a21', 12, 'b2', NULL, NULL, NULL);
INSERT INTO public.star VALUES ('a22', 13, 'b2', NULL, NULL, NULL);
INSERT INTO public.star VALUES ('a23', 14, 'b2', NULL, NULL, NULL);
INSERT INTO public.star VALUES ('a24', 15, 'b2', NULL, NULL, NULL);
INSERT INTO public.star VALUES ('a25', 16, 'b2', NULL, NULL, NULL);


--
-- Name: asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_id_seq', 4, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 28, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 15, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 16, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (asteroid_name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (moon_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (planet_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (star_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- PostgreSQL database dump complete
--

