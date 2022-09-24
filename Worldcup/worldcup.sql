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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(40) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (179, 2018, 'Final', 317, 316, 4, 2);
INSERT INTO public.games VALUES (180, 2018, 'Third Place', 319, 318, 2, 0);
INSERT INTO public.games VALUES (181, 2018, 'Semi-Final', 316, 318, 2, 1);
INSERT INTO public.games VALUES (182, 2018, 'Semi-Final', 317, 319, 1, 0);
INSERT INTO public.games VALUES (183, 2018, 'Quarter-Final', 316, 320, 3, 2);
INSERT INTO public.games VALUES (184, 2018, 'Quarter-Final', 318, 321, 2, 0);
INSERT INTO public.games VALUES (185, 2018, 'Quarter-Final', 319, 322, 2, 1);
INSERT INTO public.games VALUES (186, 2018, 'Quarter-Final', 317, 323, 2, 0);
INSERT INTO public.games VALUES (187, 2018, 'Eighth-Final', 318, 324, 2, 1);
INSERT INTO public.games VALUES (188, 2018, 'Eighth-Final', 321, 325, 1, 0);
INSERT INTO public.games VALUES (189, 2018, 'Eighth-Final', 319, 326, 3, 2);
INSERT INTO public.games VALUES (190, 2018, 'Eighth-Final', 322, 327, 2, 0);
INSERT INTO public.games VALUES (191, 2018, 'Eighth-Final', 316, 328, 2, 1);
INSERT INTO public.games VALUES (192, 2018, 'Eighth-Final', 320, 329, 2, 1);
INSERT INTO public.games VALUES (193, 2018, 'Eighth-Final', 323, 330, 2, 1);
INSERT INTO public.games VALUES (194, 2018, 'Eighth-Final', 317, 331, 4, 3);
INSERT INTO public.games VALUES (195, 2014, 'Final', 332, 331, 1, 0);
INSERT INTO public.games VALUES (196, 2014, 'Third Place', 333, 322, 3, 0);
INSERT INTO public.games VALUES (197, 2014, 'Semi-Final', 331, 333, 1, 0);
INSERT INTO public.games VALUES (198, 2014, 'Semi-Final', 332, 322, 7, 1);
INSERT INTO public.games VALUES (199, 2014, 'Quarter-Final', 333, 334, 1, 0);
INSERT INTO public.games VALUES (200, 2014, 'Quarter-Final', 331, 319, 1, 0);
INSERT INTO public.games VALUES (201, 2014, 'Quarter-Final', 322, 324, 2, 1);
INSERT INTO public.games VALUES (202, 2014, 'Quarter-Final', 332, 317, 1, 0);
INSERT INTO public.games VALUES (203, 2014, 'Eighth-Final', 322, 335, 2, 1);
INSERT INTO public.games VALUES (204, 2014, 'Eighth-Final', 324, 323, 2, 0);
INSERT INTO public.games VALUES (205, 2014, 'Eighth-Final', 317, 336, 2, 0);
INSERT INTO public.games VALUES (206, 2014, 'Eighth-Final', 332, 337, 2, 1);
INSERT INTO public.games VALUES (207, 2014, 'Eighth-Final', 333, 327, 2, 1);
INSERT INTO public.games VALUES (208, 2014, 'Eighth-Final', 334, 338, 2, 1);
INSERT INTO public.games VALUES (209, 2014, 'Eighth-Final', 331, 325, 1, 0);
INSERT INTO public.games VALUES (210, 2014, 'Eighth-Final', 319, 339, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (316, 'Croatia');
INSERT INTO public.teams VALUES (317, 'France');
INSERT INTO public.teams VALUES (318, 'England');
INSERT INTO public.teams VALUES (319, 'Belgium');
INSERT INTO public.teams VALUES (320, 'Russia');
INSERT INTO public.teams VALUES (321, 'Sweden');
INSERT INTO public.teams VALUES (322, 'Brazil');
INSERT INTO public.teams VALUES (323, 'Uruguay');
INSERT INTO public.teams VALUES (324, 'Colombia');
INSERT INTO public.teams VALUES (325, 'Switzerland');
INSERT INTO public.teams VALUES (326, 'Japan');
INSERT INTO public.teams VALUES (327, 'Mexico');
INSERT INTO public.teams VALUES (328, 'Denmark');
INSERT INTO public.teams VALUES (329, 'Spain');
INSERT INTO public.teams VALUES (330, 'Portugal');
INSERT INTO public.teams VALUES (331, 'Argentina');
INSERT INTO public.teams VALUES (332, 'Germany');
INSERT INTO public.teams VALUES (333, 'Netherlands');
INSERT INTO public.teams VALUES (334, 'Costa Rica');
INSERT INTO public.teams VALUES (335, 'Chile');
INSERT INTO public.teams VALUES (336, 'Nigeria');
INSERT INTO public.teams VALUES (337, 'Algeria');
INSERT INTO public.teams VALUES (338, 'Greece');
INSERT INTO public.teams VALUES (339, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 210, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 339, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

