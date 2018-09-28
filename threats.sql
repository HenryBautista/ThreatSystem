--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 10.3

-- Started on 2018-09-28 11:01:00

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
-- TOC entry 2162 (class 1262 OID 18259)
-- Name: threatsystem; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE threatsystem WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE threatsystem OWNER TO postgres;

\connect threatsystem

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
-- TOC entry 1 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2165 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 189 (class 1259 OID 18398)
-- Name: Appreciation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Appreciation" (
    "Id" integer NOT NULL,
    "Description" character varying(200),
    "Initials" character varying(10),
    "Name" character varying(50)
);


ALTER TABLE public."Appreciation" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 18396)
-- Name: Appreciation_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Appreciation_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Appreciation_Id_seq" OWNER TO postgres;

--
-- TOC entry 2166 (class 0 OID 0)
-- Dependencies: 188
-- Name: Appreciation_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Appreciation_Id_seq" OWNED BY public."Appreciation"."Id";


--
-- TOC entry 183 (class 1259 OID 18364)
-- Name: Categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Categories" (
    "Id" integer NOT NULL,
    "Description" character varying(200),
    "Name" character varying(50)
);


ALTER TABLE public."Categories" OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 18362)
-- Name: Categories_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Categories_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Categories_Id_seq" OWNER TO postgres;

--
-- TOC entry 2167 (class 0 OID 0)
-- Dependencies: 182
-- Name: Categories_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Categories_Id_seq" OWNED BY public."Categories"."Id";


--
-- TOC entry 185 (class 1259 OID 18372)
-- Name: Goods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Goods" (
    "Id" integer NOT NULL,
    "CategoryId" integer NOT NULL,
    "Description" character varying(200),
    "Name" character varying(50)
);


ALTER TABLE public."Goods" OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 18370)
-- Name: Goods_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Goods_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Goods_Id_seq" OWNER TO postgres;

--
-- TOC entry 2168 (class 0 OID 0)
-- Dependencies: 184
-- Name: Goods_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Goods_Id_seq" OWNED BY public."Goods"."Id";


--
-- TOC entry 191 (class 1259 OID 18411)
-- Name: Measures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Measures" (
    "Id" integer NOT NULL,
    "AppreciationId" integer NOT NULL,
    "Initials" character varying(10),
    "Name" character varying(50)
);


ALTER TABLE public."Measures" OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 18409)
-- Name: Measures_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Measures_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Measures_Id_seq" OWNER TO postgres;

--
-- TOC entry 2169 (class 0 OID 0)
-- Dependencies: 190
-- Name: Measures_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Measures_Id_seq" OWNED BY public."Measures"."Id";


--
-- TOC entry 187 (class 1259 OID 18385)
-- Name: Threats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Threats" (
    "Id" integer NOT NULL,
    "Description" character varying(200),
    "GoodsId" integer NOT NULL,
    "Name" character varying(50),
    initials character varying(10)
);


ALTER TABLE public."Threats" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 18383)
-- Name: Threats_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Threats_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Threats_Id_seq" OWNER TO postgres;

--
-- TOC entry 2170 (class 0 OID 0)
-- Dependencies: 186
-- Name: Threats_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Threats_Id_seq" OWNED BY public."Threats"."Id";


--
-- TOC entry 181 (class 1259 OID 18357)
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO postgres;

--
-- TOC entry 2012 (class 2604 OID 18401)
-- Name: Appreciation Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Appreciation" ALTER COLUMN "Id" SET DEFAULT nextval('public."Appreciation_Id_seq"'::regclass);


--
-- TOC entry 2009 (class 2604 OID 18367)
-- Name: Categories Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories" ALTER COLUMN "Id" SET DEFAULT nextval('public."Categories_Id_seq"'::regclass);


--
-- TOC entry 2010 (class 2604 OID 18375)
-- Name: Goods Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Goods" ALTER COLUMN "Id" SET DEFAULT nextval('public."Goods_Id_seq"'::regclass);


--
-- TOC entry 2013 (class 2604 OID 18414)
-- Name: Measures Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Measures" ALTER COLUMN "Id" SET DEFAULT nextval('public."Measures_Id_seq"'::regclass);


--
-- TOC entry 2011 (class 2604 OID 18388)
-- Name: Threats Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Threats" ALTER COLUMN "Id" SET DEFAULT nextval('public."Threats_Id_seq"'::regclass);


--
-- TOC entry 2154 (class 0 OID 18398)
-- Dependencies: 189
-- Data for Name: Appreciation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Appreciation" ("Id", "Description", "Initials", "Name") VALUES (1, 'ninguna ', 'D', 'Degradacion del valor');
INSERT INTO public."Appreciation" ("Id", "Description", "Initials", "Name") VALUES (2, 'ninguna ', 'P', 'Probabilida de ocurrencia');


