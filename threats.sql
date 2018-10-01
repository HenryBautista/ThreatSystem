--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 10.3

-- Started on 2018-09-28 11:05:45

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


-- Completed on 2018-09-28 11:05:45

--
-- PostgreSQL database dump complete
--

--INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (1, 1, 'Telefonia ip', 'TELEFONIA IP');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (1, 1, 'Internet', 'INTERNET');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (2, 1, 'Biznet', 'BIZNET');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (3, 1, 'ofimatica', 'OFIMATICA');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (4, 1, 'Antivirus', 'ANTIVIRUS');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (5, 1, 'Operativo', 'OPERATIVO');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (6, 1, 'Otros software', 'OTROS SOFTWARE');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (7, 1, 'Servidor de dabes de datos', 'SERVIDOR DE BASES DE DATOS');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (8, 1, 'Medios de impresion', 'MEDIOS DE IMPRESIÓN');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (8, 1, 'Computadoras de escritorio', 'COMPUTADORAS DE ESCRITORIO');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (10, 1, 'Router', 'ROUTER');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (11, 1, 'Telefonia ip', 'TELEFONÍA IP');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (12, 1, 'Red wifi', 'RED WIFI');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (13, 1, 'Red lan', 'RED LAN');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (14, 1, 'Internet', 'INTERNET');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (15, 1, 'Cableado', 'CABLEADO');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (16, 1, 'Mobiliario', 'MOBILIARIO');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (17, 1, 'Sistema de vigilancia', 'SISTEMA DE VIGILANCIA');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (18, 1, 'Antenas', 'ANTENAS');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (19, 1, 'Radios', 'RADIOS');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (20, 1, 'Sistema de alimentacion initerrumpida', 'ALIMENTACIÓN ININTERRUMPIDA');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (21, 1, 'Otros equipos auxiliares', 'OTROS EQUIPOS AUXILIARES');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (22, 1, 'Cd', 'CD');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (23, 1, 'EDIFICIO', 'EDIFICIO');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (24, 1, 'Jefatura de dto financiero', 'JEFA DEL DTO. FINANCIERO');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (25, 1, 'Mantenimiento base de datos', 'MANTENIMIENTO DB');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (26, 1, 'Mantenimiento de equipos', 'MANTENIMIENTO EQ');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (27, 1, 'Jefatura de departamento de contabilidad', 'JEFA DEL DTO. DE CONTABILIDAD');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (28, 1, 'Jefatura de departamento de logistica y compras', 'JEFA DEL DTO. DE LOGÍSTICA Y COMPRAS');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (29, 1, 'jefatura de departamento de personal', 'JEFA DEL DTO. DE PERSONAL');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (30, 1, 'Auxiliar de contabilidad', 'AUXILIAR DE CONTABILIDAD');
INSERT INTO public."Goods" ("Id", "CategoryId", "Description", "Name") VALUES (31, 1, 'Digitadora', 'DIGITADORA');

