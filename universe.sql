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
-- Name: alien_galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien_galaxy (
    alien_galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer,
    description text,
    alien_type character varying(255),
    number_of_planets integer,
    distance_from_earth_in_light_years integer,
    average_temperature integer,
    has_life boolean
);


ALTER TABLE public.alien_galaxy OWNER TO freecodecamp;

--
-- Name: alien_galaxy_alien_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_galaxy_alien_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_galaxy_alien_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: alien_galaxy_alien_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_galaxy_alien_galaxy_id_seq OWNED BY public.alien_galaxy.alien_galaxy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    galaxy_type character varying(255),
    age_in_millions_of_years numeric,
    has_life boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer,
    description text,
    is_spherical boolean,
    moon_type character varying(255)
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
    name character varying(255) NOT NULL,
    star_id integer,
    planet_type character varying(255),
    distance_from_earth numeric,
    has_life boolean
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
    name character varying(255) NOT NULL,
    galaxy_id integer,
    description text,
    star_type character varying(255),
    age_in_millions_of_years numeric,
    is_spherical boolean
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
-- Name: alien_galaxy alien_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_galaxy ALTER COLUMN alien_galaxy_id SET DEFAULT nextval('public.alien_galaxy_alien_galaxy_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: alien_galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien_galaxy VALUES (1, 'Andromeda Prime', 2, 'A galaxy teeming with advanced life', 'Reptilian', 1000, 2500000, -50, true);
INSERT INTO public.alien_galaxy VALUES (2, 'Sirius B', 1, 'A galaxy home to a peaceful, advanced civilization', 'Humanoid', 500, 9, 20, true);
INSERT INTO public.alien_galaxy VALUES (3, 'Epsilon Eridani', 1, 'A galaxy with a diverse array of life forms', 'Insectoid', 200, 11, -10, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 'Spiral', 13500, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The closest major galaxy to our own', 'Spiral', 10000, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'The third largest galaxy in the Local Group', 'Spiral', 10000, true);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'A satellite galaxy of the Milky Way', 'Irregular', 13000, true);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'Another satellite galaxy of the Milky Way', 'Irregular', 12000, true);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'A beautiful spiral galaxy', 'Spiral', 10000, true);
INSERT INTO public.galaxy VALUES (7, 'Centaurus A', 'A galaxy with a strong radio source', 'Elliptical', 10000, true);
INSERT INTO public.galaxy VALUES (8, 'Sombrero Galaxy', 'A galaxy with a prominent dust lane', 'Lenticular', 10000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 'Earth only natural satellite', true, 'Natural');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 'The larger and closer of Mars two moons', true, 'Natural');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 'The smaller and farther of Mars two moons', true, 'Natural');
INSERT INTO public.moon VALUES (4, 'Io', 5, 'The most volcanically active body in the Solar System', true, 'Natural');
INSERT INTO public.moon VALUES (5, 'Europa', 5, 'A moon thought to have a subsurface ocean', true, 'Natural');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 'The largest moon in the Solar System', true, 'Natural');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 'The most heavily cratered object in the Solar System', true, 'Natural');
INSERT INTO public.moon VALUES (8, 'Titan', 6, 'The only moon in the Solar System known to have a dense atmosphere', true, 'Natural');
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 'The second-largest moon of Saturn', true, 'Natural');
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, 'A moon with a distinct light and dark hemisphere', true, 'Natural');
INSERT INTO public.moon VALUES (11, 'Triton', 8, 'A moon with retrograde motion', true, 'Natural');
INSERT INTO public.moon VALUES (12, 'Nereid', 8, 'The third-largest moon of Neptune', true, 'Natural');
INSERT INTO public.moon VALUES (13, 'Naiad', 8, 'The innermost moon of Neptune', true, 'Natural');
INSERT INTO public.moon VALUES (14, 'Thalassa', 8, 'The second-innermost moon of Neptune', true, 'Natural');
INSERT INTO public.moon VALUES (15, 'Despina', 8, 'The third-innermost moon of Neptune', true, 'Natural');
INSERT INTO public.moon VALUES (16, 'Galatea', 8, 'The fourth-innermost moon of Neptune', true, 'Natural');
INSERT INTO public.moon VALUES (17, 'Larissa', 8, 'The fifth-innermost moon of Neptune', true, 'Natural');
INSERT INTO public.moon VALUES (18, 'Proteus', 8, 'The second-largest moon of Neptune', true, 'Natural');
INSERT INTO public.moon VALUES (19, 'Halimede', 8, 'A moon of Neptune', true, 'Natural');
INSERT INTO public.moon VALUES (20, 'Psamathe', 8, 'A moon of Neptune', true, 'Natural');
INSERT INTO public.moon VALUES (21, 'Amalthea', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (22, 'Thebe', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (23, 'Adrastea', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (24, 'Metis', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (25, 'Himalia', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (26, 'Elara', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (27, 'Pasiphae', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (28, 'Sinope', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (29, 'Lysithea', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (30, 'Carme', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (31, 'Ananke', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (32, 'Leda', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (33, 'Ersa', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (34, 'Valetudo', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (35, 'Pandia', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (36, 'Dia', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (37, 'Eirene', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (38, 'Sponde', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (39, 'Kale', 5, 'A moon of Jupiter', true, 'Natural');
INSERT INTO public.moon VALUES (40, 'Autonoe', 5, 'A moon of Jupiter', true, 'Natural');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Terrestrial', 0.39, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Terrestrial', 0.72, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Terrestrial', 1, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'Terrestrial', 1.52, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Gas Giant', 5.20, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Gas Giant', 9.54, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'Ice Giant', 19.19, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Ice Giant', 30.06, false);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 3, 'Terrestrial', 4.24, false);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', 3, 'Terrestrial', 1.50, false);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', 3, 'Terrestrial', 490, false);
INSERT INTO public.planet VALUES (12, 'Kepler-452b', 3, 'Super-Earth', 1400, false);
INSERT INTO public.planet VALUES (24, '51 Pegasi b', 2, 'Hot Jupiter', 51, false);
INSERT INTO public.planet VALUES (25, '55 Cancri e', 2, 'Super-Earth', 41, false);
INSERT INTO public.planet VALUES (26, 'Gliese 581c', 2, 'Super-Earth', 20, false);
INSERT INTO public.planet VALUES (27, 'Kepler-10b', 2, 'Super-Earth', 56, false);
INSERT INTO public.planet VALUES (28, 'Kepler-126g', 2, 'Terrestrial', 485, false);
INSERT INTO public.planet VALUES (29, 'Kepler-450p', 2, 'Super-Earth', 1400, false);
INSERT INTO public.planet VALUES (30, 'HD 10380 g', 2, 'Super-Earth', 60, false);
INSERT INTO public.planet VALUES (31, 'HD 181733b', 2, 'Hot Jupiter', 63, false);
INSERT INTO public.planet VALUES (32, 'GJ 1224b', 2, 'Mini-Neptune', 41, false);
INSERT INTO public.planet VALUES (33, 'GJ 677Cc', 2, 'Super-Earth', 22, false);
INSERT INTO public.planet VALUES (34, 'TRAPPIST-1u', 2, 'Terrestrial', 39, false);
INSERT INTO public.planet VALUES (35, 'TRAPPIST-1y', 2, 'Terrestrial', 42, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'Our star', 'Yellow Dwarf', 4500, true);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 'The brightest star in the night sky', 'A1V', 250, true);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 1, 'The closest star to our solar system', 'M5.5Ve', 4850, true);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 'A red supergiant star', 'M2Iab', 10, true);
INSERT INTO public.star VALUES (5, 'Rigel', 1, 'A blue supergiant star', 'B8Ia', 8, true);
INSERT INTO public.star VALUES (6, 'Polaris', 1, 'The North Star', 'F7Ib-II', 70, true);
INSERT INTO public.star VALUES (7, 'Canopus', 1, 'The second-brightest star in the night sky', 'F0Ia', 300, true);
INSERT INTO public.star VALUES (8, 'Arcturus', 1, 'The fourth-brightest star in the night sky', 'K1.5III', 7000, true);
INSERT INTO public.star VALUES (9, 'Vega', 1, 'The fifth-brightest star in the night sky', 'A0Va', 455, true);
INSERT INTO public.star VALUES (10, 'Capella', 1, 'The sixth-brightest star in the night sky', 'G8IIIe', 500, true);


--
-- Name: alien_galaxy_alien_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_galaxy_alien_galaxy_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 35, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: alien_galaxy alien_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_galaxy
    ADD CONSTRAINT alien_galaxy_name_key UNIQUE (name);


--
-- Name: alien_galaxy alien_galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_galaxy
    ADD CONSTRAINT alien_galaxy_pkey PRIMARY KEY (alien_galaxy_id);


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
-- Name: alien_galaxy alien_galaxy_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_galaxy
    ADD CONSTRAINT alien_galaxy_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