--
-- TOC entry 2148 (class 0 OID 18364)
-- Dependencies: 183
-- Data for Name: Categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Categories" ("Id", "Description", "Name") VALUES (1, 'Descripcion de software ', 'Software');


--
-- TOC entry 2150 (class 0 OID 18372)
-- Dependencies: 185
-- Data for Name: Goods; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (2, 1, 'Descripcion de Biznet ', 'Biznet');


--
-- TOC entry 2156 (class 0 OID 18411)
-- Dependencies: 191
-- Data for Name: Measures; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (1, 1, 'MA', 'Muy alta');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (2, 1, 'A', 'Alta');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (3, 1, 'M', 'Media');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (4, 2, 'CS', 'Casi seguro');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (5, 2, 'MA', 'Muy alto');


--
-- TOC entry 2152 (class 0 OID 18385)
-- Dependencies: 187
-- Data for Name: Threats; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (2, '[I.5] Avería de origen físico o lógico ', 2, '[I.5] Avería de origen físico o lógico', '[I.5]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (3, 'Vulnerabilidades de los programas (software)', 2, 'Vulnerabilidades de los programas (software)', '[E.20]');


--
-- TOC entry 2146 (class 0 OID 18357)
-- Dependencies: 181
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20180918155833_fixdataconstrains', '2.0.0-rtm-26452');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20180918160806_fixdatacons', '2.0.0-rtm-26452');


--
-- TOC entry 2171 (class 0 OID 0)
-- Dependencies: 188
-- Name: Appreciation_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Appreciation_Id_seq"', 2, true);


--
-- TOC entry 2172 (class 0 OID 0)
-- Dependencies: 182
-- Name: Categories_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Categories_Id_seq"', 1, true);


--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 184
-- Name: Goods_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Goods_Id_seq"', 2, true);


--
-- TOC entry 2174 (class 0 OID 0)
-- Dependencies: 190
-- Name: Measures_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Measures_Id_seq"', 5, true);


--
-- TOC entry 2175 (class 0 OID 0)
-- Dependencies: 186
-- Name: Threats_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Threats_Id_seq"', 3, true);


--
-- TOC entry 2025 (class 2606 OID 18403)
-- Name: Appreciation PK_Appreciation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Appreciation"
    ADD CONSTRAINT "PK_Appreciation" PRIMARY KEY ("Id");


--
-- TOC entry 2017 (class 2606 OID 18369)
-- Name: Categories PK_Categories; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "PK_Categories" PRIMARY KEY ("Id");


--
-- TOC entry 2020 (class 2606 OID 18377)
-- Name: Goods PK_Goods; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Goods"
    ADD CONSTRAINT "PK_Goods" PRIMARY KEY ("Id");


--
-- TOC entry 2028 (class 2606 OID 18416)
-- Name: Measures PK_Measures; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Measures"
    ADD CONSTRAINT "PK_Measures" PRIMARY KEY ("Id");


--
-- TOC entry 2023 (class 2606 OID 18390)
-- Name: Threats PK_Threats; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Threats"
    ADD CONSTRAINT "PK_Threats" PRIMARY KEY ("Id");


--
-- TOC entry 2015 (class 2606 OID 18361)
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- TOC entry 2018 (class 1259 OID 18423)
-- Name: IX_Goods_CategoryId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Goods_CategoryId" ON public."Goods" USING btree ("CategoryId");


--
-- TOC entry 2026 (class 1259 OID 18424)
-- Name: IX_Measures_AppreciationId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Measures_AppreciationId" ON public."Measures" USING btree ("AppreciationId");


--
-- TOC entry 2021 (class 1259 OID 18425)
-- Name: IX_Threats_GoodsId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Threats_GoodsId" ON public."Threats" USING btree ("GoodsId");


--
-- TOC entry 2029 (class 2606 OID 18378)
-- Name: Goods FK_Goods_Categories_CategoryId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Goods"
    ADD CONSTRAINT "FK_Goods_Categories_CategoryId" FOREIGN KEY ("CategoryId") REFERENCES public."Categories"("Id") ON DELETE CASCADE;


--
-- TOC entry 2031 (class 2606 OID 18417)
-- Name: Measures FK_Measures_Appreciation_AppreciationId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Measures"
    ADD CONSTRAINT "FK_Measures_Appreciation_AppreciationId" FOREIGN KEY ("AppreciationId") REFERENCES public."Appreciation"("Id") ON DELETE CASCADE;


--
-- TOC entry 2030 (class 2606 OID 18391)
-- Name: Threats FK_Threats_Goods_GoodsId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Threats"
    ADD CONSTRAINT "FK_Threats_Goods_GoodsId" FOREIGN KEY ("GoodsId") REFERENCES public."Goods"("Id") ON DELETE CASCADE;


--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-09-28 11:01:01

--
-- PostgreSQL database dump complete
--

