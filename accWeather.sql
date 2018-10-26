--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: moistures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moistures (
    id bigint NOT NULL,
    create_time timestamp without time zone DEFAULT now() NOT NULL,
    value smallint DEFAULT 0 NOT NULL,
    region_id bigint NOT NULL,
    source character varying(10) NOT NULL
);
ALTER TABLE ONLY public.moistures ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.moistures ALTER COLUMN create_time SET STATISTICS 0;
ALTER TABLE ONLY public.moistures ALTER COLUMN value SET STATISTICS 0;
ALTER TABLE ONLY public.moistures ALTER COLUMN region_id SET STATISTICS 0;


ALTER TABLE public.moistures OWNER TO postgres;

--
-- Name: moistures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.moistures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moistures_id_seq OWNER TO postgres;

--
-- Name: moistures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moistures_id_seq OWNED BY public.moistures.id;


--
-- Name: pressures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pressures (
    id bigint NOT NULL,
    create_time timestamp without time zone DEFAULT now() NOT NULL,
    value smallint DEFAULT 0 NOT NULL,
    region_id bigint NOT NULL,
    source character varying(10) NOT NULL
);
ALTER TABLE ONLY public.pressures ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.pressures ALTER COLUMN create_time SET STATISTICS 0;
ALTER TABLE ONLY public.pressures ALTER COLUMN value SET STATISTICS 0;
ALTER TABLE ONLY public.pressures ALTER COLUMN region_id SET STATISTICS 0;


ALTER TABLE public.pressures OWNER TO postgres;

--
-- Name: pressures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pressures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pressures_id_seq OWNER TO postgres;

--
-- Name: pressures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pressures_id_seq OWNED BY public.pressures.id;


--
-- Name: regions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regions (
    id bigint NOT NULL,
    cord_x character varying NOT NULL,
    cord_y character varying NOT NULL,
    name character varying NOT NULL
);
ALTER TABLE ONLY public.regions ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.regions ALTER COLUMN cord_x SET STATISTICS 0;
ALTER TABLE ONLY public.regions ALTER COLUMN cord_y SET STATISTICS 0;
ALTER TABLE ONLY public.regions ALTER COLUMN name SET STATISTICS 0;


ALTER TABLE public.regions OWNER TO postgres;

--
-- Name: regions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regions_id_seq OWNER TO postgres;

--
-- Name: regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;


--
-- Name: temperatures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temperatures (
    id bigint NOT NULL,
    create_time timestamp without time zone DEFAULT now() NOT NULL,
    value smallint DEFAULT 0 NOT NULL,
    region_id bigint NOT NULL,
    source character varying(10) NOT NULL
);
ALTER TABLE ONLY public.temperatures ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.temperatures ALTER COLUMN create_time SET STATISTICS 0;
ALTER TABLE ONLY public.temperatures ALTER COLUMN value SET STATISTICS 0;
ALTER TABLE ONLY public.temperatures ALTER COLUMN region_id SET STATISTICS 0;


ALTER TABLE public.temperatures OWNER TO postgres;

--
-- Name: temperatures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.temperatures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temperatures_id_seq OWNER TO postgres;

--
-- Name: temperatures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.temperatures_id_seq OWNED BY public.temperatures.id;


--
-- Name: wind; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wind (
    id bigint NOT NULL,
    create_time timestamp without time zone DEFAULT now() NOT NULL,
    directions character(1) DEFAULT 0 NOT NULL,
    region_id bigint NOT NULL,
    source character varying(10) NOT NULL,
    wind_strength integer NOT NULL
);
ALTER TABLE ONLY public.wind ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.wind ALTER COLUMN create_time SET STATISTICS 0;
ALTER TABLE ONLY public.wind ALTER COLUMN directions SET STATISTICS 0;
ALTER TABLE ONLY public.wind ALTER COLUMN region_id SET STATISTICS 0;


ALTER TABLE public.wind OWNER TO postgres;

--
-- Name: wind_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wind_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wind_id_seq OWNER TO postgres;

--
-- Name: wind_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wind_id_seq OWNED BY public.wind.id;


--
-- Name: moistures id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moistures ALTER COLUMN id SET DEFAULT nextval('public.moistures_id_seq'::regclass);


--
-- Name: pressures id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pressures ALTER COLUMN id SET DEFAULT nextval('public.pressures_id_seq'::regclass);


--
-- Name: regions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);


--
-- Name: temperatures id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temperatures ALTER COLUMN id SET DEFAULT nextval('public.temperatures_id_seq'::regclass);


--
-- Name: wind id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wind ALTER COLUMN id SET DEFAULT nextval('public.wind_id_seq'::regclass);


--
-- Data for Name: moistures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.moistures (id, create_time, value, region_id, source) FROM stdin;
\.


--
-- Data for Name: pressures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pressures (id, create_time, value, region_id, source) FROM stdin;
\.


--
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.regions (id, cord_x, cord_y, name) FROM stdin;
1	10	4	name
\.


--
-- Data for Name: temperatures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temperatures (id, create_time, value, region_id, source) FROM stdin;
\.


--
-- Data for Name: wind; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wind (id, create_time, directions, region_id, source, wind_strength) FROM stdin;
\.


--
-- Name: moistures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moistures_id_seq', 1, false);


--
-- Name: pressures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pressures_id_seq', 1, false);


--
-- Name: regions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.regions_id_seq', 1, true);


--
-- Name: temperatures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.temperatures_id_seq', 1, false);


--
-- Name: wind_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wind_id_seq', 1, false);


--
-- Name: moistures moistures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moistures
    ADD CONSTRAINT moistures_pkey PRIMARY KEY (id);


--
-- Name: pressures pressures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pressures
    ADD CONSTRAINT pressures_pkey PRIMARY KEY (id);


--
-- Name: regions regions_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_name_key UNIQUE (name);


--
-- Name: regions regions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);


--
-- Name: temperatures temperatures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temperatures
    ADD CONSTRAINT temperatures_pkey PRIMARY KEY (id);


--
-- Name: wind wind_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wind
    ADD CONSTRAINT wind_pkey PRIMARY KEY (id);


--
-- Name: regions_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX regions_idx ON public.regions USING btree (cord_x, cord_y);


--
-- Name: moistures moistures_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moistures
    ADD CONSTRAINT moistures_fk FOREIGN KEY (region_id) REFERENCES public.regions(id);


--
-- Name: pressures pressures_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pressures
    ADD CONSTRAINT pressures_fk FOREIGN KEY (region_id) REFERENCES public.regions(id);


--
-- Name: temperatures temperatures_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temperatures
    ADD CONSTRAINT temperatures_fk FOREIGN KEY (region_id) REFERENCES public.regions(id);


--
-- Name: wind wind_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wind
    ADD CONSTRAINT wind_fk FOREIGN KEY (region_id) REFERENCES public.regions(id);


--
-- PostgreSQL database dump complete
--