--INTERNET
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (1, 'Uso no previsto',                                   1, 'Uso no previsto', '[A.7]');
--BIZNET
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (2, 'Avería de origen físico o lógico',                  2, 'Avería de origen físico o lógico', '[I.5]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (3, 'Vulnerabilidades de los programas (software)',      2, 'Vulnerabilidades de los programas (software)', '[E.20]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (4, 'Errores de mantenimiento / actualización de programas software', 2, 'E. M. / actualización de programas software', '[E.21]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (5, 'Suplantación de la identidad del usuario',          2, 'Suplantación de la identidad del usuario', '[A.5]');

INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (6, 'Errores de los usuarios',                           3, 'Errores de los usuarios', '[E.1]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (7, 'Vulnerabilidades de los programas (software)',      3, 'Vulnerabilidades de los programas (software)', '');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (8, 'Errores de mantenimiento / actualización de programas software', 3, 'E. M. / actualización de programas software', '[E.21]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (9, 'Difusión de software dañino',                       3, 'Difusión de software dañino', '[A.8]');

INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (10, 'Difusión de software dañino',                      4, 'Difusión de software dañino', '[E.8]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (11, 'Vulnerabilidades de los programas (software)',     4, 'Vulnerabilidades de los programas (software)', '[E.20]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (12, 'Errores de mantenimiento / actualización de programas software', 4, 'E. M. / actualización de programas software', '[E.21]');

INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (13, 'Avería de origen físico o lógico',                 5, 'Avería de origen físico o lógico', '[I.5]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (14, 'Errores de los usuarios',                          5, 'Errores de los usuarios', '[E.1]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (15, 'Difusión de software dañino',                      5, 'Difusión de software dañino', '[E.8]');     
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (16, 'Vulnerabilidades de los programas (software)',     5, 'Vulnerabilidades de los programas (software)', '[E.20]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (17, 'Errores de mantenimiento / actualización de programas software', 5, 'E. M. / actualización de programas software', '[E.21]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (18, 'Uso no previsto',                                  5, 'Uso no previsto', '[A.7]');
--OTROS SOFTWARE
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (19, 'Difusión de software dañino',                      6, 'Difusión de software dañino', '[E.28]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (20, 'Vulnerabilidades de los programas (software)',     6, 'Vulnerabilidades de los programas (software)', '[E.20]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (21, 'Errores de mantenimiento / actualización de programas software', 6, 'E. M. / actualización de programas software', '[E.21]');
--SERVIDOR DE BASES DE DATOS
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (22, 'Fuego',                                            7, 'Fuego', '[N.21]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (23, 'Daños por agua',                                   7, 'Daños por agua', '[N.2]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (24, 'Desastres naturales',                              7, 'Desastres naturales', '[N.*]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (25, 'Contaminación medioambiental',                     7, 'Contaminación medioambiental', '[I.3]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (26, 'Avería de origen físico o lógico',                 7, 'Avería de origen físico o lógico', '[I.5]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (27, 'Condiciones inadecuadas de temperatura o humedad', 7, 'Condiciones inadecuadas de temperatura o humedad', '[I.7]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (28, 'Errores del administrador del sistema / de la seguridad', 7, 'E. del administrador del sistema / de la seguridad', '[E.2]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (29, 'Errores de mantenimiento / actualización de equipos (hardware)', 7, 'E. M./ actualización de equipos (hardware)', '[E.23]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (30, 'Acceso no autorizado',                             7, 'Acceso no autorizado', '[A.11]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (31, 'Manipulación del hardware',                        7, 'Manipulación del hardware', '[A.23]');
--MEDIOS DE IMPRESION
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (32, 'Avería de origen físico o lógico',                 8, 'Avería de origen físico o lógico', '[i.5]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (33, 'Condiciones inadecuadas de temperatura o humedad', 8, 'Condiciones inadecuadas de temperatura o humedad', '[I.7]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (34, 'Errores de mantenimiento / actualización de equipos (hardware)', 8, 'E. M./ actualización de equipos (hardware)', '[E.23]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (35, 'Acceso no autorizado',                             8, 'Acceso no autorizado', '[A.11]');
--COMPUTADORAS DE ESCRITORIO
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (36, 'Daños por agua',                                   9, 'Daños por agua', '[N.2]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (37, 'Desastres naturales',                              9, 'Desastres naturales', '[N.*]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (38, 'Desastres industriales',                           9, 'Desastres industriales', '[I.*]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (39, 'Avería de origen físico o lógico',                 9, 'Avería de origen físico o lógico', '[I.5]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (40, 'Condiciones inadecuadas de temperatura o humedad', 9, 'Condiciones inadecuadas de temperatura o humedad', '[I.7]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (41, 'Errores de mantenimiento / actualización de equipos (hardware)', 9, 'E. M./ actualización de equipos (hardware)', '[E.23]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (42, 'Caída del sistema por agotamiento de recursos',    9, 'Caída del sistema por agotamiento de recursos', '[E.24]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (43, 'Abuso de privilegios de acceso',                   9, 'Abuso de privilegios de acceso', '[A.6]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (44, 'Uso no previsto',                                  9, 'Uso no previsto', '[A.7]');
--ROUTER
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (45, 'Fuego',                                            10, 'Fuego', '[N.1]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (46, 'Daños por agua',                                   10, 'Daños por agua', '[N.2]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (47, 'Desastres naturales',                              10, 'Desastres naturales', '[N.*]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (48, 'Contaminación medioambiental',                     10, 'Contaminación medioambiental', '[I.3]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (49, 'Avería de origen físico o lógico',                 10, 'Avería de origen físico o lógico', '[I.5]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (50, 'Condiciones inadecuadas de temperatura o humedad', 10, 'Condiciones inadecuadas de temperatura o humedad', '[I.7]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (51, 'Acceso no autorizado',                             10, 'Acceso no autorizado', '[A.11]');
--TELEFONIA IP
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (52, 'Errores de los usuarios',                          11, 'Errores de los usuarios', '[E.1]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (53, 'Fallo de servicios de comunicaciones',             11, 'Fallo de servicios de comunicaciones', '[I.8]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (54, 'Errores de [re-]encaminamiento',                   11, 'Errores de [re-]encaminamiento', '[E.9]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (55, 'Errores de secuencia',                             11, 'Errores de secuencia', '[E.10]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (56, 'Alteración de la información',                     11, 'Alteración de la información', '[E.15]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (57, 'Fugas de información',                             11, 'Fugas de información', '[E.19]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (58, 'Uso no previsto',                                  11, 'Uso no previsto', '[A.7]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (59, '[Re-]encaminamiento de mensajes',                  11, '[Re-]encaminamiento de mensajes', '[A.9]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (60, 'Alteración de secuencia',                          11, 'Alteración de secuencia', '[A.10]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (61, 'Análisis de tráfico',                              11, 'Análisis de tráfico', '[A.12]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (62, 'Interceptación de información (escucha)',          11, 'Interceptación de información (escucha)', '[A.14]');
--RED WIFI
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (63, 'Fallo de servicios de comunicaciones',             12, 'Fallo de servicios de comunicaciones', '[I.8]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (64, 'Errores de [re-]encaminamiento',                   12, 'Errores de [re-]encaminamiento', '[E.9]');
--RED LAN
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (65, 'Fallo de servicios de comunicaciones',             13, 'Fallo de servicios de comunicaciones', '[I.8]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (66, 'Errores de [re-]encaminamiento',                   13, 'Errores de [re-]encaminamiento', '[E.9]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (67, 'Errores de secuencia',                             13, 'Errores de secuencia', '[E.10]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (68, 'Suplantación de la identidad del usuario',         13, 'Suplantación de la identidad del usuario', '[A.5]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (69, '[Re-]encaminamiento de mensajes',                  13, '[Re-]encaminamiento de mensajes', '[A.9]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (70, 'Alteración de secuencia',                          13, 'Alteración de secuencia', '[A.10]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (71, 'Acceso no autorizado',                             13, 'Acceso no autorizado', '[A.11]');
--INTERNET
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (72, 'Fallo de servicios de comunicaciones',             14, 'Fallo de servicios de comunicaciones', '[I.8]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (73, 'Alteración de la información',                     14, 'Alteración de la información', '[E.15]');
--CABLEADO
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (74, 'Contaminación medioambiental',                     15, 'Contaminación medioambiental', '[I.3]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (75, 'Contaminación electromagnética',                   15, 'Contaminación electromagnética', '[I.4]');
--MOBILIARIO
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (76, 'Contaminación medioambiental',                     16, 'Contaminación medioambiental', '[I.3]');
--SISTEMA DE VIGILANCIA
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (77, 'Contaminación medioambiental',                     17, 'Contaminación medioambiental', '[I.3]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (78, 'Condiciones inadecuadas de temperatura o humedad', 17, 'Condiciones inadecuadas de temperatura o humedad', '[I.7]');
--ANTENAS
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (79, 'Contaminación medioambiental',                     18, 'Contaminación medioambiental', '[I.3]');
--RADIOS
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (80, 'Contaminación medioambiental',                     19, 'Contaminación medioambiental', '[I.3]');
--SISTEMA ALIMENTACION ININTERRUMPIDA
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (81, 'Contaminación medioambiental',                     20, 'Contaminación medioambiental', '[I.3]');
--OTROS EQUIPOS AUXILIARES
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (82, 'Contaminación medioambiental',                     21, 'Contaminación medioambiental', '[I.3]');
--CD
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (83, 'Alteración de la información',                     22, 'Alteración de la información', '[E.15]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (84, 'Fugas de información',                             22, 'Fugas de información', '[E.19]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (85, 'Modificación de la información',                   22, 'Modificación de la información', '[A.15]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (86, 'Revelación de información',                        22, 'Revelación de información', '[A.19]');
--EDIFICIO
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (87, 'Fuego',                                            23, 'Fuego', '[N.1]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (88, 'Daños por agua',                                   23, 'Daños por agua', '[N.2]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (89, 'Desastres naturales',                              23, 'Desastres naturales', '[N.*]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (90, 'Terremotos',                                       23, 'Terremotos', '[N.*.4]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (91, 'Tsunamis',                                         23, 'Tsunamis', '[N.*.9]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (92, 'Calor extremo',                                    23, 'Calor extremo', '[N.*.11]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (93, 'Desastres industriales',                           23, 'Desastres industriales', '[I.*]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (94, 'Ocupación enemiga',                                23, 'Ocupación enemiga', '[A.27]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (95, 'Acceso no autorizado',                             23, 'Acceso no autorizado', '[A.11]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (96, 'Ocupación enemiga',                                23, 'Ocupación enemiga', '[A.27]');
--JEFATRURA DTO FINANCIERO
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (97, 'Enfermedad',                                       24, 'Enfermedad', '[E.28.1]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (98, 'Huelga',                                           24, 'Huelga', '[E.28.2]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (99, 'Extorsión',                                        24, 'Extorsión', '[A.29]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (100, 'Ingeniería social (picaresca)',                   24, 'Ingeniería social (picaresca)', '[A.30]');
--MANTENIMIENTO DB
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (101, 'Errores de configuración',                        25, 'Errores de configuración', '[E.4]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (102, 'A. personas externas que no necesitan conocerlo', 25, 'A. personas externas', '[E.19.3]');
--MANTENIMIENTO EQ
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (103, 'Errores de configuración',                       26, 'Errores de configuración', '[E.4]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (104, 'A personas externas que no necesitan conocerlo', 26, 'A personas externas', '[E.19.3]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (105, 'Ataque desde el interior',                       26, 'Ataque desde el interior', '[A.29.2]');
--JEFATURA DEL DPTOP DE CONTABILIDAD
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (106, 'Enfermedad',                                     27, 'Enfermedad', '[E.28.1]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (107, 'Huelga',                                         27, 'Huelga', '[E.28.2]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (108, 'Extorsión',                                      27, 'Extorsión', '[A.29]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (109, 'Ingeniería social (picaresca)',                  27, 'Ingeniería social (picaresca)', '[A.30]');
--JEFATURA DE COMPRAS
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (110, 'Huelga',                                         28, 'Huelga', '[E.28.2]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (111, 'Extorsión',                                      28, 'Extorsión', '[A.29]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (112, 'Ingeniería social (picaresca)',                  28, 'Ingeniería social (picaresca)', '[A.30]');
--JEFA PERSONAL
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (113, 'Enfermedad',                                     29, 'Enfermedad', '[E.28.1]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (114, 'Huelga',                                         29, 'Huelga', '[E.28.2]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (115, 'Extorsión',                                      29, 'Extorsión', '[A.29]');
--AUX CONTA
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (116, 'Enfermedad',                                     30, 'Enfermedad', '[E.28.1]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (117, 'Huelga',                                         30, 'Huelga', '[E.28.2]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (118, 'Extorsión',                                      30, 'Extorsión', '[A.29]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (119, 'Ingeniería social (picaresca)',                  30, 'Ingeniería social (picaresca)', '[A.30]');
--DIGITADORA
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (120, 'Enfermedad',                                     31, 'Enfermedad', '[E.28.1]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (121, 'Extorsión',                                      31, 'Extorsión', '[A.29]');
INSERT INTO public."Threats" ("Id", "Description", "GoodsId", "Name", initials) VALUES (122, 'Ingeniería social (picaresca)',                  31, 'Ingeniería social (picaresca)', '[A.30]');

INSERT INTO public."Appreciation" ("Id", "Description", "Initials", "Name") VALUES (1, 'ninguna ', 'P', 'Probabilidad de acurrencia');
INSERT INTO public."Appreciation" ("Id", "Description", "Initials", "Name") VALUES (2, 'ninguna ', 'D', 'Degradacion del valor');
INSERT INTO public."Appreciation" ("Id", "Description", "Initials", "Name") VALUES (3, 'ninguna ', 'I', 'Integridad de los datos');
INSERT INTO public."Appreciation" ("Id", "Description", "Initials", "Name") VALUES (4, 'ninguna ', 'C', 'Confidencialidad de los datos');
INSERT INTO public."Appreciation" ("Id", "Description", "Initials", "Name") VALUES (5, 'ninguna ', 'A', 'Autenticidad de los usuarios y de la información');
INSERT INTO public."Appreciation" ("Id", "Description", "Initials", "Name") VALUES (6, 'ninguna ', 'T', 'trazabilidad del servicio y de los datos');

INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (1, 2, 'MA', 'Muy alta');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (2, 2, 'A', 'Alta');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (3, 2, 'M', 'Media');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (4, 2, 'B', 'Baja');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (5, 2, 'MB', 'Muy baja');

INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (6, 1, 'CS', 'Alta');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (7, 1, 'MA', 'Media');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (8, 1, 'P', 'Casi seguro');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (9, 1, 'PP', 'Poco probable');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (10, 1, 'MB', 'Siglos');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (11, 1, 'MR', 'Muy rara');

INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (1, 3, 'MA', 'Muy alta');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (2, 3, 'A', 'Alta');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (3, 3, 'M', 'Media');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (4, 3, 'B', 'Baja');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (5, 3, 'MB', 'Muy baja');

INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (1, 4, 'MA', 'Muy alta');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (2, 4, 'A', 'Alta');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (3, 4, 'M', 'Media');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (4, 4, 'B', 'Baja');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (5, 4, 'MB', 'Muy baja');

INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (1, 5, 'MA', 'Muy alta');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (2, 5, 'A', 'Alta');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (3, 5, 'M', 'Media');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (4, 5, 'B', 'Baja');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (5, 5, 'MB', 'Muy baja');

INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (1, 6, 'MA', 'Muy alta');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (2, 6, 'A', 'Alta');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (3, 6, 'M', 'Media');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (4, 6, 'B', 'Baja');
INSERT INTO public."Measures" ("Id", "AppreciationId", "Initials", "Name") VALUES (5, 6, 'MB', 'Muy baja');