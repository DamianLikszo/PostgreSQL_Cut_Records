--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: magazyny; Type: TABLE; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE TABLE magazyny (
    numer integer NOT NULL,
    nazwa character varying(80)
);


ALTER TABLE public.magazyny OWNER TO "mn161323_Krawiec1";

--
-- Name: magazyny_numer_seq; Type: SEQUENCE; Schema: public; Owner: mn161323_Krawiec1
--

CREATE SEQUENCE magazyny_numer_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.magazyny_numer_seq OWNER TO "mn161323_Krawiec1";

--
-- Name: magazyny_numer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mn161323_Krawiec1
--

ALTER SEQUENCE magazyny_numer_seq OWNED BY magazyny.numer;


--
-- Name: magazyny_numer_seq; Type: SEQUENCE SET; Schema: public; Owner: mn161323_Krawiec1
--

SELECT pg_catalog.setval('magazyny_numer_seq', 1, false);


--
-- Name: pozycje; Type: TABLE; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE TABLE pozycje (
    numer integer NOT NULL,
    zlecenie bigint NOT NULL,
    towar bigint NOT NULL,
    vat smallint NOT NULL,
    cena numeric(10,2) NOT NULL,
    ilosc integer NOT NULL,
    wartosc numeric(10,2) DEFAULT 0 NOT NULL
);


ALTER TABLE public.pozycje OWNER TO "mn161323_Krawiec1";

--
-- Name: pozycja_numer_seq; Type: SEQUENCE; Schema: public; Owner: mn161323_Krawiec1
--

CREATE SEQUENCE pozycja_numer_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.pozycja_numer_seq OWNER TO "mn161323_Krawiec1";

--
-- Name: pozycja_numer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mn161323_Krawiec1
--

ALTER SEQUENCE pozycja_numer_seq OWNED BY pozycje.numer;


--
-- Name: pozycja_numer_seq; Type: SEQUENCE SET; Schema: public; Owner: mn161323_Krawiec1
--

SELECT pg_catalog.setval('pozycja_numer_seq', 1800, true);


--
-- Name: pracownicy; Type: TABLE; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE TABLE pracownicy (
    numer integer NOT NULL,
    imie character varying(120) NOT NULL,
    nazwisko character varying(120) NOT NULL,
    adres character varying(255) NOT NULL,
    data_rozpoczecia date NOT NULL,
    data_zakonczenia date,
    pesel character varying(11) NOT NULL,
    haslo character varying(32) NOT NULL,
    umowa bigint DEFAULT 1 NOT NULL
);


ALTER TABLE public.pracownicy OWNER TO "mn161323_Krawiec1";

--
-- Name: pracownik_numer_seq; Type: SEQUENCE; Schema: public; Owner: mn161323_Krawiec1
--

CREATE SEQUENCE pracownik_numer_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.pracownik_numer_seq OWNER TO "mn161323_Krawiec1";

--
-- Name: pracownik_numer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mn161323_Krawiec1
--

ALTER SEQUENCE pracownik_numer_seq OWNED BY pracownicy.numer;


--
-- Name: pracownik_numer_seq; Type: SEQUENCE SET; Schema: public; Owner: mn161323_Krawiec1
--

SELECT pg_catalog.setval('pracownik_numer_seq', 40, true);


--
-- Name: stany; Type: TABLE; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE TABLE stany (
    numer bigint NOT NULL,
    ilosc integer DEFAULT 0 NOT NULL,
    data_edycji timestamp without time zone,
    towar bigint NOT NULL,
    magazyn bigint NOT NULL
);


ALTER TABLE public.stany OWNER TO "mn161323_Krawiec1";

--
-- Name: statusy; Type: TABLE; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE TABLE statusy (
    numer integer NOT NULL,
    nazwa character varying(50)
);


ALTER TABLE public.statusy OWNER TO "mn161323_Krawiec1";

--
-- Name: statusy_numer_seq; Type: SEQUENCE; Schema: public; Owner: mn161323_Krawiec1
--

CREATE SEQUENCE statusy_numer_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.statusy_numer_seq OWNER TO "mn161323_Krawiec1";

--
-- Name: statusy_numer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mn161323_Krawiec1
--

ALTER SEQUENCE statusy_numer_seq OWNED BY statusy.numer;


--
-- Name: statusy_numer_seq; Type: SEQUENCE SET; Schema: public; Owner: mn161323_Krawiec1
--

SELECT pg_catalog.setval('statusy_numer_seq', 7, true);


--
-- Name: towary; Type: TABLE; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE TABLE towary (
    numer integer NOT NULL,
    symbol character varying(60) NOT NULL,
    nazwa character varying(255) NOT NULL,
    data_edycji timestamp without time zone DEFAULT now() NOT NULL,
    cena numeric(10,2) DEFAULT 0.00 NOT NULL,
    aktywny boolean DEFAULT true NOT NULL
);


ALTER TABLE public.towary OWNER TO "mn161323_Krawiec1";

--
-- Name: towar_numer_seq; Type: SEQUENCE; Schema: public; Owner: mn161323_Krawiec1
--

CREATE SEQUENCE towar_numer_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.towar_numer_seq OWNER TO "mn161323_Krawiec1";

--
-- Name: towar_numer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mn161323_Krawiec1
--

ALTER SEQUENCE towar_numer_seq OWNED BY towary.numer;


--
-- Name: towar_numer_seq; Type: SEQUENCE SET; Schema: public; Owner: mn161323_Krawiec1
--

SELECT pg_catalog.setval('towar_numer_seq', 110, true);


--
-- Name: umowy; Type: TABLE; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE TABLE umowy (
    numer integer NOT NULL,
    nazwa character varying(80)
);


ALTER TABLE public.umowy OWNER TO "mn161323_Krawiec1";

--
-- Name: umowy_numer_seq; Type: SEQUENCE; Schema: public; Owner: mn161323_Krawiec1
--

CREATE SEQUENCE umowy_numer_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.umowy_numer_seq OWNER TO "mn161323_Krawiec1";

--
-- Name: umowy_numer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mn161323_Krawiec1
--

ALTER SEQUENCE umowy_numer_seq OWNED BY umowy.numer;


--
-- Name: umowy_numer_seq; Type: SEQUENCE SET; Schema: public; Owner: mn161323_Krawiec1
--

SELECT pg_catalog.setval('umowy_numer_seq', 4, true);


--
-- Name: zlecenia; Type: TABLE; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE TABLE zlecenia (
    numer integer NOT NULL,
    data_utworzenia timestamp without time zone DEFAULT now() NOT NULL,
    data_zakonczenia timestamp without time zone,
    status bigint NOT NULL,
    odbiorca character varying(120) NOT NULL,
    adres character varying(250) NOT NULL,
    pracownik bigint,
    wartosc numeric(10,2) DEFAULT 0 NOT NULL,
    magazyn bigint NOT NULL
);


ALTER TABLE public.zlecenia OWNER TO "mn161323_Krawiec1";

--
-- Name: zlecenie_numer_seq; Type: SEQUENCE; Schema: public; Owner: mn161323_Krawiec1
--

CREATE SEQUENCE zlecenie_numer_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.zlecenie_numer_seq OWNER TO "mn161323_Krawiec1";

--
-- Name: zlecenie_numer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mn161323_Krawiec1
--

ALTER SEQUENCE zlecenie_numer_seq OWNED BY zlecenia.numer;


--
-- Name: zlecenie_numer_seq; Type: SEQUENCE SET; Schema: public; Owner: mn161323_Krawiec1
--

SELECT pg_catalog.setval('zlecenie_numer_seq', 220, true);


--
-- Name: numer; Type: DEFAULT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY magazyny ALTER COLUMN numer SET DEFAULT nextval('magazyny_numer_seq'::regclass);


--
-- Name: numer; Type: DEFAULT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY pozycje ALTER COLUMN numer SET DEFAULT nextval('pozycja_numer_seq'::regclass);


--
-- Name: numer; Type: DEFAULT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY pracownicy ALTER COLUMN numer SET DEFAULT nextval('pracownik_numer_seq'::regclass);


--
-- Name: numer; Type: DEFAULT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY statusy ALTER COLUMN numer SET DEFAULT nextval('statusy_numer_seq'::regclass);


--
-- Name: numer; Type: DEFAULT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY towary ALTER COLUMN numer SET DEFAULT nextval('towar_numer_seq'::regclass);


--
-- Name: numer; Type: DEFAULT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY umowy ALTER COLUMN numer SET DEFAULT nextval('umowy_numer_seq'::regclass);


--
-- Name: numer; Type: DEFAULT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY zlecenia ALTER COLUMN numer SET DEFAULT nextval('zlecenie_numer_seq'::regclass);


--
-- Data for Name: magazyny; Type: TABLE DATA; Schema: public; Owner: mn161323_Krawiec1
--

INSERT INTO magazyny VALUES (1, 'Magazyn Główny');


--
-- Data for Name: pozycje; Type: TABLE DATA; Schema: public; Owner: mn161323_Krawiec1
--

INSERT INTO pozycje VALUES (551, 51, 93, 23, 114.00, 1, 140.22);
INSERT INTO pozycje VALUES (552, 51, 47, 23, 145.00, 1, 178.35);
INSERT INTO pozycje VALUES (553, 52, 25, 23, 172.00, 4, 846.24);
INSERT INTO pozycje VALUES (554, 52, 51, 23, 126.00, 2, 309.96);
INSERT INTO pozycje VALUES (555, 53, 93, 23, 150.00, 3, 553.50);
INSERT INTO pozycje VALUES (556, 53, 66, 23, 179.00, 4, 880.68);
INSERT INTO pozycje VALUES (557, 54, 10, 23, 150.00, 2, 369.00);
INSERT INTO pozycje VALUES (558, 54, 74, 23, 103.00, 3, 380.07);
INSERT INTO pozycje VALUES (559, 54, 46, 23, 110.00, 2, 270.60);
INSERT INTO pozycje VALUES (560, 54, 60, 23, 152.00, 1, 186.96);
INSERT INTO pozycje VALUES (561, 55, 77, 23, 134.00, 1, 164.82);
INSERT INTO pozycje VALUES (562, 55, 67, 23, 183.00, 2, 450.18);
INSERT INTO pozycje VALUES (563, 56, 50, 23, 119.00, 1, 146.37);
INSERT INTO pozycje VALUES (564, 56, 25, 23, 176.00, 4, 865.92);
INSERT INTO pozycje VALUES (565, 57, 23, 23, 153.00, 4, 752.76);
INSERT INTO pozycje VALUES (566, 57, 90, 23, 145.00, 4, 713.40);
INSERT INTO pozycje VALUES (567, 58, 40, 23, 176.00, 4, 865.92);
INSERT INTO pozycje VALUES (568, 58, 73, 23, 106.00, 4, 521.52);
INSERT INTO pozycje VALUES (569, 58, 79, 23, 190.00, 1, 233.70);
INSERT INTO pozycje VALUES (570, 59, 19, 23, 185.00, 4, 910.20);
INSERT INTO pozycje VALUES (571, 59, 29, 23, 183.00, 3, 675.27);
INSERT INTO pozycje VALUES (572, 60, 5, 23, 152.00, 5, 934.80);
INSERT INTO pozycje VALUES (573, 60, 91, 23, 181.00, 2, 445.26);
INSERT INTO pozycje VALUES (574, 60, 9, 23, 144.00, 4, 708.48);
INSERT INTO pozycje VALUES (575, 71, 82, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (576, 71, 26, 23, 113.00, 3, 416.97);
INSERT INTO pozycje VALUES (577, 72, 27, 23, 112.00, 2, 275.52);
INSERT INTO pozycje VALUES (578, 73, 69, 23, 180.00, 5, 1107.00);
INSERT INTO pozycje VALUES (579, 73, 57, 23, 154.00, 4, 757.68);
INSERT INTO pozycje VALUES (580, 73, 26, 23, 171.00, 5, 1051.65);
INSERT INTO pozycje VALUES (581, 73, 5, 23, 167.00, 2, 410.82);
INSERT INTO pozycje VALUES (582, 74, 78, 23, 126.00, 1, 154.98);
INSERT INTO pozycje VALUES (583, 75, 75, 23, 183.00, 2, 450.18);
INSERT INTO pozycje VALUES (584, 75, 17, 23, 143.00, 1, 175.89);
INSERT INTO pozycje VALUES (585, 76, 17, 23, 138.00, 3, 509.22);
INSERT INTO pozycje VALUES (586, 76, 92, 23, 164.00, 2, 403.44);
INSERT INTO pozycje VALUES (587, 77, 8, 23, 168.00, 4, 826.56);
INSERT INTO pozycje VALUES (588, 77, 41, 23, 125.00, 5, 768.75);
INSERT INTO pozycje VALUES (589, 77, 61, 23, 109.00, 5, 670.35);
INSERT INTO pozycje VALUES (590, 78, 24, 23, 153.00, 2, 376.38);
INSERT INTO pozycje VALUES (591, 78, 62, 23, 151.00, 5, 928.65);
INSERT INTO pozycje VALUES (592, 78, 20, 23, 102.00, 3, 376.38);
INSERT INTO pozycje VALUES (593, 78, 84, 23, 186.00, 3, 686.34);
INSERT INTO pozycje VALUES (594, 78, 58, 23, 145.00, 2, 356.70);
INSERT INTO pozycje VALUES (595, 78, 57, 23, 196.00, 5, 1205.40);
INSERT INTO pozycje VALUES (596, 79, 11, 23, 173.00, 3, 638.37);
INSERT INTO pozycje VALUES (597, 79, 88, 23, 103.00, 4, 506.76);
INSERT INTO pozycje VALUES (598, 80, 57, 23, 161.00, 5, 990.15);
INSERT INTO pozycje VALUES (599, 80, 25, 23, 107.00, 2, 263.22);
INSERT INTO pozycje VALUES (600, 80, 38, 23, 105.00, 4, 516.60);
INSERT INTO pozycje VALUES (45, 14, 32, 23, 200.00, 3, 738.00);
INSERT INTO pozycje VALUES (46, 14, 21, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (47, 15, 8, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (48, 15, 55, 23, 50.00, 3, 184.50);
INSERT INTO pozycje VALUES (49, 15, 68, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (50, 15, 93, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (51, 16, 52, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (52, 17, 78, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (53, 17, 64, 23, 50.00, 3, 184.50);
INSERT INTO pozycje VALUES (54, 17, 71, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (55, 17, 23, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (56, 18, 56, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (57, 18, 87, 23, 50.00, 3, 184.50);
INSERT INTO pozycje VALUES (58, 18, 12, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (59, 19, 34, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (60, 19, 21, 23, 50.00, 3, 184.50);
INSERT INTO pozycje VALUES (61, 19, 67, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (62, 19, 87, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (63, 19, 99, 23, 210.00, 3, 774.90);
INSERT INTO pozycje VALUES (64, 20, 84, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (65, 21, 4, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (66, 21, 8, 23, 150.00, 3, 553.50);
INSERT INTO pozycje VALUES (67, 22, 58, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (68, 22, 98, 23, 150.00, 3, 553.50);
INSERT INTO pozycje VALUES (69, 22, 32, 23, 149.00, 1, 183.27);
INSERT INTO pozycje VALUES (70, 22, 56, 23, 139.00, 3, 512.91);
INSERT INTO pozycje VALUES (71, 23, 49, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (72, 23, 62, 23, 150.00, 3, 553.50);
INSERT INTO pozycje VALUES (73, 23, 53, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (74, 24, 61, 23, 139.00, 3, 512.91);
INSERT INTO pozycje VALUES (75, 25, 38, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (76, 25, 18, 23, 150.00, 3, 553.50);
INSERT INTO pozycje VALUES (77, 25, 28, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (78, 25, 30, 23, 139.00, 3, 512.91);
INSERT INTO pozycje VALUES (79, 26, 11, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (80, 26, 43, 23, 139.00, 3, 512.91);
INSERT INTO pozycje VALUES (81, 27, 76, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (82, 27, 32, 23, 150.00, 3, 553.50);
INSERT INTO pozycje VALUES (83, 27, 1, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (84, 27, 4, 23, 139.00, 3, 512.91);
INSERT INTO pozycje VALUES (85, 28, 43, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (86, 28, 97, 23, 150.00, 3, 553.50);
INSERT INTO pozycje VALUES (87, 28, 67, 23, 149.00, 1, 183.27);
INSERT INTO pozycje VALUES (88, 29, 8, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (89, 30, 15, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (90, 30, 11, 23, 210.00, 3, 774.90);
INSERT INTO pozycje VALUES (91, 31, 19, 23, 100.00, 3, 369.00);
INSERT INTO pozycje VALUES (92, 32, 18, 23, 200.00, 3, 738.00);
INSERT INTO pozycje VALUES (93, 33, 15, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (94, 33, 1, 23, 150.00, 3, 553.50);
INSERT INTO pozycje VALUES (95, 34, 6, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (96, 34, 9, 23, 150.00, 3, 553.50);
INSERT INTO pozycje VALUES (97, 34, 4, 23, 139.00, 2, 341.94);
INSERT INTO pozycje VALUES (98, 35, 78, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (99, 35, 43, 23, 139.00, 2, 341.94);
INSERT INTO pozycje VALUES (100, 36, 65, 23, 200.00, 3, 738.00);
INSERT INTO pozycje VALUES (101, 36, 33, 23, 149.00, 1, 183.27);
INSERT INTO pozycje VALUES (102, 36, 22, 23, 139.00, 2, 341.94);
INSERT INTO pozycje VALUES (103, 37, 21, 23, 139.00, 2, 341.94);
INSERT INTO pozycje VALUES (104, 38, 95, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (105, 38, 78, 23, 150.00, 3, 553.50);
INSERT INTO pozycje VALUES (106, 38, 43, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (107, 39, 76, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (108, 39, 34, 23, 150.00, 3, 553.50);
INSERT INTO pozycje VALUES (109, 39, 55, 23, 220.00, 1, 270.60);
INSERT INTO pozycje VALUES (110, 39, 109, 23, 100.00, 3, 369.00);
INSERT INTO pozycje VALUES (111, 40, 110, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (112, 40, 56, 23, 139.00, 3, 512.91);
INSERT INTO pozycje VALUES (113, 41, 51, 23, 105.00, 2, 258.30);
INSERT INTO pozycje VALUES (114, 41, 10, 23, 190.00, 2, 467.40);
INSERT INTO pozycje VALUES (115, 41, 95, 23, 133.00, 4, 654.36);
INSERT INTO pozycje VALUES (116, 42, 22, 23, 102.00, 5, 627.30);
INSERT INTO pozycje VALUES (117, 42, 44, 23, 177.00, 3, 653.13);
INSERT INTO pozycje VALUES (118, 43, 37, 23, 153.00, 5, 940.95);
INSERT INTO pozycje VALUES (119, 43, 59, 23, 161.00, 1, 198.03);
INSERT INTO pozycje VALUES (120, 43, 63, 23, 152.00, 5, 934.80);
INSERT INTO pozycje VALUES (121, 43, 82, 23, 164.00, 2, 403.44);
INSERT INTO pozycje VALUES (122, 44, 64, 23, 141.00, 1, 173.43);
INSERT INTO pozycje VALUES (123, 44, 24, 23, 145.00, 4, 713.40);
INSERT INTO pozycje VALUES (124, 45, 21, 23, 115.00, 5, 707.25);
INSERT INTO pozycje VALUES (125, 46, 1, 23, 145.00, 3, 535.05);
INSERT INTO pozycje VALUES (126, 46, 55, 23, 155.00, 1, 190.65);
INSERT INTO pozycje VALUES (127, 46, 99, 23, 116.00, 2, 285.36);
INSERT INTO pozycje VALUES (128, 47, 65, 23, 129.00, 5, 793.35);
INSERT INTO pozycje VALUES (129, 47, 11, 23, 195.00, 5, 1199.25);
INSERT INTO pozycje VALUES (130, 47, 74, 23, 152.00, 3, 560.88);
INSERT INTO pozycje VALUES (131, 47, 38, 23, 122.00, 2, 300.12);
INSERT INTO pozycje VALUES (132, 47, 40, 23, 145.00, 4, 713.40);
INSERT INTO pozycje VALUES (133, 47, 31, 23, 164.00, 2, 403.44);
INSERT INTO pozycje VALUES (134, 48, 46, 23, 141.00, 3, 520.29);
INSERT INTO pozycje VALUES (135, 48, 30, 23, 146.00, 3, 538.74);
INSERT INTO pozycje VALUES (136, 48, 85, 23, 145.00, 5, 891.75);
INSERT INTO pozycje VALUES (137, 49, 13, 23, 174.00, 3, 642.06);
INSERT INTO pozycje VALUES (138, 49, 47, 23, 167.00, 4, 821.64);
INSERT INTO pozycje VALUES (139, 49, 51, 23, 166.00, 5, 1020.90);
INSERT INTO pozycje VALUES (140, 50, 27, 23, 136.00, 4, 669.12);
INSERT INTO pozycje VALUES (141, 50, 38, 23, 108.00, 4, 531.36);
INSERT INTO pozycje VALUES (142, 61, 86, 23, 113.00, 5, 694.95);
INSERT INTO pozycje VALUES (143, 61, 59, 23, 113.00, 4, 555.96);
INSERT INTO pozycje VALUES (144, 61, 89, 23, 136.00, 4, 669.12);
INSERT INTO pozycje VALUES (145, 62, 69, 23, 195.00, 5, 1199.25);
INSERT INTO pozycje VALUES (146, 62, 56, 23, 109.00, 4, 536.28);
INSERT INTO pozycje VALUES (147, 63, 53, 23, 118.00, 4, 580.56);
INSERT INTO pozycje VALUES (148, 63, 65, 23, 106.00, 1, 130.38);
INSERT INTO pozycje VALUES (149, 63, 22, 23, 194.00, 1, 238.62);
INSERT INTO pozycje VALUES (150, 63, 19, 23, 138.00, 4, 678.96);
INSERT INTO pozycje VALUES (151, 64, 25, 23, 126.00, 3, 464.94);
INSERT INTO pozycje VALUES (152, 64, 3, 23, 126.00, 2, 309.96);
INSERT INTO pozycje VALUES (153, 65, 32, 23, 120.00, 3, 442.80);
INSERT INTO pozycje VALUES (154, 66, 33, 23, 132.00, 1, 162.36);
INSERT INTO pozycje VALUES (155, 66, 27, 23, 113.00, 4, 555.96);
INSERT INTO pozycje VALUES (156, 66, 66, 23, 189.00, 2, 464.94);
INSERT INTO pozycje VALUES (157, 67, 51, 23, 145.00, 3, 535.05);
INSERT INTO pozycje VALUES (158, 67, 15, 23, 186.00, 5, 1143.90);
INSERT INTO pozycje VALUES (159, 67, 68, 23, 141.00, 3, 520.29);
INSERT INTO pozycje VALUES (160, 67, 37, 23, 168.00, 2, 413.28);
INSERT INTO pozycje VALUES (161, 67, 49, 23, 145.00, 3, 535.05);
INSERT INTO pozycje VALUES (162, 67, 84, 23, 167.00, 5, 1027.05);
INSERT INTO pozycje VALUES (163, 68, 57, 23, 161.00, 5, 990.15);
INSERT INTO pozycje VALUES (164, 68, 89, 23, 177.00, 2, 435.42);
INSERT INTO pozycje VALUES (165, 68, 65, 23, 107.00, 3, 394.83);
INSERT INTO pozycje VALUES (166, 69, 29, 23, 107.00, 4, 526.44);
INSERT INTO pozycje VALUES (167, 69, 28, 23, 114.00, 2, 280.44);
INSERT INTO pozycje VALUES (168, 69, 69, 23, 145.00, 4, 713.40);
INSERT INTO pozycje VALUES (169, 70, 6, 23, 131.00, 2, 322.26);
INSERT INTO pozycje VALUES (170, 70, 42, 23, 180.00, 3, 664.20);
INSERT INTO pozycje VALUES (171, 81, 20, 23, 122.00, 2, 300.12);
INSERT INTO pozycje VALUES (172, 81, 59, 23, 177.00, 1, 217.71);
INSERT INTO pozycje VALUES (173, 81, 58, 23, 169.00, 2, 415.74);
INSERT INTO pozycje VALUES (174, 81, 39, 23, 148.00, 3, 546.12);
INSERT INTO pozycje VALUES (175, 82, 78, 23, 163.00, 4, 801.96);
INSERT INTO pozycje VALUES (176, 82, 99, 23, 113.00, 4, 555.96);
INSERT INTO pozycje VALUES (177, 83, 61, 23, 114.00, 3, 420.66);
INSERT INTO pozycje VALUES (178, 83, 57, 23, 166.00, 4, 816.72);
INSERT INTO pozycje VALUES (179, 83, 45, 23, 153.00, 3, 564.57);
INSERT INTO pozycje VALUES (180, 83, 1, 23, 109.00, 5, 670.35);
INSERT INTO pozycje VALUES (181, 84, 21, 23, 102.00, 1, 125.46);
INSERT INTO pozycje VALUES (182, 84, 16, 23, 158.00, 3, 583.02);
INSERT INTO pozycje VALUES (183, 85, 78, 23, 129.00, 1, 158.67);
INSERT INTO pozycje VALUES (184, 86, 93, 23, 119.00, 2, 292.74);
INSERT INTO pozycje VALUES (185, 86, 56, 23, 163.00, 5, 1002.45);
INSERT INTO pozycje VALUES (186, 86, 85, 23, 113.00, 1, 138.99);
INSERT INTO pozycje VALUES (187, 87, 94, 23, 165.00, 3, 608.85);
INSERT INTO pozycje VALUES (188, 88, 50, 23, 125.00, 2, 307.50);
INSERT INTO pozycje VALUES (189, 88, 78, 23, 170.00, 5, 1045.50);
INSERT INTO pozycje VALUES (190, 88, 76, 23, 142.00, 3, 523.98);
INSERT INTO pozycje VALUES (191, 89, 44, 23, 141.00, 4, 693.72);
INSERT INTO pozycje VALUES (192, 89, 25, 23, 195.00, 5, 1199.25);
INSERT INTO pozycje VALUES (193, 89, 1, 23, 133.00, 3, 490.77);
INSERT INTO pozycje VALUES (194, 89, 29, 23, 129.00, 1, 158.67);
INSERT INTO pozycje VALUES (195, 90, 24, 23, 153.00, 4, 752.76);
INSERT INTO pozycje VALUES (196, 90, 29, 23, 126.00, 4, 619.92);
INSERT INTO pozycje VALUES (197, 91, 54, 23, 110.00, 1, 135.30);
INSERT INTO pozycje VALUES (198, 91, 82, 23, 130.00, 5, 799.50);
INSERT INTO pozycje VALUES (199, 91, 100, 23, 147.00, 3, 542.43);
INSERT INTO pozycje VALUES (200, 92, 36, 23, 109.00, 3, 402.21);
INSERT INTO pozycje VALUES (201, 92, 11, 23, 168.00, 4, 826.56);
INSERT INTO pozycje VALUES (202, 93, 85, 23, 178.00, 1, 218.94);
INSERT INTO pozycje VALUES (203, 93, 45, 23, 160.00, 3, 590.40);
INSERT INTO pozycje VALUES (204, 93, 4, 23, 109.00, 3, 402.21);
INSERT INTO pozycje VALUES (205, 93, 89, 23, 167.00, 2, 410.82);
INSERT INTO pozycje VALUES (206, 94, 49, 23, 177.00, 5, 1088.55);
INSERT INTO pozycje VALUES (207, 94, 82, 23, 114.00, 4, 560.88);
INSERT INTO pozycje VALUES (208, 95, 40, 23, 183.00, 5, 1125.45);
INSERT INTO pozycje VALUES (209, 96, 38, 23, 135.00, 1, 166.05);
INSERT INTO pozycje VALUES (210, 96, 29, 23, 150.00, 1, 184.50);
INSERT INTO pozycje VALUES (211, 96, 73, 23, 148.00, 4, 728.16);
INSERT INTO pozycje VALUES (212, 97, 9, 23, 167.00, 4, 821.64);
INSERT INTO pozycje VALUES (213, 97, 77, 23, 102.00, 5, 627.30);
INSERT INTO pozycje VALUES (214, 97, 41, 23, 143.00, 4, 703.56);
INSERT INTO pozycje VALUES (215, 97, 67, 23, 172.00, 1, 211.56);
INSERT INTO pozycje VALUES (216, 97, 61, 23, 172.00, 5, 1057.80);
INSERT INTO pozycje VALUES (217, 97, 54, 23, 196.00, 4, 964.32);
INSERT INTO pozycje VALUES (218, 98, 26, 23, 130.00, 5, 799.50);
INSERT INTO pozycje VALUES (219, 98, 43, 23, 190.00, 5, 1168.50);
INSERT INTO pozycje VALUES (220, 98, 29, 23, 103.00, 3, 380.07);
INSERT INTO pozycje VALUES (221, 99, 17, 23, 146.00, 2, 359.16);
INSERT INTO pozycje VALUES (222, 99, 85, 23, 131.00, 1, 161.13);
INSERT INTO pozycje VALUES (223, 99, 22, 23, 117.00, 5, 719.55);
INSERT INTO pozycje VALUES (224, 100, 49, 23, 134.00, 2, 329.64);
INSERT INTO pozycje VALUES (225, 100, 48, 23, 162.00, 3, 597.78);
INSERT INTO pozycje VALUES (226, 101, 40, 23, 113.00, 2, 277.98);
INSERT INTO pozycje VALUES (227, 101, 42, 23, 122.00, 4, 600.24);
INSERT INTO pozycje VALUES (228, 101, 85, 23, 118.00, 4, 580.56);
INSERT INTO pozycje VALUES (229, 102, 59, 23, 147.00, 1, 180.81);
INSERT INTO pozycje VALUES (230, 102, 56, 23, 105.00, 3, 387.45);
INSERT INTO pozycje VALUES (231, 103, 32, 23, 128.00, 2, 314.88);
INSERT INTO pozycje VALUES (232, 104, 3, 23, 172.00, 3, 634.68);
INSERT INTO pozycje VALUES (233, 104, 47, 23, 108.00, 1, 132.84);
INSERT INTO pozycje VALUES (234, 105, 58, 23, 117.00, 1, 143.91);
INSERT INTO pozycje VALUES (235, 106, 24, 23, 145.00, 4, 713.40);
INSERT INTO pozycje VALUES (236, 106, 26, 23, 156.00, 1, 191.88);
INSERT INTO pozycje VALUES (237, 106, 25, 23, 124.00, 4, 610.08);
INSERT INTO pozycje VALUES (238, 107, 40, 23, 190.00, 3, 701.10);
INSERT INTO pozycje VALUES (239, 107, 70, 23, 150.00, 1, 184.50);
INSERT INTO pozycje VALUES (240, 107, 87, 23, 194.00, 1, 238.62);
INSERT INTO pozycje VALUES (241, 107, 60, 23, 127.00, 2, 312.42);
INSERT INTO pozycje VALUES (242, 107, 3, 23, 167.00, 3, 616.23);
INSERT INTO pozycje VALUES (243, 107, 24, 23, 131.00, 1, 161.13);
INSERT INTO pozycje VALUES (244, 108, 50, 23, 188.00, 5, 1156.20);
INSERT INTO pozycje VALUES (245, 108, 76, 23, 155.00, 4, 762.60);
INSERT INTO pozycje VALUES (246, 108, 38, 23, 169.00, 1, 207.87);
INSERT INTO pozycje VALUES (247, 109, 77, 23, 102.00, 1, 125.46);
INSERT INTO pozycje VALUES (248, 109, 30, 23, 143.00, 5, 879.45);
INSERT INTO pozycje VALUES (249, 109, 93, 23, 183.00, 3, 675.27);
INSERT INTO pozycje VALUES (250, 110, 32, 23, 173.00, 2, 425.58);
INSERT INTO pozycje VALUES (251, 110, 43, 23, 123.00, 3, 453.87);
INSERT INTO pozycje VALUES (252, 111, 11, 23, 122.00, 2, 300.12);
INSERT INTO pozycje VALUES (253, 111, 52, 23, 165.00, 1, 202.95);
INSERT INTO pozycje VALUES (254, 111, 56, 23, 176.00, 5, 1082.40);
INSERT INTO pozycje VALUES (255, 112, 98, 23, 160.00, 2, 393.60);
INSERT INTO pozycje VALUES (256, 112, 11, 23, 134.00, 4, 659.28);
INSERT INTO pozycje VALUES (257, 113, 29, 23, 127.00, 1, 156.21);
INSERT INTO pozycje VALUES (258, 113, 6, 23, 189.00, 3, 697.41);
INSERT INTO pozycje VALUES (259, 113, 34, 23, 141.00, 1, 173.43);
INSERT INTO pozycje VALUES (260, 113, 75, 23, 135.00, 5, 830.25);
INSERT INTO pozycje VALUES (261, 114, 64, 23, 173.00, 1, 212.79);
INSERT INTO pozycje VALUES (262, 114, 76, 23, 165.00, 2, 405.90);
INSERT INTO pozycje VALUES (263, 115, 67, 23, 197.00, 3, 726.93);
INSERT INTO pozycje VALUES (264, 116, 91, 23, 141.00, 2, 346.86);
INSERT INTO pozycje VALUES (265, 116, 74, 23, 149.00, 4, 733.08);
INSERT INTO pozycje VALUES (266, 116, 55, 23, 127.00, 5, 781.05);
INSERT INTO pozycje VALUES (267, 117, 83, 23, 140.00, 5, 861.00);
INSERT INTO pozycje VALUES (268, 117, 46, 23, 110.00, 2, 270.60);
INSERT INTO pozycje VALUES (269, 117, 99, 23, 149.00, 5, 916.35);
INSERT INTO pozycje VALUES (270, 117, 27, 23, 168.00, 5, 1033.20);
INSERT INTO pozycje VALUES (271, 117, 98, 23, 182.00, 3, 671.58);
INSERT INTO pozycje VALUES (272, 117, 44, 23, 110.00, 1, 135.30);
INSERT INTO pozycje VALUES (273, 118, 36, 23, 152.00, 4, 747.84);
INSERT INTO pozycje VALUES (274, 118, 82, 23, 121.00, 1, 148.83);
INSERT INTO pozycje VALUES (275, 118, 93, 23, 191.00, 5, 1174.65);
INSERT INTO pozycje VALUES (276, 119, 100, 23, 163.00, 1, 200.49);
INSERT INTO pozycje VALUES (277, 119, 96, 23, 118.00, 4, 580.56);
INSERT INTO pozycje VALUES (278, 119, 24, 23, 156.00, 1, 191.88);
INSERT INTO pozycje VALUES (279, 120, 29, 23, 164.00, 5, 1008.60);
INSERT INTO pozycje VALUES (280, 120, 84, 23, 139.00, 5, 854.85);
INSERT INTO pozycje VALUES (281, 121, 83, 23, 183.00, 2, 450.18);
INSERT INTO pozycje VALUES (282, 121, 85, 23, 156.00, 3, 575.64);
INSERT INTO pozycje VALUES (283, 121, 84, 23, 151.00, 5, 928.65);
INSERT INTO pozycje VALUES (284, 121, 81, 23, 139.00, 5, 854.85);
INSERT INTO pozycje VALUES (285, 122, 84, 23, 178.00, 3, 656.82);
INSERT INTO pozycje VALUES (286, 122, 6, 23, 117.00, 2, 287.82);
INSERT INTO pozycje VALUES (287, 123, 79, 23, 141.00, 4, 693.72);
INSERT INTO pozycje VALUES (288, 123, 5, 23, 150.00, 4, 738.00);
INSERT INTO pozycje VALUES (289, 123, 98, 23, 142.00, 4, 698.64);
INSERT INTO pozycje VALUES (290, 123, 35, 23, 151.00, 3, 557.19);
INSERT INTO pozycje VALUES (291, 124, 2, 23, 191.00, 1, 234.93);
INSERT INTO pozycje VALUES (292, 124, 76, 23, 135.00, 5, 830.25);
INSERT INTO pozycje VALUES (293, 125, 100, 23, 171.00, 3, 630.99);
INSERT INTO pozycje VALUES (294, 126, 62, 23, 196.00, 5, 1205.40);
INSERT INTO pozycje VALUES (295, 126, 73, 23, 127.00, 3, 468.63);
INSERT INTO pozycje VALUES (296, 126, 98, 23, 129.00, 1, 158.67);
INSERT INTO pozycje VALUES (297, 127, 19, 23, 138.00, 2, 339.48);
INSERT INTO pozycje VALUES (298, 128, 98, 23, 134.00, 3, 494.46);
INSERT INTO pozycje VALUES (299, 128, 26, 23, 181.00, 4, 890.52);
INSERT INTO pozycje VALUES (300, 128, 7, 23, 103.00, 5, 633.45);
INSERT INTO pozycje VALUES (301, 129, 9, 23, 157.00, 3, 579.33);
INSERT INTO pozycje VALUES (302, 129, 99, 23, 192.00, 4, 944.64);
INSERT INTO pozycje VALUES (303, 129, 10, 23, 135.00, 5, 830.25);
INSERT INTO pozycje VALUES (304, 129, 98, 23, 129.00, 1, 158.67);
INSERT INTO pozycje VALUES (305, 130, 20, 23, 164.00, 1, 201.72);
INSERT INTO pozycje VALUES (306, 130, 47, 23, 178.00, 5, 1094.70);
INSERT INTO pozycje VALUES (307, 131, 49, 23, 171.00, 5, 1051.65);
INSERT INTO pozycje VALUES (308, 131, 82, 23, 171.00, 2, 420.66);
INSERT INTO pozycje VALUES (309, 131, 90, 23, 150.00, 5, 922.50);
INSERT INTO pozycje VALUES (310, 132, 16, 23, 182.00, 1, 223.86);
INSERT INTO pozycje VALUES (311, 132, 25, 23, 129.00, 5, 793.35);
INSERT INTO pozycje VALUES (312, 133, 93, 23, 146.00, 2, 359.16);
INSERT INTO pozycje VALUES (313, 133, 36, 23, 113.00, 4, 555.96);
INSERT INTO pozycje VALUES (314, 133, 10, 23, 165.00, 3, 608.85);
INSERT INTO pozycje VALUES (315, 133, 93, 23, 107.00, 3, 394.83);
INSERT INTO pozycje VALUES (316, 134, 48, 23, 178.00, 2, 437.88);
INSERT INTO pozycje VALUES (317, 134, 5, 23, 187.00, 4, 920.04);
INSERT INTO pozycje VALUES (318, 135, 14, 23, 125.00, 3, 461.25);
INSERT INTO pozycje VALUES (319, 136, 13, 23, 126.00, 3, 464.94);
INSERT INTO pozycje VALUES (320, 136, 39, 23, 180.00, 4, 885.60);
INSERT INTO pozycje VALUES (321, 136, 41, 23, 140.00, 2, 344.40);
INSERT INTO pozycje VALUES (322, 137, 52, 23, 193.00, 1, 237.39);
INSERT INTO pozycje VALUES (323, 137, 95, 23, 135.00, 5, 830.25);
INSERT INTO pozycje VALUES (324, 137, 62, 23, 134.00, 3, 494.46);
INSERT INTO pozycje VALUES (325, 137, 73, 23, 151.00, 1, 185.73);
INSERT INTO pozycje VALUES (326, 137, 94, 23, 137.00, 1, 168.51);
INSERT INTO pozycje VALUES (327, 137, 52, 23, 149.00, 4, 733.08);
INSERT INTO pozycje VALUES (328, 138, 28, 23, 143.00, 1, 175.89);
INSERT INTO pozycje VALUES (329, 138, 53, 23, 158.00, 3, 583.02);
INSERT INTO pozycje VALUES (330, 138, 25, 23, 109.00, 1, 134.07);
INSERT INTO pozycje VALUES (331, 139, 97, 23, 142.00, 4, 698.64);
INSERT INTO pozycje VALUES (332, 139, 59, 23, 139.00, 3, 512.91);
INSERT INTO pozycje VALUES (333, 140, 47, 23, 167.00, 5, 1027.05);
INSERT INTO pozycje VALUES (334, 140, 80, 23, 138.00, 1, 169.74);
INSERT INTO pozycje VALUES (335, 141, 71, 23, 129.00, 5, 793.35);
INSERT INTO pozycje VALUES (336, 141, 47, 23, 136.00, 3, 501.84);
INSERT INTO pozycje VALUES (337, 141, 40, 23, 134.00, 2, 329.64);
INSERT INTO pozycje VALUES (338, 142, 74, 23, 145.00, 3, 535.05);
INSERT INTO pozycje VALUES (339, 142, 8, 23, 183.00, 4, 900.36);
INSERT INTO pozycje VALUES (340, 143, 48, 23, 119.00, 2, 292.74);
INSERT INTO pozycje VALUES (341, 144, 54, 23, 122.00, 2, 300.12);
INSERT INTO pozycje VALUES (342, 144, 77, 23, 161.00, 1, 198.03);
INSERT INTO pozycje VALUES (343, 145, 87, 23, 166.00, 2, 408.36);
INSERT INTO pozycje VALUES (344, 146, 66, 23, 162.00, 1, 199.26);
INSERT INTO pozycje VALUES (345, 146, 57, 23, 191.00, 5, 1174.65);
INSERT INTO pozycje VALUES (346, 146, 50, 23, 112.00, 5, 688.80);
INSERT INTO pozycje VALUES (347, 147, 32, 23, 125.00, 2, 307.50);
INSERT INTO pozycje VALUES (348, 147, 98, 23, 158.00, 2, 388.68);
INSERT INTO pozycje VALUES (349, 147, 62, 23, 181.00, 5, 1113.15);
INSERT INTO pozycje VALUES (350, 147, 32, 23, 166.00, 5, 1020.90);
INSERT INTO pozycje VALUES (351, 147, 10, 23, 162.00, 2, 398.52);
INSERT INTO pozycje VALUES (352, 147, 18, 23, 125.00, 4, 615.00);
INSERT INTO pozycje VALUES (353, 148, 13, 23, 175.00, 1, 215.25);
INSERT INTO pozycje VALUES (354, 148, 68, 23, 187.00, 3, 690.03);
INSERT INTO pozycje VALUES (355, 148, 69, 23, 106.00, 1, 130.38);
INSERT INTO pozycje VALUES (356, 149, 71, 23, 194.00, 1, 238.62);
INSERT INTO pozycje VALUES (357, 149, 58, 23, 111.00, 3, 409.59);
INSERT INTO pozycje VALUES (358, 149, 79, 23, 132.00, 5, 811.80);
INSERT INTO pozycje VALUES (359, 150, 100, 23, 192.00, 1, 236.16);
INSERT INTO pozycje VALUES (360, 150, 1, 23, 177.00, 5, 1088.55);
INSERT INTO pozycje VALUES (361, 151, 79, 23, 164.00, 4, 806.88);
INSERT INTO pozycje VALUES (362, 151, 96, 23, 121.00, 4, 595.32);
INSERT INTO pozycje VALUES (363, 151, 7, 23, 109.00, 4, 536.28);
INSERT INTO pozycje VALUES (364, 152, 4, 23, 108.00, 5, 664.20);
INSERT INTO pozycje VALUES (365, 152, 72, 23, 119.00, 2, 292.74);
INSERT INTO pozycje VALUES (366, 152, 37, 23, 107.00, 4, 526.44);
INSERT INTO pozycje VALUES (367, 153, 56, 23, 103.00, 3, 380.07);
INSERT INTO pozycje VALUES (368, 153, 71, 23, 147.00, 2, 361.62);
INSERT INTO pozycje VALUES (369, 153, 32, 23, 181.00, 5, 1113.15);
INSERT INTO pozycje VALUES (370, 153, 4, 23, 126.00, 5, 774.90);
INSERT INTO pozycje VALUES (371, 154, 55, 23, 181.00, 4, 890.52);
INSERT INTO pozycje VALUES (372, 154, 71, 23, 168.00, 3, 619.92);
INSERT INTO pozycje VALUES (373, 155, 33, 23, 188.00, 4, 924.96);
INSERT INTO pozycje VALUES (374, 156, 44, 23, 151.00, 1, 185.73);
INSERT INTO pozycje VALUES (1, 1, 38, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (2, 1, 24, 23, 220.00, 1, 270.60);
INSERT INTO pozycje VALUES (3, 1, 12, 23, 320.00, 1, 393.60);
INSERT INTO pozycje VALUES (4, 1, 12, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (5, 2, 1, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (6, 2, 4, 23, 220.00, 1, 270.60);
INSERT INTO pozycje VALUES (7, 2, 8, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (8, 3, 3, 23, 120.00, 5, 738.00);
INSERT INTO pozycje VALUES (9, 3, 40, 23, 80.00, 1, 98.40);
INSERT INTO pozycje VALUES (10, 4, 11, 23, 120.00, 3, 442.80);
INSERT INTO pozycje VALUES (11, 5, 20, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (12, 5, 21, 23, 50.00, 10, 615.00);
INSERT INTO pozycje VALUES (13, 5, 22, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (14, 5, 12, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (15, 6, 15, 23, 100.00, 20, 2460.00);
INSERT INTO pozycje VALUES (16, 6, 2, 23, 150.00, 10, 1845.00);
INSERT INTO pozycje VALUES (17, 7, 8, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (18, 7, 90, 23, 50.00, 3, 184.50);
INSERT INTO pozycje VALUES (19, 7, 10, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (20, 7, 38, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (21, 7, 39, 23, 200.00, 3, 738.00);
INSERT INTO pozycje VALUES (22, 7, 100, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (23, 8, 15, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (24, 8, 12, 23, 50.00, 1, 61.50);
INSERT INTO pozycje VALUES (25, 8, 71, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (26, 8, 72, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (27, 8, 61, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (28, 8, 66, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (29, 9, 54, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (30, 10, 51, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (31, 11, 80, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (32, 11, 11, 23, 50.00, 3, 184.50);
INSERT INTO pozycje VALUES (33, 11, 15, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (34, 12, 16, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (35, 12, 32, 23, 50.00, 3, 184.50);
INSERT INTO pozycje VALUES (36, 12, 33, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (37, 13, 65, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (38, 13, 34, 23, 50.00, 3, 184.50);
INSERT INTO pozycje VALUES (39, 13, 110, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (40, 13, 109, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (41, 14, 43, 23, 120.00, 2, 295.20);
INSERT INTO pozycje VALUES (42, 14, 89, 23, 50.00, 3, 184.50);
INSERT INTO pozycje VALUES (43, 14, 98, 23, 120.00, 1, 147.60);
INSERT INTO pozycje VALUES (44, 14, 54, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (375, 156, 44, 23, 180.00, 5, 1107.00);
INSERT INTO pozycje VALUES (376, 156, 79, 23, 126.00, 4, 619.92);
INSERT INTO pozycje VALUES (377, 157, 7, 23, 105.00, 4, 516.60);
INSERT INTO pozycje VALUES (378, 157, 44, 23, 150.00, 4, 738.00);
INSERT INTO pozycje VALUES (379, 157, 44, 23, 192.00, 5, 1180.80);
INSERT INTO pozycje VALUES (380, 157, 79, 23, 191.00, 3, 704.79);
INSERT INTO pozycje VALUES (381, 157, 35, 23, 169.00, 3, 623.61);
INSERT INTO pozycje VALUES (382, 157, 17, 23, 174.00, 4, 856.08);
INSERT INTO pozycje VALUES (383, 158, 91, 23, 176.00, 2, 432.96);
INSERT INTO pozycje VALUES (384, 158, 32, 23, 109.00, 1, 134.07);
INSERT INTO pozycje VALUES (385, 158, 48, 23, 106.00, 4, 521.52);
INSERT INTO pozycje VALUES (386, 159, 91, 23, 104.00, 1, 127.92);
INSERT INTO pozycje VALUES (387, 159, 66, 23, 107.00, 3, 394.83);
INSERT INTO pozycje VALUES (388, 159, 55, 23, 173.00, 4, 851.16);
INSERT INTO pozycje VALUES (389, 160, 5, 23, 152.00, 5, 934.80);
INSERT INTO pozycje VALUES (390, 160, 72, 23, 166.00, 4, 816.72);
INSERT INTO pozycje VALUES (391, 161, 3, 23, 177.00, 5, 1088.55);
INSERT INTO pozycje VALUES (392, 161, 29, 23, 146.00, 4, 718.32);
INSERT INTO pozycje VALUES (393, 161, 69, 23, 125.00, 2, 307.50);
INSERT INTO pozycje VALUES (394, 161, 70, 23, 106.00, 4, 521.52);
INSERT INTO pozycje VALUES (395, 162, 79, 23, 146.00, 1, 179.58);
INSERT INTO pozycje VALUES (396, 162, 65, 23, 158.00, 4, 777.36);
INSERT INTO pozycje VALUES (397, 163, 86, 23, 162.00, 4, 797.04);
INSERT INTO pozycje VALUES (398, 163, 69, 23, 123.00, 2, 302.58);
INSERT INTO pozycje VALUES (399, 163, 50, 23, 135.00, 5, 830.25);
INSERT INTO pozycje VALUES (400, 163, 83, 23, 196.00, 4, 964.32);
INSERT INTO pozycje VALUES (401, 164, 7, 23, 134.00, 5, 824.10);
INSERT INTO pozycje VALUES (402, 164, 26, 23, 104.00, 2, 255.84);
INSERT INTO pozycje VALUES (403, 165, 69, 23, 152.00, 5, 934.80);
INSERT INTO pozycje VALUES (404, 166, 82, 23, 191.00, 5, 1174.65);
INSERT INTO pozycje VALUES (405, 166, 10, 23, 165.00, 1, 202.95);
INSERT INTO pozycje VALUES (406, 166, 73, 23, 113.00, 2, 277.98);
INSERT INTO pozycje VALUES (407, 167, 10, 23, 197.00, 3, 726.93);
INSERT INTO pozycje VALUES (408, 168, 15, 23, 165.00, 5, 1014.75);
INSERT INTO pozycje VALUES (409, 168, 5, 23, 163.00, 4, 801.96);
INSERT INTO pozycje VALUES (410, 168, 37, 23, 105.00, 5, 645.75);
INSERT INTO pozycje VALUES (411, 169, 77, 23, 145.00, 3, 535.05);
INSERT INTO pozycje VALUES (412, 169, 78, 23, 105.00, 2, 258.30);
INSERT INTO pozycje VALUES (413, 169, 91, 23, 165.00, 4, 811.80);
INSERT INTO pozycje VALUES (414, 169, 19, 23, 176.00, 1, 216.48);
INSERT INTO pozycje VALUES (415, 170, 29, 23, 150.00, 5, 922.50);
INSERT INTO pozycje VALUES (416, 170, 10, 23, 111.00, 2, 273.06);
INSERT INTO pozycje VALUES (417, 171, 77, 23, 181.00, 1, 222.63);
INSERT INTO pozycje VALUES (418, 171, 15, 23, 142.00, 1, 174.66);
INSERT INTO pozycje VALUES (419, 171, 67, 23, 121.00, 3, 446.49);
INSERT INTO pozycje VALUES (420, 172, 49, 23, 174.00, 4, 856.08);
INSERT INTO pozycje VALUES (421, 172, 2, 23, 167.00, 3, 616.23);
INSERT INTO pozycje VALUES (422, 173, 92, 23, 150.00, 5, 922.50);
INSERT INTO pozycje VALUES (423, 173, 96, 23, 114.00, 4, 560.88);
INSERT INTO pozycje VALUES (424, 173, 73, 23, 137.00, 1, 168.51);
INSERT INTO pozycje VALUES (425, 173, 9, 23, 117.00, 3, 431.73);
INSERT INTO pozycje VALUES (426, 174, 99, 23, 139.00, 3, 512.91);
INSERT INTO pozycje VALUES (427, 174, 52, 23, 173.00, 4, 851.16);
INSERT INTO pozycje VALUES (428, 175, 12, 23, 153.00, 4, 752.76);
INSERT INTO pozycje VALUES (429, 176, 57, 23, 165.00, 4, 811.80);
INSERT INTO pozycje VALUES (430, 176, 35, 23, 174.00, 3, 642.06);
INSERT INTO pozycje VALUES (431, 176, 9, 23, 100.00, 1, 123.00);
INSERT INTO pozycje VALUES (432, 177, 15, 23, 103.00, 3, 380.07);
INSERT INTO pozycje VALUES (433, 177, 16, 23, 187.00, 2, 460.02);
INSERT INTO pozycje VALUES (434, 177, 7, 23, 196.00, 5, 1205.40);
INSERT INTO pozycje VALUES (435, 177, 5, 23, 159.00, 1, 195.57);
INSERT INTO pozycje VALUES (436, 177, 21, 23, 111.00, 4, 546.12);
INSERT INTO pozycje VALUES (437, 177, 34, 23, 176.00, 5, 1082.40);
INSERT INTO pozycje VALUES (438, 178, 66, 23, 199.00, 4, 979.08);
INSERT INTO pozycje VALUES (439, 178, 17, 23, 117.00, 2, 287.82);
INSERT INTO pozycje VALUES (440, 178, 91, 23, 117.00, 2, 287.82);
INSERT INTO pozycje VALUES (441, 179, 6, 23, 170.00, 4, 836.40);
INSERT INTO pozycje VALUES (442, 179, 92, 23, 164.00, 4, 806.88);
INSERT INTO pozycje VALUES (443, 180, 60, 23, 179.00, 3, 660.51);
INSERT INTO pozycje VALUES (444, 180, 46, 23, 136.00, 4, 669.12);
INSERT INTO pozycje VALUES (445, 181, 66, 23, 165.00, 4, 811.80);
INSERT INTO pozycje VALUES (446, 181, 92, 23, 124.00, 4, 610.08);
INSERT INTO pozycje VALUES (447, 181, 11, 23, 111.00, 5, 682.65);
INSERT INTO pozycje VALUES (448, 182, 79, 23, 169.00, 4, 831.48);
INSERT INTO pozycje VALUES (449, 182, 22, 23, 101.00, 5, 621.15);
INSERT INTO pozycje VALUES (450, 182, 34, 23, 193.00, 3, 712.17);
INSERT INTO pozycje VALUES (451, 183, 87, 23, 142.00, 5, 873.30);
INSERT INTO pozycje VALUES (452, 183, 31, 23, 165.00, 1, 202.95);
INSERT INTO pozycje VALUES (453, 183, 52, 23, 168.00, 3, 619.92);
INSERT INTO pozycje VALUES (454, 183, 92, 23, 192.00, 2, 472.32);
INSERT INTO pozycje VALUES (455, 184, 44, 23, 161.00, 2, 396.06);
INSERT INTO pozycje VALUES (456, 184, 60, 23, 101.00, 2, 248.46);
INSERT INTO pozycje VALUES (457, 185, 100, 23, 122.00, 1, 150.06);
INSERT INTO pozycje VALUES (458, 186, 90, 23, 132.00, 4, 649.44);
INSERT INTO pozycje VALUES (459, 186, 2, 23, 123.00, 5, 756.45);
INSERT INTO pozycje VALUES (460, 186, 13, 23, 181.00, 4, 890.52);
INSERT INTO pozycje VALUES (461, 187, 37, 23, 104.00, 2, 255.84);
INSERT INTO pozycje VALUES (462, 188, 77, 23, 123.00, 3, 453.87);
INSERT INTO pozycje VALUES (463, 188, 24, 23, 130.00, 5, 799.50);
INSERT INTO pozycje VALUES (464, 188, 91, 23, 196.00, 1, 241.08);
INSERT INTO pozycje VALUES (465, 189, 54, 23, 100.00, 3, 369.00);
INSERT INTO pozycje VALUES (466, 189, 39, 23, 128.00, 2, 314.88);
INSERT INTO pozycje VALUES (467, 189, 66, 23, 115.00, 5, 707.25);
INSERT INTO pozycje VALUES (468, 190, 34, 23, 176.00, 3, 649.44);
INSERT INTO pozycje VALUES (469, 190, 37, 23, 198.00, 4, 974.16);
INSERT INTO pozycje VALUES (470, 191, 24, 23, 105.00, 3, 387.45);
INSERT INTO pozycje VALUES (471, 191, 32, 23, 113.00, 4, 555.96);
INSERT INTO pozycje VALUES (472, 191, 92, 23, 189.00, 1, 232.47);
INSERT INTO pozycje VALUES (473, 191, 8, 23, 182.00, 4, 895.44);
INSERT INTO pozycje VALUES (474, 192, 50, 23, 176.00, 2, 432.96);
INSERT INTO pozycje VALUES (475, 192, 58, 23, 195.00, 2, 479.70);
INSERT INTO pozycje VALUES (476, 193, 6, 23, 134.00, 3, 494.46);
INSERT INTO pozycje VALUES (477, 193, 14, 23, 173.00, 1, 212.79);
INSERT INTO pozycje VALUES (478, 193, 57, 23, 180.00, 2, 442.80);
INSERT INTO pozycje VALUES (479, 193, 92, 23, 189.00, 1, 232.47);
INSERT INTO pozycje VALUES (480, 194, 83, 23, 191.00, 4, 939.72);
INSERT INTO pozycje VALUES (481, 194, 2, 23, 191.00, 3, 704.79);
INSERT INTO pozycje VALUES (482, 195, 52, 23, 118.00, 5, 725.70);
INSERT INTO pozycje VALUES (483, 196, 23, 23, 105.00, 3, 387.45);
INSERT INTO pozycje VALUES (484, 196, 100, 23, 196.00, 4, 964.32);
INSERT INTO pozycje VALUES (485, 196, 12, 23, 197.00, 1, 242.31);
INSERT INTO pozycje VALUES (486, 197, 29, 23, 119.00, 3, 439.11);
INSERT INTO pozycje VALUES (487, 198, 92, 23, 185.00, 5, 1137.75);
INSERT INTO pozycje VALUES (488, 198, 87, 23, 149.00, 3, 549.81);
INSERT INTO pozycje VALUES (489, 198, 61, 23, 179.00, 2, 440.34);
INSERT INTO pozycje VALUES (490, 199, 92, 23, 125.00, 4, 615.00);
INSERT INTO pozycje VALUES (491, 199, 29, 23, 133.00, 3, 490.77);
INSERT INTO pozycje VALUES (492, 199, 42, 23, 161.00, 4, 792.12);
INSERT INTO pozycje VALUES (493, 199, 40, 23, 166.00, 2, 408.36);
INSERT INTO pozycje VALUES (494, 200, 68, 23, 156.00, 5, 959.40);
INSERT INTO pozycje VALUES (495, 200, 43, 23, 115.00, 1, 141.45);
INSERT INTO pozycje VALUES (496, 201, 31, 23, 104.00, 2, 255.84);
INSERT INTO pozycje VALUES (497, 201, 59, 23, 184.00, 1, 226.32);
INSERT INTO pozycje VALUES (498, 201, 35, 23, 189.00, 2, 464.94);
INSERT INTO pozycje VALUES (499, 202, 41, 23, 198.00, 5, 1217.70);
INSERT INTO pozycje VALUES (500, 202, 73, 23, 115.00, 4, 565.80);
INSERT INTO pozycje VALUES (501, 203, 79, 23, 172.00, 2, 423.12);
INSERT INTO pozycje VALUES (502, 203, 67, 23, 141.00, 2, 346.86);
INSERT INTO pozycje VALUES (503, 203, 31, 23, 194.00, 3, 715.86);
INSERT INTO pozycje VALUES (504, 203, 90, 23, 179.00, 2, 440.34);
INSERT INTO pozycje VALUES (505, 204, 41, 23, 195.00, 1, 239.85);
INSERT INTO pozycje VALUES (506, 204, 72, 23, 114.00, 3, 420.66);
INSERT INTO pozycje VALUES (507, 205, 74, 23, 156.00, 1, 191.88);
INSERT INTO pozycje VALUES (508, 206, 2, 23, 153.00, 4, 752.76);
INSERT INTO pozycje VALUES (509, 206, 83, 23, 123.00, 2, 302.58);
INSERT INTO pozycje VALUES (510, 206, 82, 23, 108.00, 4, 531.36);
INSERT INTO pozycje VALUES (511, 207, 82, 23, 198.00, 5, 1217.70);
INSERT INTO pozycje VALUES (512, 207, 15, 23, 135.00, 4, 664.20);
INSERT INTO pozycje VALUES (513, 207, 11, 23, 140.00, 2, 344.40);
INSERT INTO pozycje VALUES (514, 207, 9, 23, 164.00, 3, 605.16);
INSERT INTO pozycje VALUES (515, 207, 56, 23, 150.00, 3, 553.50);
INSERT INTO pozycje VALUES (516, 207, 36, 23, 182.00, 1, 223.86);
INSERT INTO pozycje VALUES (517, 208, 44, 23, 174.00, 5, 1070.10);
INSERT INTO pozycje VALUES (518, 208, 80, 23, 183.00, 1, 225.09);
INSERT INTO pozycje VALUES (519, 208, 42, 23, 185.00, 5, 1137.75);
INSERT INTO pozycje VALUES (520, 209, 80, 23, 102.00, 2, 250.92);
INSERT INTO pozycje VALUES (521, 209, 89, 23, 139.00, 4, 683.88);
INSERT INTO pozycje VALUES (522, 210, 45, 23, 106.00, 4, 521.52);
INSERT INTO pozycje VALUES (523, 210, 56, 23, 196.00, 1, 241.08);
INSERT INTO pozycje VALUES (524, 211, 11, 23, 188.00, 4, 924.96);
INSERT INTO pozycje VALUES (525, 211, 2, 23, 126.00, 5, 774.90);
INSERT INTO pozycje VALUES (526, 211, 63, 23, 104.00, 5, 639.60);
INSERT INTO pozycje VALUES (527, 212, 9, 23, 197.00, 5, 1211.55);
INSERT INTO pozycje VALUES (528, 212, 46, 23, 104.00, 5, 639.60);
INSERT INTO pozycje VALUES (529, 213, 54, 23, 131.00, 4, 644.52);
INSERT INTO pozycje VALUES (530, 213, 35, 23, 103.00, 2, 253.38);
INSERT INTO pozycje VALUES (531, 213, 34, 23, 199.00, 4, 979.08);
INSERT INTO pozycje VALUES (532, 213, 56, 23, 133.00, 1, 163.59);
INSERT INTO pozycje VALUES (533, 214, 85, 23, 127.00, 4, 624.84);
INSERT INTO pozycje VALUES (534, 214, 91, 23, 166.00, 4, 816.72);
INSERT INTO pozycje VALUES (535, 215, 58, 23, 119.00, 2, 292.74);
INSERT INTO pozycje VALUES (536, 216, 77, 23, 139.00, 5, 854.85);
INSERT INTO pozycje VALUES (537, 216, 88, 23, 102.00, 3, 376.38);
INSERT INTO pozycje VALUES (538, 216, 35, 23, 149.00, 2, 366.54);
INSERT INTO pozycje VALUES (539, 217, 38, 23, 188.00, 3, 693.72);
INSERT INTO pozycje VALUES (540, 217, 47, 23, 148.00, 3, 546.12);
INSERT INTO pozycje VALUES (541, 217, 71, 23, 156.00, 2, 383.76);
INSERT INTO pozycje VALUES (542, 217, 29, 23, 125.00, 5, 768.75);
INSERT INTO pozycje VALUES (543, 217, 11, 23, 183.00, 1, 225.09);
INSERT INTO pozycje VALUES (544, 218, 6, 23, 100.00, 5, 615.00);
INSERT INTO pozycje VALUES (545, 218, 8, 23, 159.00, 4, 782.28);
INSERT INTO pozycje VALUES (546, 219, 2, 23, 187.00, 4, 920.04);
INSERT INTO pozycje VALUES (547, 219, 5, 23, 172.00, 1, 211.56);
INSERT INTO pozycje VALUES (548, 220, 95, 23, 188.00, 2, 462.48);
INSERT INTO pozycje VALUES (549, 220, 22, 23, 126.00, 3, 464.94);
INSERT INTO pozycje VALUES (550, 220, 67, 23, 115.00, 5, 707.25);
INSERT INTO pozycje VALUES (601, 1, 38, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (602, 1, 24, 23, 220.00, 1, 0.00);
INSERT INTO pozycje VALUES (603, 1, 12, 23, 320.00, 1, 0.00);
INSERT INTO pozycje VALUES (604, 1, 12, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (605, 2, 1, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (606, 2, 4, 23, 220.00, 1, 0.00);
INSERT INTO pozycje VALUES (607, 2, 8, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (608, 3, 3, 23, 120.00, 5, 0.00);
INSERT INTO pozycje VALUES (609, 3, 40, 23, 80.00, 1, 0.00);
INSERT INTO pozycje VALUES (610, 4, 11, 23, 120.00, 3, 0.00);
INSERT INTO pozycje VALUES (611, 5, 20, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (612, 5, 21, 23, 50.00, 10, 0.00);
INSERT INTO pozycje VALUES (613, 5, 22, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (614, 5, 12, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (615, 6, 15, 23, 100.00, 20, 0.00);
INSERT INTO pozycje VALUES (616, 6, 2, 23, 150.00, 10, 0.00);
INSERT INTO pozycje VALUES (617, 7, 8, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (618, 7, 90, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (619, 7, 10, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (620, 7, 38, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (621, 7, 39, 23, 200.00, 3, 0.00);
INSERT INTO pozycje VALUES (622, 7, 100, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (623, 8, 15, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (624, 8, 12, 23, 50.00, 1, 0.00);
INSERT INTO pozycje VALUES (625, 8, 71, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (626, 8, 72, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (627, 8, 61, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (628, 8, 66, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (629, 9, 54, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (630, 10, 51, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (631, 11, 80, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (632, 11, 11, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (633, 11, 15, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (634, 12, 16, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (635, 12, 32, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (636, 12, 33, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (637, 13, 65, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (638, 13, 34, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (639, 13, 110, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (640, 13, 109, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (641, 14, 43, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (642, 14, 89, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (643, 14, 98, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (644, 14, 54, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (645, 14, 32, 23, 200.00, 3, 0.00);
INSERT INTO pozycje VALUES (646, 14, 21, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (647, 15, 8, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (648, 15, 55, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (649, 15, 68, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (650, 15, 93, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (651, 16, 52, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (652, 17, 78, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (653, 17, 64, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (654, 17, 71, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (655, 17, 23, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (656, 18, 56, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (657, 18, 87, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (658, 18, 12, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (659, 19, 34, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (660, 19, 21, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (661, 19, 67, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (662, 19, 87, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (663, 19, 99, 23, 210.00, 3, 0.00);
INSERT INTO pozycje VALUES (664, 20, 84, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (665, 21, 4, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (666, 21, 8, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (667, 22, 58, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (668, 22, 98, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (669, 22, 32, 23, 149.00, 1, 0.00);
INSERT INTO pozycje VALUES (670, 22, 56, 23, 139.00, 3, 0.00);
INSERT INTO pozycje VALUES (671, 23, 49, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (672, 23, 62, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (673, 23, 53, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (674, 24, 61, 23, 139.00, 3, 0.00);
INSERT INTO pozycje VALUES (675, 25, 38, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (676, 25, 18, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (677, 25, 28, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (678, 25, 30, 23, 139.00, 3, 0.00);
INSERT INTO pozycje VALUES (679, 26, 11, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (680, 26, 43, 23, 139.00, 3, 0.00);
INSERT INTO pozycje VALUES (681, 27, 76, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (682, 27, 32, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (683, 27, 1, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (684, 27, 4, 23, 139.00, 3, 0.00);
INSERT INTO pozycje VALUES (685, 28, 43, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (686, 28, 97, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (687, 28, 67, 23, 149.00, 1, 0.00);
INSERT INTO pozycje VALUES (688, 29, 8, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (689, 30, 15, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (690, 30, 11, 23, 210.00, 3, 0.00);
INSERT INTO pozycje VALUES (691, 31, 19, 23, 100.00, 3, 0.00);
INSERT INTO pozycje VALUES (692, 32, 18, 23, 200.00, 3, 0.00);
INSERT INTO pozycje VALUES (693, 33, 15, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (694, 33, 1, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (695, 34, 6, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (696, 34, 9, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (697, 34, 4, 23, 139.00, 2, 0.00);
INSERT INTO pozycje VALUES (698, 35, 78, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (699, 35, 43, 23, 139.00, 2, 0.00);
INSERT INTO pozycje VALUES (700, 36, 65, 23, 200.00, 3, 0.00);
INSERT INTO pozycje VALUES (701, 36, 33, 23, 149.00, 1, 0.00);
INSERT INTO pozycje VALUES (702, 36, 22, 23, 139.00, 2, 0.00);
INSERT INTO pozycje VALUES (703, 37, 21, 23, 139.00, 2, 0.00);
INSERT INTO pozycje VALUES (704, 38, 95, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (705, 38, 78, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (706, 38, 43, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (707, 39, 76, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (708, 39, 34, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (709, 39, 55, 23, 220.00, 1, 0.00);
INSERT INTO pozycje VALUES (710, 39, 109, 23, 100.00, 3, 0.00);
INSERT INTO pozycje VALUES (711, 40, 110, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (712, 40, 56, 23, 139.00, 3, 0.00);
INSERT INTO pozycje VALUES (713, 41, 39, 23, 174.00, 3, 0.00);
INSERT INTO pozycje VALUES (714, 41, 59, 23, 131.00, 5, 0.00);
INSERT INTO pozycje VALUES (715, 41, 60, 23, 161.00, 2, 0.00);
INSERT INTO pozycje VALUES (716, 42, 50, 23, 139.00, 2, 0.00);
INSERT INTO pozycje VALUES (717, 42, 52, 23, 115.00, 5, 0.00);
INSERT INTO pozycje VALUES (718, 43, 78, 23, 172.00, 1, 0.00);
INSERT INTO pozycje VALUES (719, 43, 22, 23, 137.00, 5, 0.00);
INSERT INTO pozycje VALUES (720, 43, 42, 23, 171.00, 3, 0.00);
INSERT INTO pozycje VALUES (721, 43, 89, 23, 137.00, 2, 0.00);
INSERT INTO pozycje VALUES (722, 44, 90, 23, 196.00, 4, 0.00);
INSERT INTO pozycje VALUES (723, 44, 22, 23, 188.00, 2, 0.00);
INSERT INTO pozycje VALUES (724, 45, 20, 23, 120.00, 3, 0.00);
INSERT INTO pozycje VALUES (725, 46, 79, 23, 115.00, 5, 0.00);
INSERT INTO pozycje VALUES (726, 46, 37, 23, 107.00, 5, 0.00);
INSERT INTO pozycje VALUES (727, 46, 11, 23, 135.00, 2, 0.00);
INSERT INTO pozycje VALUES (728, 47, 18, 23, 109.00, 2, 0.00);
INSERT INTO pozycje VALUES (729, 47, 9, 23, 173.00, 4, 0.00);
INSERT INTO pozycje VALUES (730, 47, 87, 23, 132.00, 2, 0.00);
INSERT INTO pozycje VALUES (731, 47, 86, 23, 180.00, 4, 0.00);
INSERT INTO pozycje VALUES (732, 47, 54, 23, 115.00, 2, 0.00);
INSERT INTO pozycje VALUES (733, 47, 6, 23, 115.00, 1, 0.00);
INSERT INTO pozycje VALUES (734, 48, 20, 23, 110.00, 5, 0.00);
INSERT INTO pozycje VALUES (735, 48, 83, 23, 133.00, 2, 0.00);
INSERT INTO pozycje VALUES (736, 48, 49, 23, 158.00, 1, 0.00);
INSERT INTO pozycje VALUES (737, 49, 12, 23, 145.00, 1, 0.00);
INSERT INTO pozycje VALUES (738, 49, 43, 23, 146.00, 3, 0.00);
INSERT INTO pozycje VALUES (739, 49, 35, 23, 116.00, 1, 0.00);
INSERT INTO pozycje VALUES (740, 50, 66, 23, 171.00, 2, 0.00);
INSERT INTO pozycje VALUES (741, 50, 14, 23, 144.00, 1, 0.00);
INSERT INTO pozycje VALUES (742, 61, 61, 23, 173.00, 5, 0.00);
INSERT INTO pozycje VALUES (743, 61, 69, 23, 123.00, 2, 0.00);
INSERT INTO pozycje VALUES (744, 61, 95, 23, 158.00, 5, 0.00);
INSERT INTO pozycje VALUES (745, 62, 83, 23, 168.00, 1, 0.00);
INSERT INTO pozycje VALUES (746, 62, 48, 23, 129.00, 3, 0.00);
INSERT INTO pozycje VALUES (747, 63, 92, 23, 195.00, 2, 0.00);
INSERT INTO pozycje VALUES (748, 63, 99, 23, 167.00, 1, 0.00);
INSERT INTO pozycje VALUES (749, 63, 96, 23, 183.00, 2, 0.00);
INSERT INTO pozycje VALUES (750, 63, 61, 23, 170.00, 3, 0.00);
INSERT INTO pozycje VALUES (751, 64, 45, 23, 146.00, 3, 0.00);
INSERT INTO pozycje VALUES (752, 64, 85, 23, 129.00, 5, 0.00);
INSERT INTO pozycje VALUES (753, 65, 65, 23, 150.00, 2, 0.00);
INSERT INTO pozycje VALUES (754, 66, 83, 23, 132.00, 1, 0.00);
INSERT INTO pozycje VALUES (755, 66, 5, 23, 122.00, 5, 0.00);
INSERT INTO pozycje VALUES (756, 66, 68, 23, 157.00, 2, 0.00);
INSERT INTO pozycje VALUES (757, 67, 11, 23, 152.00, 2, 0.00);
INSERT INTO pozycje VALUES (758, 67, 54, 23, 109.00, 3, 0.00);
INSERT INTO pozycje VALUES (759, 67, 89, 23, 114.00, 2, 0.00);
INSERT INTO pozycje VALUES (760, 67, 5, 23, 191.00, 3, 0.00);
INSERT INTO pozycje VALUES (761, 67, 28, 23, 195.00, 4, 0.00);
INSERT INTO pozycje VALUES (762, 67, 93, 23, 168.00, 2, 0.00);
INSERT INTO pozycje VALUES (763, 68, 41, 23, 173.00, 4, 0.00);
INSERT INTO pozycje VALUES (764, 68, 35, 23, 162.00, 5, 0.00);
INSERT INTO pozycje VALUES (765, 68, 91, 23, 101.00, 4, 0.00);
INSERT INTO pozycje VALUES (766, 69, 61, 23, 162.00, 3, 0.00);
INSERT INTO pozycje VALUES (767, 69, 40, 23, 111.00, 2, 0.00);
INSERT INTO pozycje VALUES (768, 69, 100, 23, 154.00, 5, 0.00);
INSERT INTO pozycje VALUES (769, 70, 7, 23, 147.00, 1, 0.00);
INSERT INTO pozycje VALUES (770, 70, 4, 23, 143.00, 4, 0.00);
INSERT INTO pozycje VALUES (771, 81, 96, 23, 192.00, 4, 0.00);
INSERT INTO pozycje VALUES (772, 81, 70, 23, 108.00, 2, 0.00);
INSERT INTO pozycje VALUES (773, 81, 54, 23, 174.00, 2, 0.00);
INSERT INTO pozycje VALUES (774, 81, 95, 23, 192.00, 5, 0.00);
INSERT INTO pozycje VALUES (775, 82, 7, 23, 197.00, 3, 0.00);
INSERT INTO pozycje VALUES (776, 82, 83, 23, 108.00, 1, 0.00);
INSERT INTO pozycje VALUES (777, 83, 27, 23, 108.00, 2, 0.00);
INSERT INTO pozycje VALUES (778, 83, 81, 23, 163.00, 3, 0.00);
INSERT INTO pozycje VALUES (779, 83, 86, 23, 185.00, 4, 0.00);
INSERT INTO pozycje VALUES (780, 83, 47, 23, 181.00, 5, 0.00);
INSERT INTO pozycje VALUES (781, 84, 22, 23, 122.00, 3, 0.00);
INSERT INTO pozycje VALUES (782, 84, 38, 23, 192.00, 3, 0.00);
INSERT INTO pozycje VALUES (783, 85, 5, 23, 150.00, 5, 0.00);
INSERT INTO pozycje VALUES (784, 86, 9, 23, 166.00, 4, 0.00);
INSERT INTO pozycje VALUES (785, 86, 83, 23, 167.00, 2, 0.00);
INSERT INTO pozycje VALUES (786, 86, 68, 23, 178.00, 5, 0.00);
INSERT INTO pozycje VALUES (787, 87, 81, 23, 133.00, 4, 0.00);
INSERT INTO pozycje VALUES (788, 88, 54, 23, 141.00, 4, 0.00);
INSERT INTO pozycje VALUES (789, 88, 11, 23, 192.00, 2, 0.00);
INSERT INTO pozycje VALUES (790, 88, 48, 23, 103.00, 3, 0.00);
INSERT INTO pozycje VALUES (791, 89, 83, 23, 192.00, 1, 0.00);
INSERT INTO pozycje VALUES (792, 89, 39, 23, 179.00, 5, 0.00);
INSERT INTO pozycje VALUES (793, 89, 35, 23, 108.00, 5, 0.00);
INSERT INTO pozycje VALUES (794, 89, 1, 23, 190.00, 5, 0.00);
INSERT INTO pozycje VALUES (795, 90, 40, 23, 155.00, 5, 0.00);
INSERT INTO pozycje VALUES (796, 90, 62, 23, 135.00, 2, 0.00);
INSERT INTO pozycje VALUES (797, 91, 69, 23, 135.00, 2, 0.00);
INSERT INTO pozycje VALUES (798, 91, 9, 23, 115.00, 5, 0.00);
INSERT INTO pozycje VALUES (799, 91, 92, 23, 132.00, 3, 0.00);
INSERT INTO pozycje VALUES (800, 92, 36, 23, 173.00, 2, 0.00);
INSERT INTO pozycje VALUES (801, 92, 34, 23, 129.00, 5, 0.00);
INSERT INTO pozycje VALUES (802, 93, 63, 23, 132.00, 5, 0.00);
INSERT INTO pozycje VALUES (803, 93, 22, 23, 157.00, 3, 0.00);
INSERT INTO pozycje VALUES (804, 93, 83, 23, 111.00, 2, 0.00);
INSERT INTO pozycje VALUES (805, 93, 53, 23, 157.00, 3, 0.00);
INSERT INTO pozycje VALUES (806, 94, 55, 23, 148.00, 1, 0.00);
INSERT INTO pozycje VALUES (807, 94, 53, 23, 106.00, 4, 0.00);
INSERT INTO pozycje VALUES (808, 95, 1, 23, 182.00, 3, 0.00);
INSERT INTO pozycje VALUES (809, 96, 61, 23, 123.00, 4, 0.00);
INSERT INTO pozycje VALUES (810, 96, 16, 23, 122.00, 5, 0.00);
INSERT INTO pozycje VALUES (811, 96, 52, 23, 108.00, 5, 0.00);
INSERT INTO pozycje VALUES (812, 97, 83, 23, 103.00, 1, 0.00);
INSERT INTO pozycje VALUES (813, 97, 79, 23, 130.00, 2, 0.00);
INSERT INTO pozycje VALUES (814, 97, 43, 23, 182.00, 3, 0.00);
INSERT INTO pozycje VALUES (815, 97, 53, 23, 114.00, 4, 0.00);
INSERT INTO pozycje VALUES (816, 97, 13, 23, 107.00, 4, 0.00);
INSERT INTO pozycje VALUES (817, 97, 57, 23, 166.00, 1, 0.00);
INSERT INTO pozycje VALUES (818, 98, 28, 23, 103.00, 5, 0.00);
INSERT INTO pozycje VALUES (819, 98, 7, 23, 112.00, 1, 0.00);
INSERT INTO pozycje VALUES (820, 98, 80, 23, 141.00, 3, 0.00);
INSERT INTO pozycje VALUES (821, 99, 27, 23, 138.00, 3, 0.00);
INSERT INTO pozycje VALUES (822, 99, 18, 23, 177.00, 2, 0.00);
INSERT INTO pozycje VALUES (823, 99, 91, 23, 175.00, 5, 0.00);
INSERT INTO pozycje VALUES (824, 100, 85, 23, 139.00, 1, 0.00);
INSERT INTO pozycje VALUES (825, 100, 22, 23, 195.00, 5, 0.00);
INSERT INTO pozycje VALUES (826, 101, 2, 23, 173.00, 3, 0.00);
INSERT INTO pozycje VALUES (827, 101, 89, 23, 177.00, 3, 0.00);
INSERT INTO pozycje VALUES (828, 101, 54, 23, 181.00, 3, 0.00);
INSERT INTO pozycje VALUES (829, 102, 97, 23, 193.00, 3, 0.00);
INSERT INTO pozycje VALUES (830, 102, 15, 23, 199.00, 2, 0.00);
INSERT INTO pozycje VALUES (831, 103, 68, 23, 119.00, 5, 0.00);
INSERT INTO pozycje VALUES (832, 104, 83, 23, 116.00, 3, 0.00);
INSERT INTO pozycje VALUES (833, 104, 12, 23, 185.00, 2, 0.00);
INSERT INTO pozycje VALUES (834, 105, 43, 23, 110.00, 3, 0.00);
INSERT INTO pozycje VALUES (835, 106, 46, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (836, 106, 28, 23, 151.00, 1, 0.00);
INSERT INTO pozycje VALUES (837, 106, 96, 23, 185.00, 5, 0.00);
INSERT INTO pozycje VALUES (838, 107, 42, 23, 192.00, 4, 0.00);
INSERT INTO pozycje VALUES (839, 107, 12, 23, 138.00, 1, 0.00);
INSERT INTO pozycje VALUES (840, 107, 45, 23, 120.00, 4, 0.00);
INSERT INTO pozycje VALUES (841, 107, 85, 23, 140.00, 3, 0.00);
INSERT INTO pozycje VALUES (842, 107, 63, 23, 127.00, 5, 0.00);
INSERT INTO pozycje VALUES (843, 107, 88, 23, 113.00, 1, 0.00);
INSERT INTO pozycje VALUES (844, 108, 54, 23, 110.00, 4, 0.00);
INSERT INTO pozycje VALUES (845, 108, 57, 23, 141.00, 2, 0.00);
INSERT INTO pozycje VALUES (846, 108, 48, 23, 189.00, 3, 0.00);
INSERT INTO pozycje VALUES (847, 109, 76, 23, 117.00, 1, 0.00);
INSERT INTO pozycje VALUES (848, 109, 70, 23, 117.00, 4, 0.00);
INSERT INTO pozycje VALUES (849, 109, 71, 23, 152.00, 1, 0.00);
INSERT INTO pozycje VALUES (850, 110, 95, 23, 107.00, 3, 0.00);
INSERT INTO pozycje VALUES (851, 110, 23, 23, 197.00, 2, 0.00);
INSERT INTO pozycje VALUES (852, 111, 25, 23, 145.00, 3, 0.00);
INSERT INTO pozycje VALUES (853, 111, 89, 23, 186.00, 3, 0.00);
INSERT INTO pozycje VALUES (854, 111, 70, 23, 174.00, 2, 0.00);
INSERT INTO pozycje VALUES (855, 112, 44, 23, 151.00, 1, 0.00);
INSERT INTO pozycje VALUES (856, 112, 87, 23, 183.00, 3, 0.00);
INSERT INTO pozycje VALUES (857, 113, 100, 23, 188.00, 1, 0.00);
INSERT INTO pozycje VALUES (858, 113, 77, 23, 162.00, 3, 0.00);
INSERT INTO pozycje VALUES (859, 113, 41, 23, 118.00, 5, 0.00);
INSERT INTO pozycje VALUES (860, 113, 80, 23, 111.00, 5, 0.00);
INSERT INTO pozycje VALUES (861, 114, 50, 23, 176.00, 3, 0.00);
INSERT INTO pozycje VALUES (862, 114, 91, 23, 135.00, 1, 0.00);
INSERT INTO pozycje VALUES (863, 115, 32, 23, 107.00, 4, 0.00);
INSERT INTO pozycje VALUES (864, 116, 17, 23, 156.00, 5, 0.00);
INSERT INTO pozycje VALUES (865, 116, 57, 23, 125.00, 2, 0.00);
INSERT INTO pozycje VALUES (866, 116, 46, 23, 145.00, 1, 0.00);
INSERT INTO pozycje VALUES (867, 117, 31, 23, 161.00, 1, 0.00);
INSERT INTO pozycje VALUES (868, 117, 47, 23, 130.00, 2, 0.00);
INSERT INTO pozycje VALUES (869, 117, 18, 23, 154.00, 1, 0.00);
INSERT INTO pozycje VALUES (870, 117, 42, 23, 101.00, 2, 0.00);
INSERT INTO pozycje VALUES (871, 117, 43, 23, 125.00, 5, 0.00);
INSERT INTO pozycje VALUES (872, 117, 58, 23, 173.00, 1, 0.00);
INSERT INTO pozycje VALUES (873, 118, 82, 23, 127.00, 2, 0.00);
INSERT INTO pozycje VALUES (874, 118, 84, 23, 124.00, 5, 0.00);
INSERT INTO pozycje VALUES (875, 118, 6, 23, 189.00, 4, 0.00);
INSERT INTO pozycje VALUES (876, 119, 53, 23, 165.00, 5, 0.00);
INSERT INTO pozycje VALUES (877, 119, 80, 23, 121.00, 1, 0.00);
INSERT INTO pozycje VALUES (878, 119, 79, 23, 131.00, 3, 0.00);
INSERT INTO pozycje VALUES (879, 120, 1, 23, 129.00, 3, 0.00);
INSERT INTO pozycje VALUES (880, 120, 100, 23, 154.00, 5, 0.00);
INSERT INTO pozycje VALUES (881, 121, 94, 23, 148.00, 1, 0.00);
INSERT INTO pozycje VALUES (882, 121, 73, 23, 183.00, 1, 0.00);
INSERT INTO pozycje VALUES (883, 121, 75, 23, 161.00, 5, 0.00);
INSERT INTO pozycje VALUES (884, 121, 89, 23, 170.00, 5, 0.00);
INSERT INTO pozycje VALUES (885, 122, 41, 23, 171.00, 3, 0.00);
INSERT INTO pozycje VALUES (886, 122, 45, 23, 116.00, 5, 0.00);
INSERT INTO pozycje VALUES (887, 123, 33, 23, 144.00, 4, 0.00);
INSERT INTO pozycje VALUES (888, 123, 32, 23, 107.00, 1, 0.00);
INSERT INTO pozycje VALUES (889, 123, 89, 23, 114.00, 3, 0.00);
INSERT INTO pozycje VALUES (890, 123, 22, 23, 194.00, 2, 0.00);
INSERT INTO pozycje VALUES (891, 124, 82, 23, 137.00, 3, 0.00);
INSERT INTO pozycje VALUES (892, 124, 73, 23, 103.00, 3, 0.00);
INSERT INTO pozycje VALUES (893, 125, 80, 23, 160.00, 5, 0.00);
INSERT INTO pozycje VALUES (894, 126, 54, 23, 175.00, 5, 0.00);
INSERT INTO pozycje VALUES (895, 126, 49, 23, 148.00, 1, 0.00);
INSERT INTO pozycje VALUES (896, 126, 84, 23, 119.00, 2, 0.00);
INSERT INTO pozycje VALUES (897, 127, 1, 23, 108.00, 5, 0.00);
INSERT INTO pozycje VALUES (898, 128, 67, 23, 185.00, 1, 0.00);
INSERT INTO pozycje VALUES (899, 128, 93, 23, 172.00, 3, 0.00);
INSERT INTO pozycje VALUES (900, 128, 89, 23, 105.00, 4, 0.00);
INSERT INTO pozycje VALUES (901, 129, 8, 23, 178.00, 2, 0.00);
INSERT INTO pozycje VALUES (902, 129, 55, 23, 166.00, 3, 0.00);
INSERT INTO pozycje VALUES (903, 129, 93, 23, 108.00, 2, 0.00);
INSERT INTO pozycje VALUES (904, 129, 65, 23, 103.00, 5, 0.00);
INSERT INTO pozycje VALUES (905, 130, 12, 23, 100.00, 5, 0.00);
INSERT INTO pozycje VALUES (906, 130, 83, 23, 143.00, 2, 0.00);
INSERT INTO pozycje VALUES (907, 131, 69, 23, 135.00, 5, 0.00);
INSERT INTO pozycje VALUES (908, 131, 94, 23, 188.00, 4, 0.00);
INSERT INTO pozycje VALUES (909, 131, 30, 23, 105.00, 4, 0.00);
INSERT INTO pozycje VALUES (910, 132, 48, 23, 187.00, 2, 0.00);
INSERT INTO pozycje VALUES (911, 132, 11, 23, 189.00, 5, 0.00);
INSERT INTO pozycje VALUES (912, 133, 73, 23, 166.00, 5, 0.00);
INSERT INTO pozycje VALUES (913, 133, 77, 23, 100.00, 4, 0.00);
INSERT INTO pozycje VALUES (914, 133, 83, 23, 139.00, 3, 0.00);
INSERT INTO pozycje VALUES (915, 133, 33, 23, 142.00, 5, 0.00);
INSERT INTO pozycje VALUES (916, 134, 65, 23, 190.00, 3, 0.00);
INSERT INTO pozycje VALUES (917, 134, 94, 23, 186.00, 2, 0.00);
INSERT INTO pozycje VALUES (918, 135, 78, 23, 143.00, 2, 0.00);
INSERT INTO pozycje VALUES (919, 136, 26, 23, 106.00, 3, 0.00);
INSERT INTO pozycje VALUES (920, 136, 93, 23, 145.00, 5, 0.00);
INSERT INTO pozycje VALUES (921, 136, 82, 23, 108.00, 2, 0.00);
INSERT INTO pozycje VALUES (922, 137, 34, 23, 190.00, 2, 0.00);
INSERT INTO pozycje VALUES (923, 137, 5, 23, 191.00, 5, 0.00);
INSERT INTO pozycje VALUES (924, 137, 2, 23, 124.00, 1, 0.00);
INSERT INTO pozycje VALUES (925, 137, 7, 23, 156.00, 4, 0.00);
INSERT INTO pozycje VALUES (926, 137, 69, 23, 130.00, 4, 0.00);
INSERT INTO pozycje VALUES (927, 137, 29, 23, 111.00, 5, 0.00);
INSERT INTO pozycje VALUES (928, 138, 48, 23, 174.00, 1, 0.00);
INSERT INTO pozycje VALUES (929, 138, 65, 23, 154.00, 4, 0.00);
INSERT INTO pozycje VALUES (930, 138, 9, 23, 187.00, 5, 0.00);
INSERT INTO pozycje VALUES (931, 139, 100, 23, 101.00, 4, 0.00);
INSERT INTO pozycje VALUES (932, 139, 100, 23, 117.00, 4, 0.00);
INSERT INTO pozycje VALUES (933, 140, 12, 23, 152.00, 1, 0.00);
INSERT INTO pozycje VALUES (934, 140, 32, 23, 166.00, 4, 0.00);
INSERT INTO pozycje VALUES (935, 141, 82, 23, 108.00, 1, 0.00);
INSERT INTO pozycje VALUES (936, 141, 74, 23, 181.00, 1, 0.00);
INSERT INTO pozycje VALUES (937, 141, 38, 23, 158.00, 1, 0.00);
INSERT INTO pozycje VALUES (938, 142, 32, 23, 193.00, 1, 0.00);
INSERT INTO pozycje VALUES (939, 142, 78, 23, 166.00, 2, 0.00);
INSERT INTO pozycje VALUES (940, 143, 19, 23, 108.00, 4, 0.00);
INSERT INTO pozycje VALUES (941, 144, 73, 23, 124.00, 5, 0.00);
INSERT INTO pozycje VALUES (942, 144, 28, 23, 162.00, 3, 0.00);
INSERT INTO pozycje VALUES (943, 145, 4, 23, 157.00, 3, 0.00);
INSERT INTO pozycje VALUES (944, 146, 33, 23, 162.00, 4, 0.00);
INSERT INTO pozycje VALUES (945, 146, 95, 23, 136.00, 3, 0.00);
INSERT INTO pozycje VALUES (946, 146, 82, 23, 145.00, 1, 0.00);
INSERT INTO pozycje VALUES (947, 147, 48, 23, 145.00, 4, 0.00);
INSERT INTO pozycje VALUES (948, 147, 78, 23, 150.00, 1, 0.00);
INSERT INTO pozycje VALUES (949, 147, 67, 23, 131.00, 5, 0.00);
INSERT INTO pozycje VALUES (950, 147, 53, 23, 112.00, 4, 0.00);
INSERT INTO pozycje VALUES (951, 147, 17, 23, 123.00, 1, 0.00);
INSERT INTO pozycje VALUES (952, 147, 26, 23, 196.00, 3, 0.00);
INSERT INTO pozycje VALUES (953, 148, 34, 23, 109.00, 1, 0.00);
INSERT INTO pozycje VALUES (954, 148, 18, 23, 142.00, 1, 0.00);
INSERT INTO pozycje VALUES (955, 148, 7, 23, 170.00, 1, 0.00);
INSERT INTO pozycje VALUES (956, 149, 54, 23, 112.00, 2, 0.00);
INSERT INTO pozycje VALUES (957, 149, 61, 23, 142.00, 5, 0.00);
INSERT INTO pozycje VALUES (958, 149, 8, 23, 156.00, 5, 0.00);
INSERT INTO pozycje VALUES (959, 150, 92, 23, 115.00, 4, 0.00);
INSERT INTO pozycje VALUES (960, 150, 9, 23, 180.00, 1, 0.00);
INSERT INTO pozycje VALUES (961, 151, 44, 23, 193.00, 5, 0.00);
INSERT INTO pozycje VALUES (962, 151, 54, 23, 161.00, 5, 0.00);
INSERT INTO pozycje VALUES (963, 151, 85, 23, 162.00, 3, 0.00);
INSERT INTO pozycje VALUES (964, 152, 48, 23, 168.00, 1, 0.00);
INSERT INTO pozycje VALUES (965, 152, 88, 23, 122.00, 4, 0.00);
INSERT INTO pozycje VALUES (966, 152, 87, 23, 177.00, 3, 0.00);
INSERT INTO pozycje VALUES (967, 153, 10, 23, 187.00, 5, 0.00);
INSERT INTO pozycje VALUES (968, 153, 96, 23, 125.00, 3, 0.00);
INSERT INTO pozycje VALUES (969, 153, 60, 23, 188.00, 4, 0.00);
INSERT INTO pozycje VALUES (970, 153, 85, 23, 137.00, 2, 0.00);
INSERT INTO pozycje VALUES (971, 154, 78, 23, 116.00, 1, 0.00);
INSERT INTO pozycje VALUES (972, 154, 93, 23, 167.00, 1, 0.00);
INSERT INTO pozycje VALUES (973, 155, 24, 23, 176.00, 2, 0.00);
INSERT INTO pozycje VALUES (974, 156, 47, 23, 168.00, 1, 0.00);
INSERT INTO pozycje VALUES (975, 156, 53, 23, 172.00, 2, 0.00);
INSERT INTO pozycje VALUES (976, 156, 66, 23, 125.00, 4, 0.00);
INSERT INTO pozycje VALUES (977, 157, 63, 23, 143.00, 5, 0.00);
INSERT INTO pozycje VALUES (978, 157, 16, 23, 144.00, 1, 0.00);
INSERT INTO pozycje VALUES (979, 157, 13, 23, 181.00, 3, 0.00);
INSERT INTO pozycje VALUES (980, 157, 49, 23, 100.00, 5, 0.00);
INSERT INTO pozycje VALUES (981, 157, 52, 23, 142.00, 5, 0.00);
INSERT INTO pozycje VALUES (982, 157, 13, 23, 109.00, 1, 0.00);
INSERT INTO pozycje VALUES (983, 158, 75, 23, 158.00, 1, 0.00);
INSERT INTO pozycje VALUES (984, 158, 55, 23, 168.00, 2, 0.00);
INSERT INTO pozycje VALUES (985, 158, 21, 23, 107.00, 2, 0.00);
INSERT INTO pozycje VALUES (986, 159, 43, 23, 162.00, 4, 0.00);
INSERT INTO pozycje VALUES (987, 159, 75, 23, 108.00, 1, 0.00);
INSERT INTO pozycje VALUES (988, 159, 78, 23, 176.00, 4, 0.00);
INSERT INTO pozycje VALUES (989, 160, 56, 23, 110.00, 1, 0.00);
INSERT INTO pozycje VALUES (990, 160, 5, 23, 128.00, 1, 0.00);
INSERT INTO pozycje VALUES (991, 161, 17, 23, 154.00, 2, 0.00);
INSERT INTO pozycje VALUES (992, 161, 68, 23, 145.00, 5, 0.00);
INSERT INTO pozycje VALUES (993, 161, 54, 23, 199.00, 5, 0.00);
INSERT INTO pozycje VALUES (994, 161, 19, 23, 143.00, 1, 0.00);
INSERT INTO pozycje VALUES (995, 162, 31, 23, 137.00, 1, 0.00);
INSERT INTO pozycje VALUES (996, 162, 61, 23, 104.00, 3, 0.00);
INSERT INTO pozycje VALUES (997, 163, 77, 23, 113.00, 1, 0.00);
INSERT INTO pozycje VALUES (998, 163, 25, 23, 173.00, 3, 0.00);
INSERT INTO pozycje VALUES (999, 163, 31, 23, 129.00, 2, 0.00);
INSERT INTO pozycje VALUES (1000, 163, 29, 23, 143.00, 3, 0.00);
INSERT INTO pozycje VALUES (1001, 164, 92, 23, 195.00, 2, 0.00);
INSERT INTO pozycje VALUES (1002, 164, 29, 23, 198.00, 3, 0.00);
INSERT INTO pozycje VALUES (1003, 165, 15, 23, 190.00, 2, 0.00);
INSERT INTO pozycje VALUES (1004, 166, 34, 23, 100.00, 3, 0.00);
INSERT INTO pozycje VALUES (1005, 166, 2, 23, 184.00, 4, 0.00);
INSERT INTO pozycje VALUES (1006, 166, 31, 23, 191.00, 3, 0.00);
INSERT INTO pozycje VALUES (1007, 167, 29, 23, 176.00, 3, 0.00);
INSERT INTO pozycje VALUES (1008, 168, 77, 23, 195.00, 4, 0.00);
INSERT INTO pozycje VALUES (1009, 168, 3, 23, 195.00, 5, 0.00);
INSERT INTO pozycje VALUES (1010, 168, 37, 23, 182.00, 3, 0.00);
INSERT INTO pozycje VALUES (1011, 169, 62, 23, 190.00, 1, 0.00);
INSERT INTO pozycje VALUES (1012, 169, 30, 23, 111.00, 1, 0.00);
INSERT INTO pozycje VALUES (1013, 169, 65, 23, 146.00, 3, 0.00);
INSERT INTO pozycje VALUES (1014, 169, 44, 23, 117.00, 4, 0.00);
INSERT INTO pozycje VALUES (1015, 170, 27, 23, 105.00, 1, 0.00);
INSERT INTO pozycje VALUES (1016, 170, 88, 23, 193.00, 3, 0.00);
INSERT INTO pozycje VALUES (1017, 171, 31, 23, 194.00, 3, 0.00);
INSERT INTO pozycje VALUES (1018, 171, 30, 23, 130.00, 1, 0.00);
INSERT INTO pozycje VALUES (1019, 171, 11, 23, 103.00, 2, 0.00);
INSERT INTO pozycje VALUES (1020, 172, 34, 23, 158.00, 4, 0.00);
INSERT INTO pozycje VALUES (1021, 172, 18, 23, 177.00, 1, 0.00);
INSERT INTO pozycje VALUES (1022, 173, 35, 23, 176.00, 2, 0.00);
INSERT INTO pozycje VALUES (1023, 173, 12, 23, 156.00, 1, 0.00);
INSERT INTO pozycje VALUES (1024, 173, 51, 23, 135.00, 1, 0.00);
INSERT INTO pozycje VALUES (1025, 173, 96, 23, 154.00, 1, 0.00);
INSERT INTO pozycje VALUES (1026, 174, 82, 23, 165.00, 2, 0.00);
INSERT INTO pozycje VALUES (1027, 174, 83, 23, 149.00, 5, 0.00);
INSERT INTO pozycje VALUES (1028, 175, 2, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (1029, 176, 14, 23, 148.00, 1, 0.00);
INSERT INTO pozycje VALUES (1030, 176, 46, 23, 158.00, 1, 0.00);
INSERT INTO pozycje VALUES (1031, 176, 31, 23, 192.00, 3, 0.00);
INSERT INTO pozycje VALUES (1032, 177, 58, 23, 112.00, 1, 0.00);
INSERT INTO pozycje VALUES (1033, 177, 44, 23, 102.00, 4, 0.00);
INSERT INTO pozycje VALUES (1034, 177, 29, 23, 141.00, 3, 0.00);
INSERT INTO pozycje VALUES (1035, 177, 1, 23, 100.00, 5, 0.00);
INSERT INTO pozycje VALUES (1036, 177, 20, 23, 167.00, 4, 0.00);
INSERT INTO pozycje VALUES (1037, 177, 34, 23, 198.00, 2, 0.00);
INSERT INTO pozycje VALUES (1038, 178, 58, 23, 175.00, 3, 0.00);
INSERT INTO pozycje VALUES (1039, 178, 13, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (1040, 178, 14, 23, 104.00, 2, 0.00);
INSERT INTO pozycje VALUES (1041, 179, 85, 23, 198.00, 1, 0.00);
INSERT INTO pozycje VALUES (1042, 179, 55, 23, 105.00, 4, 0.00);
INSERT INTO pozycje VALUES (1043, 180, 74, 23, 187.00, 3, 0.00);
INSERT INTO pozycje VALUES (1044, 180, 61, 23, 114.00, 3, 0.00);
INSERT INTO pozycje VALUES (1045, 181, 21, 23, 196.00, 5, 0.00);
INSERT INTO pozycje VALUES (1046, 181, 27, 23, 104.00, 5, 0.00);
INSERT INTO pozycje VALUES (1047, 181, 26, 23, 189.00, 3, 0.00);
INSERT INTO pozycje VALUES (1048, 182, 38, 23, 171.00, 1, 0.00);
INSERT INTO pozycje VALUES (1049, 182, 17, 23, 151.00, 5, 0.00);
INSERT INTO pozycje VALUES (1050, 182, 85, 23, 101.00, 5, 0.00);
INSERT INTO pozycje VALUES (1051, 183, 27, 23, 121.00, 5, 0.00);
INSERT INTO pozycje VALUES (1052, 183, 7, 23, 107.00, 3, 0.00);
INSERT INTO pozycje VALUES (1053, 183, 46, 23, 109.00, 4, 0.00);
INSERT INTO pozycje VALUES (1054, 183, 72, 23, 110.00, 1, 0.00);
INSERT INTO pozycje VALUES (1055, 184, 67, 23, 132.00, 1, 0.00);
INSERT INTO pozycje VALUES (1056, 184, 72, 23, 102.00, 1, 0.00);
INSERT INTO pozycje VALUES (1057, 185, 69, 23, 109.00, 1, 0.00);
INSERT INTO pozycje VALUES (1058, 186, 95, 23, 163.00, 5, 0.00);
INSERT INTO pozycje VALUES (1059, 186, 20, 23, 133.00, 5, 0.00);
INSERT INTO pozycje VALUES (1060, 186, 45, 23, 143.00, 2, 0.00);
INSERT INTO pozycje VALUES (1061, 187, 60, 23, 137.00, 3, 0.00);
INSERT INTO pozycje VALUES (1062, 188, 56, 23, 185.00, 3, 0.00);
INSERT INTO pozycje VALUES (1063, 188, 79, 23, 194.00, 4, 0.00);
INSERT INTO pozycje VALUES (1064, 188, 24, 23, 161.00, 4, 0.00);
INSERT INTO pozycje VALUES (1065, 189, 51, 23, 168.00, 1, 0.00);
INSERT INTO pozycje VALUES (1066, 189, 100, 23, 190.00, 1, 0.00);
INSERT INTO pozycje VALUES (1067, 189, 42, 23, 154.00, 1, 0.00);
INSERT INTO pozycje VALUES (1068, 190, 45, 23, 167.00, 4, 0.00);
INSERT INTO pozycje VALUES (1069, 190, 43, 23, 189.00, 5, 0.00);
INSERT INTO pozycje VALUES (1070, 191, 65, 23, 177.00, 4, 0.00);
INSERT INTO pozycje VALUES (1071, 191, 67, 23, 113.00, 4, 0.00);
INSERT INTO pozycje VALUES (1072, 191, 4, 23, 174.00, 1, 0.00);
INSERT INTO pozycje VALUES (1073, 191, 10, 23, 188.00, 5, 0.00);
INSERT INTO pozycje VALUES (1074, 192, 60, 23, 171.00, 3, 0.00);
INSERT INTO pozycje VALUES (1075, 192, 14, 23, 198.00, 3, 0.00);
INSERT INTO pozycje VALUES (1076, 193, 2, 23, 121.00, 5, 0.00);
INSERT INTO pozycje VALUES (1077, 193, 96, 23, 135.00, 4, 0.00);
INSERT INTO pozycje VALUES (1078, 193, 62, 23, 161.00, 2, 0.00);
INSERT INTO pozycje VALUES (1079, 193, 68, 23, 162.00, 3, 0.00);
INSERT INTO pozycje VALUES (1080, 194, 78, 23, 172.00, 3, 0.00);
INSERT INTO pozycje VALUES (1081, 194, 86, 23, 141.00, 5, 0.00);
INSERT INTO pozycje VALUES (1082, 195, 52, 23, 117.00, 2, 0.00);
INSERT INTO pozycje VALUES (1083, 196, 87, 23, 102.00, 5, 0.00);
INSERT INTO pozycje VALUES (1084, 196, 26, 23, 128.00, 2, 0.00);
INSERT INTO pozycje VALUES (1085, 196, 25, 23, 123.00, 2, 0.00);
INSERT INTO pozycje VALUES (1086, 197, 88, 23, 196.00, 3, 0.00);
INSERT INTO pozycje VALUES (1087, 198, 29, 23, 166.00, 2, 0.00);
INSERT INTO pozycje VALUES (1088, 198, 74, 23, 160.00, 2, 0.00);
INSERT INTO pozycje VALUES (1089, 198, 5, 23, 163.00, 2, 0.00);
INSERT INTO pozycje VALUES (1090, 199, 51, 23, 190.00, 1, 0.00);
INSERT INTO pozycje VALUES (1091, 199, 59, 23, 164.00, 5, 0.00);
INSERT INTO pozycje VALUES (1092, 199, 96, 23, 123.00, 2, 0.00);
INSERT INTO pozycje VALUES (1093, 199, 76, 23, 153.00, 3, 0.00);
INSERT INTO pozycje VALUES (1094, 200, 63, 23, 115.00, 4, 0.00);
INSERT INTO pozycje VALUES (1095, 200, 93, 23, 167.00, 3, 0.00);
INSERT INTO pozycje VALUES (1096, 201, 2, 23, 191.00, 1, 0.00);
INSERT INTO pozycje VALUES (1097, 201, 93, 23, 191.00, 3, 0.00);
INSERT INTO pozycje VALUES (1098, 201, 76, 23, 122.00, 3, 0.00);
INSERT INTO pozycje VALUES (1099, 202, 68, 23, 139.00, 2, 0.00);
INSERT INTO pozycje VALUES (1100, 202, 44, 23, 191.00, 5, 0.00);
INSERT INTO pozycje VALUES (1101, 203, 88, 23, 177.00, 3, 0.00);
INSERT INTO pozycje VALUES (1102, 203, 67, 23, 155.00, 2, 0.00);
INSERT INTO pozycje VALUES (1103, 203, 5, 23, 131.00, 3, 0.00);
INSERT INTO pozycje VALUES (1104, 203, 33, 23, 166.00, 5, 0.00);
INSERT INTO pozycje VALUES (1105, 204, 78, 23, 145.00, 3, 0.00);
INSERT INTO pozycje VALUES (1106, 204, 70, 23, 135.00, 3, 0.00);
INSERT INTO pozycje VALUES (1107, 205, 71, 23, 125.00, 2, 0.00);
INSERT INTO pozycje VALUES (1108, 206, 83, 23, 164.00, 2, 0.00);
INSERT INTO pozycje VALUES (1109, 206, 9, 23, 139.00, 4, 0.00);
INSERT INTO pozycje VALUES (1110, 206, 52, 23, 165.00, 3, 0.00);
INSERT INTO pozycje VALUES (1111, 207, 93, 23, 162.00, 4, 0.00);
INSERT INTO pozycje VALUES (1112, 207, 87, 23, 168.00, 1, 0.00);
INSERT INTO pozycje VALUES (1113, 207, 53, 23, 143.00, 3, 0.00);
INSERT INTO pozycje VALUES (1114, 207, 34, 23, 172.00, 1, 0.00);
INSERT INTO pozycje VALUES (1115, 207, 19, 23, 146.00, 2, 0.00);
INSERT INTO pozycje VALUES (1116, 207, 50, 23, 132.00, 3, 0.00);
INSERT INTO pozycje VALUES (1117, 208, 69, 23, 188.00, 1, 0.00);
INSERT INTO pozycje VALUES (1118, 208, 21, 23, 132.00, 3, 0.00);
INSERT INTO pozycje VALUES (1119, 208, 56, 23, 182.00, 5, 0.00);
INSERT INTO pozycje VALUES (1120, 209, 98, 23, 176.00, 4, 0.00);
INSERT INTO pozycje VALUES (1121, 209, 63, 23, 142.00, 1, 0.00);
INSERT INTO pozycje VALUES (1122, 210, 54, 23, 153.00, 5, 0.00);
INSERT INTO pozycje VALUES (1123, 210, 18, 23, 196.00, 4, 0.00);
INSERT INTO pozycje VALUES (1124, 211, 12, 23, 118.00, 1, 0.00);
INSERT INTO pozycje VALUES (1125, 211, 11, 23, 174.00, 2, 0.00);
INSERT INTO pozycje VALUES (1126, 211, 75, 23, 154.00, 4, 0.00);
INSERT INTO pozycje VALUES (1127, 212, 63, 23, 142.00, 5, 0.00);
INSERT INTO pozycje VALUES (1128, 212, 55, 23, 100.00, 5, 0.00);
INSERT INTO pozycje VALUES (1129, 213, 76, 23, 117.00, 5, 0.00);
INSERT INTO pozycje VALUES (1130, 213, 12, 23, 191.00, 3, 0.00);
INSERT INTO pozycje VALUES (1131, 213, 29, 23, 137.00, 1, 0.00);
INSERT INTO pozycje VALUES (1132, 213, 67, 23, 169.00, 5, 0.00);
INSERT INTO pozycje VALUES (1133, 214, 89, 23, 163.00, 3, 0.00);
INSERT INTO pozycje VALUES (1134, 214, 23, 23, 118.00, 2, 0.00);
INSERT INTO pozycje VALUES (1135, 215, 18, 23, 196.00, 5, 0.00);
INSERT INTO pozycje VALUES (1136, 216, 41, 23, 198.00, 1, 0.00);
INSERT INTO pozycje VALUES (1137, 216, 95, 23, 165.00, 2, 0.00);
INSERT INTO pozycje VALUES (1138, 216, 55, 23, 145.00, 4, 0.00);
INSERT INTO pozycje VALUES (1139, 217, 50, 23, 192.00, 3, 0.00);
INSERT INTO pozycje VALUES (1140, 217, 29, 23, 122.00, 1, 0.00);
INSERT INTO pozycje VALUES (1141, 217, 97, 23, 183.00, 2, 0.00);
INSERT INTO pozycje VALUES (1142, 217, 73, 23, 189.00, 2, 0.00);
INSERT INTO pozycje VALUES (1143, 217, 24, 23, 154.00, 3, 0.00);
INSERT INTO pozycje VALUES (1144, 218, 34, 23, 131.00, 2, 0.00);
INSERT INTO pozycje VALUES (1145, 218, 21, 23, 192.00, 4, 0.00);
INSERT INTO pozycje VALUES (1146, 219, 18, 23, 183.00, 3, 0.00);
INSERT INTO pozycje VALUES (1147, 219, 75, 23, 119.00, 3, 0.00);
INSERT INTO pozycje VALUES (1148, 220, 54, 23, 159.00, 1, 0.00);
INSERT INTO pozycje VALUES (1149, 220, 24, 23, 107.00, 2, 0.00);
INSERT INTO pozycje VALUES (1150, 220, 92, 23, 176.00, 3, 0.00);
INSERT INTO pozycje VALUES (1151, 51, 99, 23, 164.00, 4, 0.00);
INSERT INTO pozycje VALUES (1152, 51, 26, 23, 118.00, 3, 0.00);
INSERT INTO pozycje VALUES (1153, 52, 31, 23, 102.00, 5, 0.00);
INSERT INTO pozycje VALUES (1154, 52, 33, 23, 161.00, 3, 0.00);
INSERT INTO pozycje VALUES (1155, 53, 12, 23, 158.00, 1, 0.00);
INSERT INTO pozycje VALUES (1156, 53, 72, 23, 188.00, 2, 0.00);
INSERT INTO pozycje VALUES (1157, 54, 39, 23, 122.00, 4, 0.00);
INSERT INTO pozycje VALUES (1158, 54, 81, 23, 140.00, 1, 0.00);
INSERT INTO pozycje VALUES (1159, 54, 97, 23, 103.00, 2, 0.00);
INSERT INTO pozycje VALUES (1160, 54, 95, 23, 148.00, 2, 0.00);
INSERT INTO pozycje VALUES (1161, 55, 6, 23, 133.00, 1, 0.00);
INSERT INTO pozycje VALUES (1162, 55, 79, 23, 134.00, 1, 0.00);
INSERT INTO pozycje VALUES (1163, 56, 91, 23, 154.00, 2, 0.00);
INSERT INTO pozycje VALUES (1164, 56, 26, 23, 154.00, 4, 0.00);
INSERT INTO pozycje VALUES (1165, 57, 99, 23, 186.00, 5, 0.00);
INSERT INTO pozycje VALUES (1166, 57, 22, 23, 114.00, 5, 0.00);
INSERT INTO pozycje VALUES (1167, 58, 99, 23, 113.00, 3, 0.00);
INSERT INTO pozycje VALUES (1168, 58, 58, 23, 107.00, 2, 0.00);
INSERT INTO pozycje VALUES (1169, 58, 62, 23, 135.00, 5, 0.00);
INSERT INTO pozycje VALUES (1170, 59, 89, 23, 116.00, 5, 0.00);
INSERT INTO pozycje VALUES (1171, 59, 46, 23, 118.00, 2, 0.00);
INSERT INTO pozycje VALUES (1172, 60, 8, 23, 168.00, 3, 0.00);
INSERT INTO pozycje VALUES (1173, 60, 10, 23, 194.00, 2, 0.00);
INSERT INTO pozycje VALUES (1174, 60, 92, 23, 135.00, 2, 0.00);
INSERT INTO pozycje VALUES (1175, 71, 98, 23, 142.00, 5, 0.00);
INSERT INTO pozycje VALUES (1176, 71, 66, 23, 155.00, 4, 0.00);
INSERT INTO pozycje VALUES (1177, 72, 40, 23, 156.00, 5, 0.00);
INSERT INTO pozycje VALUES (1178, 73, 68, 23, 115.00, 4, 0.00);
INSERT INTO pozycje VALUES (1179, 73, 57, 23, 119.00, 5, 0.00);
INSERT INTO pozycje VALUES (1180, 73, 82, 23, 111.00, 2, 0.00);
INSERT INTO pozycje VALUES (1181, 73, 90, 23, 108.00, 3, 0.00);
INSERT INTO pozycje VALUES (1182, 74, 81, 23, 163.00, 5, 0.00);
INSERT INTO pozycje VALUES (1183, 75, 54, 23, 151.00, 2, 0.00);
INSERT INTO pozycje VALUES (1184, 75, 57, 23, 108.00, 3, 0.00);
INSERT INTO pozycje VALUES (1185, 76, 92, 23, 124.00, 1, 0.00);
INSERT INTO pozycje VALUES (1186, 76, 65, 23, 104.00, 2, 0.00);
INSERT INTO pozycje VALUES (1187, 77, 10, 23, 146.00, 3, 0.00);
INSERT INTO pozycje VALUES (1188, 77, 36, 23, 168.00, 3, 0.00);
INSERT INTO pozycje VALUES (1189, 77, 4, 23, 159.00, 3, 0.00);
INSERT INTO pozycje VALUES (1190, 78, 43, 23, 101.00, 1, 0.00);
INSERT INTO pozycje VALUES (1191, 78, 26, 23, 174.00, 2, 0.00);
INSERT INTO pozycje VALUES (1192, 78, 12, 23, 119.00, 5, 0.00);
INSERT INTO pozycje VALUES (1193, 78, 9, 23, 181.00, 3, 0.00);
INSERT INTO pozycje VALUES (1194, 78, 91, 23, 106.00, 3, 0.00);
INSERT INTO pozycje VALUES (1195, 78, 93, 23, 172.00, 3, 0.00);
INSERT INTO pozycje VALUES (1196, 79, 85, 23, 195.00, 4, 0.00);
INSERT INTO pozycje VALUES (1197, 79, 66, 23, 184.00, 4, 0.00);
INSERT INTO pozycje VALUES (1198, 80, 15, 23, 175.00, 3, 0.00);
INSERT INTO pozycje VALUES (1199, 80, 19, 23, 145.00, 2, 0.00);
INSERT INTO pozycje VALUES (1200, 80, 52, 23, 186.00, 3, 0.00);
INSERT INTO pozycje VALUES (1201, 1, 38, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1202, 1, 24, 23, 220.00, 1, 0.00);
INSERT INTO pozycje VALUES (1203, 1, 12, 23, 320.00, 1, 0.00);
INSERT INTO pozycje VALUES (1204, 1, 12, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1205, 2, 1, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1206, 2, 4, 23, 220.00, 1, 0.00);
INSERT INTO pozycje VALUES (1207, 2, 8, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1208, 3, 3, 23, 120.00, 5, 0.00);
INSERT INTO pozycje VALUES (1209, 3, 40, 23, 80.00, 1, 0.00);
INSERT INTO pozycje VALUES (1210, 4, 11, 23, 120.00, 3, 0.00);
INSERT INTO pozycje VALUES (1211, 5, 20, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1212, 5, 21, 23, 50.00, 10, 0.00);
INSERT INTO pozycje VALUES (1213, 5, 22, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1214, 5, 12, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1215, 6, 15, 23, 100.00, 20, 0.00);
INSERT INTO pozycje VALUES (1216, 6, 2, 23, 150.00, 10, 0.00);
INSERT INTO pozycje VALUES (1217, 7, 8, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1218, 7, 90, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (1219, 7, 10, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1220, 7, 38, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1221, 7, 39, 23, 200.00, 3, 0.00);
INSERT INTO pozycje VALUES (1222, 7, 100, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1223, 8, 15, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1224, 8, 12, 23, 50.00, 1, 0.00);
INSERT INTO pozycje VALUES (1225, 8, 71, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1226, 8, 72, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1227, 8, 61, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1228, 8, 66, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1229, 9, 54, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1230, 10, 51, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1231, 11, 80, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1232, 11, 11, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (1233, 11, 15, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1234, 12, 16, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1235, 12, 32, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (1236, 12, 33, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1237, 13, 65, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1238, 13, 34, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (1239, 13, 110, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1240, 13, 109, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1241, 14, 43, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1242, 14, 89, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (1243, 14, 98, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1244, 14, 54, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1245, 14, 32, 23, 200.00, 3, 0.00);
INSERT INTO pozycje VALUES (1246, 14, 21, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1247, 15, 8, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1248, 15, 55, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (1249, 15, 68, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1250, 15, 93, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1251, 16, 52, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1252, 17, 78, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1253, 17, 64, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (1254, 17, 71, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1255, 17, 23, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1256, 18, 56, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1257, 18, 87, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (1258, 18, 12, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1259, 19, 34, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1260, 19, 21, 23, 50.00, 3, 0.00);
INSERT INTO pozycje VALUES (1261, 19, 67, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1262, 19, 87, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1263, 19, 99, 23, 210.00, 3, 0.00);
INSERT INTO pozycje VALUES (1264, 20, 84, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1265, 21, 4, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1266, 21, 8, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (1267, 22, 58, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1268, 22, 98, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (1269, 22, 32, 23, 149.00, 1, 0.00);
INSERT INTO pozycje VALUES (1270, 22, 56, 23, 139.00, 3, 0.00);
INSERT INTO pozycje VALUES (1271, 23, 49, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1272, 23, 62, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (1273, 23, 53, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1274, 24, 61, 23, 139.00, 3, 0.00);
INSERT INTO pozycje VALUES (1275, 25, 38, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1276, 25, 18, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (1277, 25, 28, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1278, 25, 30, 23, 139.00, 3, 0.00);
INSERT INTO pozycje VALUES (1279, 26, 11, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1280, 26, 43, 23, 139.00, 3, 0.00);
INSERT INTO pozycje VALUES (1281, 27, 76, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1282, 27, 32, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (1283, 27, 1, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1284, 27, 4, 23, 139.00, 3, 0.00);
INSERT INTO pozycje VALUES (1285, 28, 43, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1286, 28, 97, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (1287, 28, 67, 23, 149.00, 1, 0.00);
INSERT INTO pozycje VALUES (1288, 29, 8, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1289, 30, 15, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1290, 30, 11, 23, 210.00, 3, 0.00);
INSERT INTO pozycje VALUES (1291, 31, 19, 23, 100.00, 3, 0.00);
INSERT INTO pozycje VALUES (1292, 32, 18, 23, 200.00, 3, 0.00);
INSERT INTO pozycje VALUES (1293, 33, 15, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1294, 33, 1, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (1295, 34, 6, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1296, 34, 9, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (1297, 34, 4, 23, 139.00, 2, 0.00);
INSERT INTO pozycje VALUES (1298, 35, 78, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1299, 35, 43, 23, 139.00, 2, 0.00);
INSERT INTO pozycje VALUES (1300, 36, 65, 23, 200.00, 3, 0.00);
INSERT INTO pozycje VALUES (1301, 36, 33, 23, 149.00, 1, 0.00);
INSERT INTO pozycje VALUES (1302, 36, 22, 23, 139.00, 2, 0.00);
INSERT INTO pozycje VALUES (1303, 37, 21, 23, 139.00, 2, 0.00);
INSERT INTO pozycje VALUES (1304, 38, 95, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1305, 38, 78, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (1306, 38, 43, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1307, 39, 76, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1308, 39, 34, 23, 150.00, 3, 0.00);
INSERT INTO pozycje VALUES (1309, 39, 55, 23, 220.00, 1, 0.00);
INSERT INTO pozycje VALUES (1310, 39, 109, 23, 100.00, 3, 0.00);
INSERT INTO pozycje VALUES (1311, 40, 110, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1312, 40, 56, 23, 139.00, 3, 0.00);
INSERT INTO pozycje VALUES (1313, 41, 1, 23, 183.00, 3, 0.00);
INSERT INTO pozycje VALUES (1314, 41, 73, 23, 106.00, 3, 0.00);
INSERT INTO pozycje VALUES (1315, 41, 80, 23, 186.00, 1, 0.00);
INSERT INTO pozycje VALUES (1316, 42, 49, 23, 193.00, 3, 0.00);
INSERT INTO pozycje VALUES (1317, 42, 88, 23, 129.00, 1, 0.00);
INSERT INTO pozycje VALUES (1318, 43, 75, 23, 124.00, 2, 0.00);
INSERT INTO pozycje VALUES (1319, 43, 38, 23, 165.00, 1, 0.00);
INSERT INTO pozycje VALUES (1320, 43, 17, 23, 146.00, 1, 0.00);
INSERT INTO pozycje VALUES (1321, 43, 83, 23, 116.00, 5, 0.00);
INSERT INTO pozycje VALUES (1322, 44, 30, 23, 117.00, 3, 0.00);
INSERT INTO pozycje VALUES (1323, 44, 92, 23, 171.00, 5, 0.00);
INSERT INTO pozycje VALUES (1324, 45, 6, 23, 155.00, 2, 0.00);
INSERT INTO pozycje VALUES (1325, 46, 15, 23, 198.00, 5, 0.00);
INSERT INTO pozycje VALUES (1326, 46, 59, 23, 184.00, 1, 0.00);
INSERT INTO pozycje VALUES (1327, 46, 56, 23, 181.00, 3, 0.00);
INSERT INTO pozycje VALUES (1328, 47, 63, 23, 136.00, 4, 0.00);
INSERT INTO pozycje VALUES (1329, 47, 1, 23, 137.00, 5, 0.00);
INSERT INTO pozycje VALUES (1330, 47, 41, 23, 123.00, 3, 0.00);
INSERT INTO pozycje VALUES (1331, 47, 17, 23, 188.00, 1, 0.00);
INSERT INTO pozycje VALUES (1332, 47, 58, 23, 165.00, 1, 0.00);
INSERT INTO pozycje VALUES (1333, 47, 21, 23, 183.00, 5, 0.00);
INSERT INTO pozycje VALUES (1334, 48, 63, 23, 159.00, 4, 0.00);
INSERT INTO pozycje VALUES (1335, 48, 24, 23, 176.00, 5, 0.00);
INSERT INTO pozycje VALUES (1336, 48, 26, 23, 126.00, 2, 0.00);
INSERT INTO pozycje VALUES (1337, 49, 53, 23, 137.00, 5, 0.00);
INSERT INTO pozycje VALUES (1338, 49, 20, 23, 193.00, 4, 0.00);
INSERT INTO pozycje VALUES (1339, 49, 21, 23, 114.00, 5, 0.00);
INSERT INTO pozycje VALUES (1340, 50, 28, 23, 148.00, 3, 0.00);
INSERT INTO pozycje VALUES (1341, 50, 39, 23, 191.00, 3, 0.00);
INSERT INTO pozycje VALUES (1342, 61, 54, 23, 104.00, 5, 0.00);
INSERT INTO pozycje VALUES (1343, 61, 6, 23, 185.00, 5, 0.00);
INSERT INTO pozycje VALUES (1344, 61, 27, 23, 160.00, 1, 0.00);
INSERT INTO pozycje VALUES (1345, 62, 71, 23, 119.00, 4, 0.00);
INSERT INTO pozycje VALUES (1346, 62, 85, 23, 174.00, 4, 0.00);
INSERT INTO pozycje VALUES (1347, 63, 12, 23, 125.00, 2, 0.00);
INSERT INTO pozycje VALUES (1348, 63, 85, 23, 162.00, 5, 0.00);
INSERT INTO pozycje VALUES (1349, 63, 71, 23, 126.00, 3, 0.00);
INSERT INTO pozycje VALUES (1350, 63, 44, 23, 192.00, 5, 0.00);
INSERT INTO pozycje VALUES (1351, 64, 12, 23, 151.00, 5, 0.00);
INSERT INTO pozycje VALUES (1352, 64, 29, 23, 136.00, 2, 0.00);
INSERT INTO pozycje VALUES (1353, 65, 95, 23, 192.00, 1, 0.00);
INSERT INTO pozycje VALUES (1354, 66, 99, 23, 103.00, 3, 0.00);
INSERT INTO pozycje VALUES (1355, 66, 82, 23, 187.00, 5, 0.00);
INSERT INTO pozycje VALUES (1356, 66, 51, 23, 135.00, 5, 0.00);
INSERT INTO pozycje VALUES (1357, 67, 100, 23, 144.00, 2, 0.00);
INSERT INTO pozycje VALUES (1358, 67, 81, 23, 152.00, 1, 0.00);
INSERT INTO pozycje VALUES (1359, 67, 32, 23, 108.00, 1, 0.00);
INSERT INTO pozycje VALUES (1360, 67, 68, 23, 182.00, 2, 0.00);
INSERT INTO pozycje VALUES (1361, 67, 22, 23, 136.00, 4, 0.00);
INSERT INTO pozycje VALUES (1362, 67, 39, 23, 138.00, 5, 0.00);
INSERT INTO pozycje VALUES (1363, 68, 27, 23, 102.00, 5, 0.00);
INSERT INTO pozycje VALUES (1364, 68, 99, 23, 153.00, 4, 0.00);
INSERT INTO pozycje VALUES (1365, 68, 81, 23, 181.00, 4, 0.00);
INSERT INTO pozycje VALUES (1366, 69, 62, 23, 122.00, 5, 0.00);
INSERT INTO pozycje VALUES (1367, 69, 94, 23, 111.00, 5, 0.00);
INSERT INTO pozycje VALUES (1368, 69, 97, 23, 118.00, 5, 0.00);
INSERT INTO pozycje VALUES (1369, 70, 22, 23, 121.00, 2, 0.00);
INSERT INTO pozycje VALUES (1370, 70, 59, 23, 162.00, 4, 0.00);
INSERT INTO pozycje VALUES (1371, 81, 20, 23, 141.00, 2, 0.00);
INSERT INTO pozycje VALUES (1372, 81, 71, 23, 183.00, 1, 0.00);
INSERT INTO pozycje VALUES (1373, 81, 65, 23, 123.00, 1, 0.00);
INSERT INTO pozycje VALUES (1374, 81, 97, 23, 119.00, 2, 0.00);
INSERT INTO pozycje VALUES (1375, 82, 80, 23, 175.00, 1, 0.00);
INSERT INTO pozycje VALUES (1376, 82, 29, 23, 143.00, 3, 0.00);
INSERT INTO pozycje VALUES (1377, 83, 20, 23, 150.00, 5, 0.00);
INSERT INTO pozycje VALUES (1378, 83, 9, 23, 148.00, 3, 0.00);
INSERT INTO pozycje VALUES (1379, 83, 17, 23, 187.00, 5, 0.00);
INSERT INTO pozycje VALUES (1380, 83, 62, 23, 139.00, 4, 0.00);
INSERT INTO pozycje VALUES (1381, 84, 91, 23, 194.00, 3, 0.00);
INSERT INTO pozycje VALUES (1382, 84, 25, 23, 157.00, 5, 0.00);
INSERT INTO pozycje VALUES (1383, 85, 30, 23, 168.00, 1, 0.00);
INSERT INTO pozycje VALUES (1384, 86, 97, 23, 160.00, 2, 0.00);
INSERT INTO pozycje VALUES (1385, 86, 78, 23, 171.00, 1, 0.00);
INSERT INTO pozycje VALUES (1386, 86, 100, 23, 147.00, 5, 0.00);
INSERT INTO pozycje VALUES (1387, 87, 88, 23, 140.00, 3, 0.00);
INSERT INTO pozycje VALUES (1388, 88, 17, 23, 149.00, 1, 0.00);
INSERT INTO pozycje VALUES (1389, 88, 76, 23, 104.00, 1, 0.00);
INSERT INTO pozycje VALUES (1390, 88, 23, 23, 125.00, 3, 0.00);
INSERT INTO pozycje VALUES (1391, 89, 94, 23, 175.00, 1, 0.00);
INSERT INTO pozycje VALUES (1392, 89, 12, 23, 198.00, 4, 0.00);
INSERT INTO pozycje VALUES (1393, 89, 81, 23, 120.00, 1, 0.00);
INSERT INTO pozycje VALUES (1394, 89, 37, 23, 147.00, 3, 0.00);
INSERT INTO pozycje VALUES (1395, 90, 93, 23, 117.00, 2, 0.00);
INSERT INTO pozycje VALUES (1396, 90, 77, 23, 120.00, 2, 0.00);
INSERT INTO pozycje VALUES (1397, 91, 8, 23, 182.00, 2, 0.00);
INSERT INTO pozycje VALUES (1398, 91, 36, 23, 101.00, 2, 0.00);
INSERT INTO pozycje VALUES (1399, 91, 70, 23, 121.00, 3, 0.00);
INSERT INTO pozycje VALUES (1400, 92, 50, 23, 129.00, 1, 0.00);
INSERT INTO pozycje VALUES (1401, 92, 83, 23, 171.00, 3, 0.00);
INSERT INTO pozycje VALUES (1402, 93, 55, 23, 182.00, 5, 0.00);
INSERT INTO pozycje VALUES (1403, 93, 39, 23, 145.00, 5, 0.00);
INSERT INTO pozycje VALUES (1404, 93, 50, 23, 121.00, 2, 0.00);
INSERT INTO pozycje VALUES (1405, 93, 34, 23, 108.00, 1, 0.00);
INSERT INTO pozycje VALUES (1406, 94, 10, 23, 134.00, 2, 0.00);
INSERT INTO pozycje VALUES (1407, 94, 80, 23, 147.00, 3, 0.00);
INSERT INTO pozycje VALUES (1408, 95, 98, 23, 126.00, 5, 0.00);
INSERT INTO pozycje VALUES (1409, 96, 15, 23, 102.00, 2, 0.00);
INSERT INTO pozycje VALUES (1410, 96, 79, 23, 165.00, 1, 0.00);
INSERT INTO pozycje VALUES (1411, 96, 48, 23, 153.00, 4, 0.00);
INSERT INTO pozycje VALUES (1412, 97, 81, 23, 146.00, 4, 0.00);
INSERT INTO pozycje VALUES (1413, 97, 83, 23, 170.00, 1, 0.00);
INSERT INTO pozycje VALUES (1414, 97, 41, 23, 193.00, 2, 0.00);
INSERT INTO pozycje VALUES (1415, 97, 32, 23, 131.00, 3, 0.00);
INSERT INTO pozycje VALUES (1416, 97, 12, 23, 165.00, 2, 0.00);
INSERT INTO pozycje VALUES (1417, 97, 33, 23, 169.00, 1, 0.00);
INSERT INTO pozycje VALUES (1418, 98, 32, 23, 127.00, 2, 0.00);
INSERT INTO pozycje VALUES (1419, 98, 97, 23, 120.00, 4, 0.00);
INSERT INTO pozycje VALUES (1420, 98, 78, 23, 145.00, 1, 0.00);
INSERT INTO pozycje VALUES (1421, 99, 98, 23, 193.00, 2, 0.00);
INSERT INTO pozycje VALUES (1422, 99, 97, 23, 121.00, 5, 0.00);
INSERT INTO pozycje VALUES (1423, 99, 3, 23, 161.00, 4, 0.00);
INSERT INTO pozycje VALUES (1424, 100, 36, 23, 192.00, 2, 0.00);
INSERT INTO pozycje VALUES (1425, 100, 72, 23, 129.00, 4, 0.00);
INSERT INTO pozycje VALUES (1426, 101, 39, 23, 187.00, 2, 0.00);
INSERT INTO pozycje VALUES (1427, 101, 75, 23, 100.00, 3, 0.00);
INSERT INTO pozycje VALUES (1428, 101, 21, 23, 126.00, 4, 0.00);
INSERT INTO pozycje VALUES (1429, 102, 27, 23, 168.00, 2, 0.00);
INSERT INTO pozycje VALUES (1430, 102, 22, 23, 126.00, 3, 0.00);
INSERT INTO pozycje VALUES (1431, 103, 79, 23, 173.00, 3, 0.00);
INSERT INTO pozycje VALUES (1432, 104, 77, 23, 119.00, 5, 0.00);
INSERT INTO pozycje VALUES (1433, 104, 5, 23, 150.00, 2, 0.00);
INSERT INTO pozycje VALUES (1434, 105, 100, 23, 180.00, 3, 0.00);
INSERT INTO pozycje VALUES (1435, 106, 13, 23, 193.00, 2, 0.00);
INSERT INTO pozycje VALUES (1436, 106, 44, 23, 169.00, 5, 0.00);
INSERT INTO pozycje VALUES (1437, 106, 7, 23, 109.00, 5, 0.00);
INSERT INTO pozycje VALUES (1438, 107, 28, 23, 104.00, 3, 0.00);
INSERT INTO pozycje VALUES (1439, 107, 57, 23, 128.00, 4, 0.00);
INSERT INTO pozycje VALUES (1440, 107, 29, 23, 152.00, 2, 0.00);
INSERT INTO pozycje VALUES (1441, 107, 21, 23, 193.00, 4, 0.00);
INSERT INTO pozycje VALUES (1442, 107, 15, 23, 120.00, 5, 0.00);
INSERT INTO pozycje VALUES (1443, 107, 42, 23, 113.00, 5, 0.00);
INSERT INTO pozycje VALUES (1444, 108, 100, 23, 198.00, 2, 0.00);
INSERT INTO pozycje VALUES (1445, 108, 90, 23, 117.00, 4, 0.00);
INSERT INTO pozycje VALUES (1446, 108, 99, 23, 160.00, 4, 0.00);
INSERT INTO pozycje VALUES (1447, 109, 20, 23, 105.00, 3, 0.00);
INSERT INTO pozycje VALUES (1448, 109, 51, 23, 182.00, 1, 0.00);
INSERT INTO pozycje VALUES (1449, 109, 37, 23, 107.00, 5, 0.00);
INSERT INTO pozycje VALUES (1450, 110, 22, 23, 180.00, 4, 0.00);
INSERT INTO pozycje VALUES (1451, 110, 24, 23, 195.00, 1, 0.00);
INSERT INTO pozycje VALUES (1452, 111, 73, 23, 176.00, 4, 0.00);
INSERT INTO pozycje VALUES (1453, 111, 3, 23, 196.00, 4, 0.00);
INSERT INTO pozycje VALUES (1454, 111, 95, 23, 190.00, 5, 0.00);
INSERT INTO pozycje VALUES (1455, 112, 62, 23, 172.00, 1, 0.00);
INSERT INTO pozycje VALUES (1456, 112, 53, 23, 176.00, 5, 0.00);
INSERT INTO pozycje VALUES (1457, 113, 81, 23, 107.00, 4, 0.00);
INSERT INTO pozycje VALUES (1458, 113, 45, 23, 171.00, 4, 0.00);
INSERT INTO pozycje VALUES (1459, 113, 98, 23, 140.00, 2, 0.00);
INSERT INTO pozycje VALUES (1460, 113, 77, 23, 199.00, 2, 0.00);
INSERT INTO pozycje VALUES (1461, 114, 81, 23, 184.00, 3, 0.00);
INSERT INTO pozycje VALUES (1462, 114, 46, 23, 191.00, 2, 0.00);
INSERT INTO pozycje VALUES (1463, 115, 19, 23, 120.00, 3, 0.00);
INSERT INTO pozycje VALUES (1464, 116, 41, 23, 168.00, 1, 0.00);
INSERT INTO pozycje VALUES (1465, 116, 73, 23, 114.00, 4, 0.00);
INSERT INTO pozycje VALUES (1466, 116, 94, 23, 177.00, 2, 0.00);
INSERT INTO pozycje VALUES (1467, 117, 65, 23, 157.00, 1, 0.00);
INSERT INTO pozycje VALUES (1468, 117, 93, 23, 189.00, 1, 0.00);
INSERT INTO pozycje VALUES (1469, 117, 95, 23, 181.00, 5, 0.00);
INSERT INTO pozycje VALUES (1470, 117, 25, 23, 102.00, 2, 0.00);
INSERT INTO pozycje VALUES (1471, 117, 53, 23, 151.00, 5, 0.00);
INSERT INTO pozycje VALUES (1472, 117, 86, 23, 125.00, 1, 0.00);
INSERT INTO pozycje VALUES (1473, 118, 57, 23, 128.00, 3, 0.00);
INSERT INTO pozycje VALUES (1474, 118, 66, 23, 196.00, 1, 0.00);
INSERT INTO pozycje VALUES (1475, 118, 30, 23, 192.00, 2, 0.00);
INSERT INTO pozycje VALUES (1476, 119, 70, 23, 161.00, 3, 0.00);
INSERT INTO pozycje VALUES (1477, 119, 91, 23, 189.00, 3, 0.00);
INSERT INTO pozycje VALUES (1478, 119, 23, 23, 155.00, 5, 0.00);
INSERT INTO pozycje VALUES (1479, 120, 72, 23, 155.00, 1, 0.00);
INSERT INTO pozycje VALUES (1480, 120, 45, 23, 119.00, 5, 0.00);
INSERT INTO pozycje VALUES (1481, 121, 91, 23, 123.00, 3, 0.00);
INSERT INTO pozycje VALUES (1482, 121, 48, 23, 104.00, 2, 0.00);
INSERT INTO pozycje VALUES (1483, 121, 98, 23, 150.00, 1, 0.00);
INSERT INTO pozycje VALUES (1484, 121, 72, 23, 172.00, 3, 0.00);
INSERT INTO pozycje VALUES (1485, 122, 94, 23, 112.00, 3, 0.00);
INSERT INTO pozycje VALUES (1486, 122, 23, 23, 177.00, 3, 0.00);
INSERT INTO pozycje VALUES (1487, 123, 84, 23, 117.00, 1, 0.00);
INSERT INTO pozycje VALUES (1488, 123, 41, 23, 122.00, 5, 0.00);
INSERT INTO pozycje VALUES (1489, 123, 72, 23, 155.00, 5, 0.00);
INSERT INTO pozycje VALUES (1490, 123, 17, 23, 185.00, 3, 0.00);
INSERT INTO pozycje VALUES (1491, 124, 94, 23, 136.00, 5, 0.00);
INSERT INTO pozycje VALUES (1492, 124, 98, 23, 145.00, 4, 0.00);
INSERT INTO pozycje VALUES (1493, 125, 61, 23, 102.00, 3, 0.00);
INSERT INTO pozycje VALUES (1494, 126, 76, 23, 186.00, 5, 0.00);
INSERT INTO pozycje VALUES (1495, 126, 6, 23, 184.00, 3, 0.00);
INSERT INTO pozycje VALUES (1496, 126, 55, 23, 161.00, 2, 0.00);
INSERT INTO pozycje VALUES (1497, 127, 60, 23, 107.00, 3, 0.00);
INSERT INTO pozycje VALUES (1498, 128, 51, 23, 155.00, 1, 0.00);
INSERT INTO pozycje VALUES (1499, 128, 65, 23, 191.00, 5, 0.00);
INSERT INTO pozycje VALUES (1500, 128, 36, 23, 158.00, 3, 0.00);
INSERT INTO pozycje VALUES (1501, 129, 27, 23, 127.00, 1, 0.00);
INSERT INTO pozycje VALUES (1502, 129, 42, 23, 163.00, 1, 0.00);
INSERT INTO pozycje VALUES (1503, 129, 46, 23, 136.00, 1, 0.00);
INSERT INTO pozycje VALUES (1504, 129, 18, 23, 194.00, 2, 0.00);
INSERT INTO pozycje VALUES (1505, 130, 91, 23, 147.00, 5, 0.00);
INSERT INTO pozycje VALUES (1506, 130, 45, 23, 199.00, 2, 0.00);
INSERT INTO pozycje VALUES (1507, 131, 88, 23, 143.00, 2, 0.00);
INSERT INTO pozycje VALUES (1508, 131, 34, 23, 188.00, 4, 0.00);
INSERT INTO pozycje VALUES (1509, 131, 6, 23, 131.00, 2, 0.00);
INSERT INTO pozycje VALUES (1510, 132, 74, 23, 120.00, 3, 0.00);
INSERT INTO pozycje VALUES (1511, 132, 99, 23, 106.00, 3, 0.00);
INSERT INTO pozycje VALUES (1512, 133, 99, 23, 128.00, 1, 0.00);
INSERT INTO pozycje VALUES (1513, 133, 92, 23, 185.00, 2, 0.00);
INSERT INTO pozycje VALUES (1514, 133, 67, 23, 174.00, 5, 0.00);
INSERT INTO pozycje VALUES (1515, 133, 77, 23, 144.00, 4, 0.00);
INSERT INTO pozycje VALUES (1516, 134, 43, 23, 178.00, 2, 0.00);
INSERT INTO pozycje VALUES (1517, 134, 81, 23, 156.00, 4, 0.00);
INSERT INTO pozycje VALUES (1518, 135, 52, 23, 140.00, 2, 0.00);
INSERT INTO pozycje VALUES (1519, 136, 90, 23, 126.00, 2, 0.00);
INSERT INTO pozycje VALUES (1520, 136, 22, 23, 171.00, 1, 0.00);
INSERT INTO pozycje VALUES (1521, 136, 77, 23, 115.00, 3, 0.00);
INSERT INTO pozycje VALUES (1522, 137, 7, 23, 160.00, 2, 0.00);
INSERT INTO pozycje VALUES (1523, 137, 51, 23, 144.00, 1, 0.00);
INSERT INTO pozycje VALUES (1524, 137, 94, 23, 103.00, 5, 0.00);
INSERT INTO pozycje VALUES (1525, 137, 79, 23, 196.00, 5, 0.00);
INSERT INTO pozycje VALUES (1526, 137, 54, 23, 169.00, 1, 0.00);
INSERT INTO pozycje VALUES (1527, 137, 28, 23, 119.00, 3, 0.00);
INSERT INTO pozycje VALUES (1528, 138, 79, 23, 122.00, 1, 0.00);
INSERT INTO pozycje VALUES (1529, 138, 86, 23, 132.00, 4, 0.00);
INSERT INTO pozycje VALUES (1530, 138, 100, 23, 100.00, 4, 0.00);
INSERT INTO pozycje VALUES (1531, 139, 93, 23, 104.00, 1, 0.00);
INSERT INTO pozycje VALUES (1532, 139, 47, 23, 170.00, 3, 0.00);
INSERT INTO pozycje VALUES (1533, 140, 61, 23, 188.00, 1, 0.00);
INSERT INTO pozycje VALUES (1534, 140, 12, 23, 157.00, 2, 0.00);
INSERT INTO pozycje VALUES (1535, 141, 88, 23, 177.00, 5, 0.00);
INSERT INTO pozycje VALUES (1536, 141, 28, 23, 180.00, 5, 0.00);
INSERT INTO pozycje VALUES (1537, 141, 24, 23, 184.00, 1, 0.00);
INSERT INTO pozycje VALUES (1538, 142, 75, 23, 168.00, 4, 0.00);
INSERT INTO pozycje VALUES (1539, 142, 82, 23, 178.00, 3, 0.00);
INSERT INTO pozycje VALUES (1540, 143, 53, 23, 186.00, 4, 0.00);
INSERT INTO pozycje VALUES (1541, 144, 39, 23, 158.00, 5, 0.00);
INSERT INTO pozycje VALUES (1542, 144, 27, 23, 157.00, 5, 0.00);
INSERT INTO pozycje VALUES (1543, 145, 91, 23, 142.00, 3, 0.00);
INSERT INTO pozycje VALUES (1544, 146, 97, 23, 191.00, 4, 0.00);
INSERT INTO pozycje VALUES (1545, 146, 77, 23, 150.00, 2, 0.00);
INSERT INTO pozycje VALUES (1546, 146, 14, 23, 108.00, 5, 0.00);
INSERT INTO pozycje VALUES (1547, 147, 50, 23, 132.00, 2, 0.00);
INSERT INTO pozycje VALUES (1548, 147, 76, 23, 101.00, 3, 0.00);
INSERT INTO pozycje VALUES (1549, 147, 46, 23, 176.00, 4, 0.00);
INSERT INTO pozycje VALUES (1550, 147, 70, 23, 160.00, 4, 0.00);
INSERT INTO pozycje VALUES (1551, 147, 81, 23, 152.00, 1, 0.00);
INSERT INTO pozycje VALUES (1552, 147, 61, 23, 159.00, 2, 0.00);
INSERT INTO pozycje VALUES (1553, 148, 57, 23, 138.00, 3, 0.00);
INSERT INTO pozycje VALUES (1554, 148, 73, 23, 199.00, 4, 0.00);
INSERT INTO pozycje VALUES (1555, 148, 42, 23, 129.00, 3, 0.00);
INSERT INTO pozycje VALUES (1556, 149, 74, 23, 103.00, 2, 0.00);
INSERT INTO pozycje VALUES (1557, 149, 61, 23, 157.00, 4, 0.00);
INSERT INTO pozycje VALUES (1558, 149, 43, 23, 121.00, 5, 0.00);
INSERT INTO pozycje VALUES (1559, 150, 68, 23, 199.00, 2, 0.00);
INSERT INTO pozycje VALUES (1560, 150, 69, 23, 136.00, 3, 0.00);
INSERT INTO pozycje VALUES (1561, 151, 37, 23, 140.00, 3, 0.00);
INSERT INTO pozycje VALUES (1562, 151, 11, 23, 178.00, 1, 0.00);
INSERT INTO pozycje VALUES (1563, 151, 61, 23, 176.00, 5, 0.00);
INSERT INTO pozycje VALUES (1564, 152, 95, 23, 121.00, 5, 0.00);
INSERT INTO pozycje VALUES (1565, 152, 87, 23, 130.00, 2, 0.00);
INSERT INTO pozycje VALUES (1566, 152, 56, 23, 133.00, 4, 0.00);
INSERT INTO pozycje VALUES (1567, 153, 99, 23, 100.00, 2, 0.00);
INSERT INTO pozycje VALUES (1568, 153, 48, 23, 183.00, 3, 0.00);
INSERT INTO pozycje VALUES (1569, 153, 4, 23, 182.00, 2, 0.00);
INSERT INTO pozycje VALUES (1570, 153, 22, 23, 101.00, 2, 0.00);
INSERT INTO pozycje VALUES (1571, 154, 62, 23, 186.00, 3, 0.00);
INSERT INTO pozycje VALUES (1572, 154, 2, 23, 158.00, 1, 0.00);
INSERT INTO pozycje VALUES (1573, 155, 96, 23, 158.00, 4, 0.00);
INSERT INTO pozycje VALUES (1574, 156, 29, 23, 111.00, 5, 0.00);
INSERT INTO pozycje VALUES (1575, 156, 4, 23, 117.00, 2, 0.00);
INSERT INTO pozycje VALUES (1576, 156, 52, 23, 174.00, 1, 0.00);
INSERT INTO pozycje VALUES (1577, 157, 94, 23, 123.00, 2, 0.00);
INSERT INTO pozycje VALUES (1578, 157, 5, 23, 138.00, 3, 0.00);
INSERT INTO pozycje VALUES (1579, 157, 70, 23, 111.00, 1, 0.00);
INSERT INTO pozycje VALUES (1580, 157, 32, 23, 131.00, 4, 0.00);
INSERT INTO pozycje VALUES (1581, 157, 75, 23, 146.00, 5, 0.00);
INSERT INTO pozycje VALUES (1582, 157, 44, 23, 107.00, 4, 0.00);
INSERT INTO pozycje VALUES (1583, 158, 40, 23, 113.00, 3, 0.00);
INSERT INTO pozycje VALUES (1584, 158, 49, 23, 190.00, 3, 0.00);
INSERT INTO pozycje VALUES (1585, 158, 64, 23, 192.00, 1, 0.00);
INSERT INTO pozycje VALUES (1586, 159, 55, 23, 193.00, 1, 0.00);
INSERT INTO pozycje VALUES (1587, 159, 74, 23, 178.00, 4, 0.00);
INSERT INTO pozycje VALUES (1588, 159, 35, 23, 179.00, 2, 0.00);
INSERT INTO pozycje VALUES (1589, 160, 80, 23, 125.00, 3, 0.00);
INSERT INTO pozycje VALUES (1590, 160, 44, 23, 137.00, 4, 0.00);
INSERT INTO pozycje VALUES (1591, 161, 42, 23, 174.00, 3, 0.00);
INSERT INTO pozycje VALUES (1592, 161, 63, 23, 128.00, 2, 0.00);
INSERT INTO pozycje VALUES (1593, 161, 71, 23, 187.00, 3, 0.00);
INSERT INTO pozycje VALUES (1594, 161, 20, 23, 193.00, 1, 0.00);
INSERT INTO pozycje VALUES (1595, 162, 49, 23, 165.00, 1, 0.00);
INSERT INTO pozycje VALUES (1596, 162, 100, 23, 143.00, 2, 0.00);
INSERT INTO pozycje VALUES (1597, 163, 74, 23, 168.00, 3, 0.00);
INSERT INTO pozycje VALUES (1598, 163, 75, 23, 186.00, 2, 0.00);
INSERT INTO pozycje VALUES (1599, 163, 62, 23, 125.00, 4, 0.00);
INSERT INTO pozycje VALUES (1600, 163, 68, 23, 119.00, 1, 0.00);
INSERT INTO pozycje VALUES (1601, 164, 35, 23, 129.00, 5, 0.00);
INSERT INTO pozycje VALUES (1602, 164, 45, 23, 144.00, 5, 0.00);
INSERT INTO pozycje VALUES (1603, 165, 51, 23, 170.00, 4, 0.00);
INSERT INTO pozycje VALUES (1604, 166, 92, 23, 167.00, 1, 0.00);
INSERT INTO pozycje VALUES (1605, 166, 33, 23, 174.00, 2, 0.00);
INSERT INTO pozycje VALUES (1606, 166, 10, 23, 160.00, 5, 0.00);
INSERT INTO pozycje VALUES (1607, 167, 34, 23, 107.00, 3, 0.00);
INSERT INTO pozycje VALUES (1608, 168, 44, 23, 110.00, 1, 0.00);
INSERT INTO pozycje VALUES (1609, 168, 43, 23, 159.00, 2, 0.00);
INSERT INTO pozycje VALUES (1610, 168, 12, 23, 135.00, 1, 0.00);
INSERT INTO pozycje VALUES (1611, 169, 73, 23, 132.00, 3, 0.00);
INSERT INTO pozycje VALUES (1612, 169, 32, 23, 163.00, 4, 0.00);
INSERT INTO pozycje VALUES (1613, 169, 6, 23, 163.00, 5, 0.00);
INSERT INTO pozycje VALUES (1614, 169, 87, 23, 101.00, 1, 0.00);
INSERT INTO pozycje VALUES (1615, 170, 6, 23, 120.00, 5, 0.00);
INSERT INTO pozycje VALUES (1616, 170, 15, 23, 129.00, 3, 0.00);
INSERT INTO pozycje VALUES (1617, 171, 76, 23, 150.00, 4, 0.00);
INSERT INTO pozycje VALUES (1618, 171, 45, 23, 175.00, 2, 0.00);
INSERT INTO pozycje VALUES (1619, 171, 1, 23, 112.00, 5, 0.00);
INSERT INTO pozycje VALUES (1620, 172, 45, 23, 182.00, 1, 0.00);
INSERT INTO pozycje VALUES (1621, 172, 8, 23, 163.00, 1, 0.00);
INSERT INTO pozycje VALUES (1622, 173, 32, 23, 106.00, 1, 0.00);
INSERT INTO pozycje VALUES (1623, 173, 100, 23, 164.00, 4, 0.00);
INSERT INTO pozycje VALUES (1624, 173, 12, 23, 129.00, 3, 0.00);
INSERT INTO pozycje VALUES (1625, 173, 84, 23, 126.00, 1, 0.00);
INSERT INTO pozycje VALUES (1626, 174, 85, 23, 172.00, 1, 0.00);
INSERT INTO pozycje VALUES (1627, 174, 94, 23, 166.00, 1, 0.00);
INSERT INTO pozycje VALUES (1628, 175, 10, 23, 116.00, 1, 0.00);
INSERT INTO pozycje VALUES (1629, 176, 11, 23, 181.00, 5, 0.00);
INSERT INTO pozycje VALUES (1630, 176, 100, 23, 101.00, 4, 0.00);
INSERT INTO pozycje VALUES (1631, 176, 69, 23, 199.00, 4, 0.00);
INSERT INTO pozycje VALUES (1632, 177, 62, 23, 143.00, 1, 0.00);
INSERT INTO pozycje VALUES (1633, 177, 15, 23, 138.00, 5, 0.00);
INSERT INTO pozycje VALUES (1634, 177, 30, 23, 108.00, 5, 0.00);
INSERT INTO pozycje VALUES (1635, 177, 77, 23, 181.00, 2, 0.00);
INSERT INTO pozycje VALUES (1636, 177, 60, 23, 185.00, 1, 0.00);
INSERT INTO pozycje VALUES (1637, 177, 85, 23, 122.00, 2, 0.00);
INSERT INTO pozycje VALUES (1638, 178, 84, 23, 171.00, 5, 0.00);
INSERT INTO pozycje VALUES (1639, 178, 32, 23, 167.00, 1, 0.00);
INSERT INTO pozycje VALUES (1640, 178, 97, 23, 140.00, 1, 0.00);
INSERT INTO pozycje VALUES (1641, 179, 45, 23, 167.00, 2, 0.00);
INSERT INTO pozycje VALUES (1642, 179, 47, 23, 146.00, 4, 0.00);
INSERT INTO pozycje VALUES (1643, 180, 26, 23, 133.00, 2, 0.00);
INSERT INTO pozycje VALUES (1644, 180, 68, 23, 199.00, 2, 0.00);
INSERT INTO pozycje VALUES (1645, 181, 47, 23, 114.00, 2, 0.00);
INSERT INTO pozycje VALUES (1646, 181, 31, 23, 123.00, 2, 0.00);
INSERT INTO pozycje VALUES (1647, 181, 81, 23, 143.00, 4, 0.00);
INSERT INTO pozycje VALUES (1648, 182, 12, 23, 143.00, 4, 0.00);
INSERT INTO pozycje VALUES (1649, 182, 31, 23, 116.00, 2, 0.00);
INSERT INTO pozycje VALUES (1650, 182, 10, 23, 175.00, 1, 0.00);
INSERT INTO pozycje VALUES (1651, 183, 67, 23, 163.00, 2, 0.00);
INSERT INTO pozycje VALUES (1652, 183, 84, 23, 142.00, 1, 0.00);
INSERT INTO pozycje VALUES (1653, 183, 10, 23, 146.00, 2, 0.00);
INSERT INTO pozycje VALUES (1654, 183, 60, 23, 127.00, 5, 0.00);
INSERT INTO pozycje VALUES (1655, 184, 41, 23, 116.00, 3, 0.00);
INSERT INTO pozycje VALUES (1656, 184, 44, 23, 194.00, 5, 0.00);
INSERT INTO pozycje VALUES (1657, 185, 71, 23, 157.00, 3, 0.00);
INSERT INTO pozycje VALUES (1658, 186, 34, 23, 127.00, 3, 0.00);
INSERT INTO pozycje VALUES (1659, 186, 86, 23, 152.00, 2, 0.00);
INSERT INTO pozycje VALUES (1660, 186, 78, 23, 132.00, 5, 0.00);
INSERT INTO pozycje VALUES (1661, 187, 84, 23, 174.00, 1, 0.00);
INSERT INTO pozycje VALUES (1662, 188, 53, 23, 118.00, 5, 0.00);
INSERT INTO pozycje VALUES (1663, 188, 71, 23, 137.00, 3, 0.00);
INSERT INTO pozycje VALUES (1664, 188, 76, 23, 106.00, 3, 0.00);
INSERT INTO pozycje VALUES (1665, 189, 62, 23, 151.00, 2, 0.00);
INSERT INTO pozycje VALUES (1666, 189, 36, 23, 140.00, 3, 0.00);
INSERT INTO pozycje VALUES (1667, 189, 6, 23, 167.00, 5, 0.00);
INSERT INTO pozycje VALUES (1668, 190, 81, 23, 162.00, 1, 0.00);
INSERT INTO pozycje VALUES (1669, 190, 28, 23, 180.00, 5, 0.00);
INSERT INTO pozycje VALUES (1670, 191, 93, 23, 161.00, 1, 0.00);
INSERT INTO pozycje VALUES (1671, 191, 8, 23, 139.00, 4, 0.00);
INSERT INTO pozycje VALUES (1672, 191, 56, 23, 188.00, 4, 0.00);
INSERT INTO pozycje VALUES (1673, 191, 80, 23, 157.00, 2, 0.00);
INSERT INTO pozycje VALUES (1674, 192, 3, 23, 178.00, 3, 0.00);
INSERT INTO pozycje VALUES (1675, 192, 63, 23, 141.00, 1, 0.00);
INSERT INTO pozycje VALUES (1676, 193, 74, 23, 149.00, 5, 0.00);
INSERT INTO pozycje VALUES (1677, 193, 8, 23, 166.00, 5, 0.00);
INSERT INTO pozycje VALUES (1678, 193, 8, 23, 121.00, 4, 0.00);
INSERT INTO pozycje VALUES (1679, 193, 10, 23, 171.00, 2, 0.00);
INSERT INTO pozycje VALUES (1680, 194, 35, 23, 158.00, 5, 0.00);
INSERT INTO pozycje VALUES (1681, 194, 32, 23, 133.00, 2, 0.00);
INSERT INTO pozycje VALUES (1682, 195, 17, 23, 110.00, 1, 0.00);
INSERT INTO pozycje VALUES (1683, 196, 11, 23, 150.00, 2, 0.00);
INSERT INTO pozycje VALUES (1684, 196, 70, 23, 137.00, 4, 0.00);
INSERT INTO pozycje VALUES (1685, 196, 57, 23, 193.00, 3, 0.00);
INSERT INTO pozycje VALUES (1686, 197, 89, 23, 105.00, 2, 0.00);
INSERT INTO pozycje VALUES (1687, 198, 90, 23, 194.00, 1, 0.00);
INSERT INTO pozycje VALUES (1688, 198, 83, 23, 106.00, 3, 0.00);
INSERT INTO pozycje VALUES (1689, 198, 29, 23, 110.00, 3, 0.00);
INSERT INTO pozycje VALUES (1690, 199, 48, 23, 157.00, 2, 0.00);
INSERT INTO pozycje VALUES (1691, 199, 23, 23, 172.00, 5, 0.00);
INSERT INTO pozycje VALUES (1692, 199, 60, 23, 136.00, 1, 0.00);
INSERT INTO pozycje VALUES (1693, 199, 52, 23, 122.00, 1, 0.00);
INSERT INTO pozycje VALUES (1694, 200, 62, 23, 176.00, 1, 0.00);
INSERT INTO pozycje VALUES (1695, 200, 78, 23, 126.00, 5, 0.00);
INSERT INTO pozycje VALUES (1696, 201, 15, 23, 192.00, 5, 0.00);
INSERT INTO pozycje VALUES (1697, 201, 81, 23, 196.00, 5, 0.00);
INSERT INTO pozycje VALUES (1698, 201, 32, 23, 125.00, 3, 0.00);
INSERT INTO pozycje VALUES (1699, 202, 17, 23, 118.00, 3, 0.00);
INSERT INTO pozycje VALUES (1700, 202, 58, 23, 180.00, 5, 0.00);
INSERT INTO pozycje VALUES (1701, 203, 15, 23, 104.00, 4, 0.00);
INSERT INTO pozycje VALUES (1702, 203, 51, 23, 125.00, 5, 0.00);
INSERT INTO pozycje VALUES (1703, 203, 73, 23, 155.00, 3, 0.00);
INSERT INTO pozycje VALUES (1704, 203, 94, 23, 196.00, 4, 0.00);
INSERT INTO pozycje VALUES (1705, 204, 55, 23, 189.00, 3, 0.00);
INSERT INTO pozycje VALUES (1706, 204, 19, 23, 190.00, 2, 0.00);
INSERT INTO pozycje VALUES (1707, 205, 49, 23, 189.00, 4, 0.00);
INSERT INTO pozycje VALUES (1708, 206, 100, 23, 111.00, 2, 0.00);
INSERT INTO pozycje VALUES (1709, 206, 3, 23, 110.00, 3, 0.00);
INSERT INTO pozycje VALUES (1710, 206, 41, 23, 175.00, 4, 0.00);
INSERT INTO pozycje VALUES (1711, 207, 88, 23, 100.00, 1, 0.00);
INSERT INTO pozycje VALUES (1712, 207, 18, 23, 168.00, 1, 0.00);
INSERT INTO pozycje VALUES (1713, 207, 59, 23, 126.00, 4, 0.00);
INSERT INTO pozycje VALUES (1714, 207, 3, 23, 172.00, 1, 0.00);
INSERT INTO pozycje VALUES (1715, 207, 99, 23, 119.00, 3, 0.00);
INSERT INTO pozycje VALUES (1716, 207, 41, 23, 112.00, 4, 0.00);
INSERT INTO pozycje VALUES (1717, 208, 79, 23, 109.00, 4, 0.00);
INSERT INTO pozycje VALUES (1718, 208, 73, 23, 195.00, 4, 0.00);
INSERT INTO pozycje VALUES (1719, 208, 98, 23, 143.00, 3, 0.00);
INSERT INTO pozycje VALUES (1720, 209, 88, 23, 139.00, 1, 0.00);
INSERT INTO pozycje VALUES (1721, 209, 71, 23, 193.00, 4, 0.00);
INSERT INTO pozycje VALUES (1722, 210, 33, 23, 121.00, 5, 0.00);
INSERT INTO pozycje VALUES (1723, 210, 83, 23, 136.00, 3, 0.00);
INSERT INTO pozycje VALUES (1724, 211, 6, 23, 116.00, 5, 0.00);
INSERT INTO pozycje VALUES (1725, 211, 64, 23, 158.00, 4, 0.00);
INSERT INTO pozycje VALUES (1726, 211, 84, 23, 168.00, 3, 0.00);
INSERT INTO pozycje VALUES (1727, 212, 62, 23, 144.00, 4, 0.00);
INSERT INTO pozycje VALUES (1728, 212, 83, 23, 193.00, 2, 0.00);
INSERT INTO pozycje VALUES (1729, 213, 9, 23, 151.00, 4, 0.00);
INSERT INTO pozycje VALUES (1730, 213, 49, 23, 145.00, 2, 0.00);
INSERT INTO pozycje VALUES (1731, 213, 72, 23, 137.00, 2, 0.00);
INSERT INTO pozycje VALUES (1732, 213, 29, 23, 122.00, 4, 0.00);
INSERT INTO pozycje VALUES (1733, 214, 47, 23, 131.00, 4, 0.00);
INSERT INTO pozycje VALUES (1734, 214, 26, 23, 170.00, 1, 0.00);
INSERT INTO pozycje VALUES (1735, 215, 76, 23, 197.00, 1, 0.00);
INSERT INTO pozycje VALUES (1736, 216, 19, 23, 189.00, 2, 0.00);
INSERT INTO pozycje VALUES (1737, 216, 41, 23, 162.00, 3, 0.00);
INSERT INTO pozycje VALUES (1738, 216, 2, 23, 142.00, 4, 0.00);
INSERT INTO pozycje VALUES (1739, 217, 32, 23, 112.00, 2, 0.00);
INSERT INTO pozycje VALUES (1740, 217, 51, 23, 152.00, 2, 0.00);
INSERT INTO pozycje VALUES (1741, 217, 69, 23, 131.00, 5, 0.00);
INSERT INTO pozycje VALUES (1742, 217, 28, 23, 144.00, 2, 0.00);
INSERT INTO pozycje VALUES (1743, 217, 48, 23, 113.00, 5, 0.00);
INSERT INTO pozycje VALUES (1744, 218, 58, 23, 157.00, 4, 0.00);
INSERT INTO pozycje VALUES (1745, 218, 44, 23, 131.00, 5, 0.00);
INSERT INTO pozycje VALUES (1746, 219, 55, 23, 155.00, 1, 0.00);
INSERT INTO pozycje VALUES (1747, 219, 25, 23, 180.00, 2, 0.00);
INSERT INTO pozycje VALUES (1748, 220, 26, 23, 199.00, 4, 0.00);
INSERT INTO pozycje VALUES (1749, 220, 36, 23, 179.00, 4, 0.00);
INSERT INTO pozycje VALUES (1750, 220, 78, 23, 122.00, 1, 0.00);
INSERT INTO pozycje VALUES (1751, 51, 96, 23, 176.00, 3, 0.00);
INSERT INTO pozycje VALUES (1752, 51, 59, 23, 105.00, 4, 0.00);
INSERT INTO pozycje VALUES (1753, 52, 79, 23, 168.00, 4, 0.00);
INSERT INTO pozycje VALUES (1754, 52, 31, 23, 144.00, 2, 0.00);
INSERT INTO pozycje VALUES (1755, 53, 38, 23, 144.00, 5, 0.00);
INSERT INTO pozycje VALUES (1756, 53, 86, 23, 179.00, 4, 0.00);
INSERT INTO pozycje VALUES (1757, 54, 70, 23, 161.00, 5, 0.00);
INSERT INTO pozycje VALUES (1758, 54, 78, 23, 189.00, 1, 0.00);
INSERT INTO pozycje VALUES (1759, 54, 12, 23, 141.00, 4, 0.00);
INSERT INTO pozycje VALUES (1760, 54, 28, 23, 162.00, 1, 0.00);
INSERT INTO pozycje VALUES (1761, 55, 6, 23, 174.00, 3, 0.00);
INSERT INTO pozycje VALUES (1762, 55, 12, 23, 162.00, 5, 0.00);
INSERT INTO pozycje VALUES (1763, 56, 32, 23, 187.00, 5, 0.00);
INSERT INTO pozycje VALUES (1764, 56, 47, 23, 130.00, 2, 0.00);
INSERT INTO pozycje VALUES (1765, 57, 23, 23, 103.00, 1, 0.00);
INSERT INTO pozycje VALUES (1766, 57, 18, 23, 117.00, 5, 0.00);
INSERT INTO pozycje VALUES (1767, 58, 71, 23, 154.00, 1, 0.00);
INSERT INTO pozycje VALUES (1768, 58, 14, 23, 199.00, 3, 0.00);
INSERT INTO pozycje VALUES (1769, 58, 34, 23, 108.00, 2, 0.00);
INSERT INTO pozycje VALUES (1770, 59, 58, 23, 147.00, 1, 0.00);
INSERT INTO pozycje VALUES (1771, 59, 26, 23, 148.00, 3, 0.00);
INSERT INTO pozycje VALUES (1772, 60, 34, 23, 166.00, 5, 0.00);
INSERT INTO pozycje VALUES (1773, 60, 55, 23, 137.00, 3, 0.00);
INSERT INTO pozycje VALUES (1774, 60, 54, 23, 183.00, 3, 0.00);
INSERT INTO pozycje VALUES (1775, 71, 67, 23, 104.00, 3, 0.00);
INSERT INTO pozycje VALUES (1776, 71, 16, 23, 177.00, 5, 0.00);
INSERT INTO pozycje VALUES (1777, 72, 53, 23, 160.00, 4, 0.00);
INSERT INTO pozycje VALUES (1778, 73, 27, 23, 176.00, 3, 0.00);
INSERT INTO pozycje VALUES (1779, 73, 30, 23, 115.00, 3, 0.00);
INSERT INTO pozycje VALUES (1780, 73, 75, 23, 190.00, 2, 0.00);
INSERT INTO pozycje VALUES (1781, 73, 35, 23, 164.00, 1, 0.00);
INSERT INTO pozycje VALUES (1782, 74, 64, 23, 142.00, 1, 0.00);
INSERT INTO pozycje VALUES (1783, 75, 74, 23, 139.00, 1, 0.00);
INSERT INTO pozycje VALUES (1784, 75, 58, 23, 156.00, 1, 0.00);
INSERT INTO pozycje VALUES (1785, 76, 61, 23, 195.00, 5, 0.00);
INSERT INTO pozycje VALUES (1786, 76, 19, 23, 102.00, 4, 0.00);
INSERT INTO pozycje VALUES (1787, 77, 90, 23, 112.00, 4, 0.00);
INSERT INTO pozycje VALUES (1788, 77, 94, 23, 164.00, 3, 0.00);
INSERT INTO pozycje VALUES (1789, 77, 67, 23, 169.00, 4, 0.00);
INSERT INTO pozycje VALUES (1790, 78, 98, 23, 189.00, 4, 0.00);
INSERT INTO pozycje VALUES (1791, 78, 90, 23, 133.00, 3, 0.00);
INSERT INTO pozycje VALUES (1792, 78, 44, 23, 103.00, 4, 0.00);
INSERT INTO pozycje VALUES (1793, 78, 21, 23, 142.00, 3, 0.00);
INSERT INTO pozycje VALUES (1794, 78, 93, 23, 163.00, 4, 0.00);
INSERT INTO pozycje VALUES (1795, 78, 74, 23, 182.00, 4, 0.00);
INSERT INTO pozycje VALUES (1796, 79, 84, 23, 184.00, 3, 0.00);
INSERT INTO pozycje VALUES (1797, 79, 18, 23, 172.00, 2, 0.00);
INSERT INTO pozycje VALUES (1798, 80, 86, 23, 108.00, 2, 0.00);
INSERT INTO pozycje VALUES (1799, 80, 82, 23, 131.00, 2, 0.00);
INSERT INTO pozycje VALUES (1800, 80, 74, 23, 124.00, 4, 0.00);


--
-- Data for Name: pracownicy; Type: TABLE DATA; Schema: public; Owner: mn161323_Krawiec1
--

INSERT INTO pracownicy VALUES (18, 'Celestyna', 'Zawadzka', 'ul. Więckowskiego Stefana 17 90-722 Łódź', '2015-08-27', '2015-10-29', '91112982146', 'e71c27c3ee34c7e07c04d95cd97d571d', 4);
INSERT INTO pracownicy VALUES (19, 'Kunegunda', 'Czarnecka', 'ul. Kopernika Mikołaja 48 25-336 Kielce', '2015-10-29', '2016-05-10', '89031440540', '66bbb92217e5b9f97a444d4ffe6d8dd3', 1);
INSERT INTO pracownicy VALUES (34, 'Wioletta', 'Pawłowska', 'ul. Narutowicza Gabriela 90 90-131 Łódź', '2015-04-20', '2015-08-02', '90061139742', 'c5d15cdc8e717d9107dd1ed29582ab2e', 1);
INSERT INTO pracownicy VALUES (37, 'Rościsława', 'Gorska', 'ul. Niklowa 37 53-435 Wrocław', '2016-08-06', '2016-12-02', '83040652587', 'f3ac63c91272f19ce97c7397825cc15f', 4);
INSERT INTO pracownicy VALUES (38, 'Miłogost', 'Olszewski', 'ul. Przyjemna 33 80-054 Gdańsk', '2016-08-25', '2016-09-06', '86081344619', '89d53e8276a79e21da89ea66a232aad5', 3);
INSERT INTO pracownicy VALUES (39, 'Michalina', 'Olszewska', 'ul. Przyjemna 33 80-054 Gdańsk', '2015-06-12', '2015-08-20', '81073108466', '0014a9d84e0ddffe859e51f7f34da869', 1);
INSERT INTO pracownicy VALUES (20, 'Adrianna', 'Wysocka', 'ul. 1 Maja 63 90-756 Łódź', '2015-05-12', '2015-08-01', '77122591367', '07dba8df3779b56f2a373a5af890bab6', 3);
INSERT INTO pracownicy VALUES (15, 'Dobrosław', 'Kowalski', 'ul. Chylicka 60 04-825 Warszawa', '2015-05-07', NULL, '76022618510', 'dbffcb01b1f75371a989121f7e028d9c', 1);
INSERT INTO pracownicy VALUES (16, 'Piotr', 'Kamiński', 'ul. Twarda 97 00-114 Warszawa', '2015-02-10', NULL, '82071981673', '823b694bf75f97a5496a851665fa9731', 1);
INSERT INTO pracownicy VALUES (17, 'Klementyna', 'Wieczorek', 'ul. Czyżyków 103 80-680 Gdańsk', '2015-09-04', NULL, '78081656764', '823b694bf75f97a5496a851665fa9731', 2);
INSERT INTO pracownicy VALUES (30, 'Barbara', 'Nowak', 'ul. Wolności 109 41-820 Zabrze', '2016-01-17', NULL, '76011713949', 'dd35b912ef92fe37a612e3cf92a6dcef', 4);
INSERT INTO pracownicy VALUES (31, 'Lesława', 'Sobczak', 'ul. Zyblikiewicza Mikołaja 92 31-029 Kraków', '2016-03-26', NULL, '88120260043', '9d3fe27edcbdf75ad04aeda4abf0428c', 2);
INSERT INTO pracownicy VALUES (32, 'Bartłomiej', 'Dudek', 'ul. Okólna 98 50-422 Wrocław', '2016-04-07', NULL, '78013027819', 'b06485e53d9a9f8b63efced0f163ed28', 3);
INSERT INTO pracownicy VALUES (33, 'Cezar', 'Kalinowski', 'ul. Kotwiczna 58 81-578 Gdynia', '2016-06-11', NULL, '88082238296', 'd0241e494af3596d1bb4506bbff9b6e5', 3);
INSERT INTO pracownicy VALUES (35, 'Mieczysława', 'Michalska', 'ul. Księcia Bogusława 60 70-246 Szczecin', '2016-10-10', NULL, '78090454364', 'b3a383a4dfd4bb68dd29f44f365ef759', 1);
INSERT INTO pracownicy VALUES (36, 'Augustyna', 'Woźniak', 'ul. Batorego Stefana 20 65-084 Zielona Góra', '2016-08-21', NULL, '78031520781', 'b4f41b344f6bb5c6b304eb73b4d3fa8a', 2);
INSERT INTO pracownicy VALUES (40, 'Hendrych', 'Szczepański', 'ul. Morcinka Gustawa 2 40-125 Katowice', '2016-11-21', NULL, '79072317071', 'ecbde643889757d70f5d6603026468f2', 1);
INSERT INTO pracownicy VALUES (2, 'Eustachy', 'Jaworski', 'ul. Miła 147 42-606 Tarnowskie Góry', '2015-02-02', '2015-04-07', '80091943411', 'a282784e5b02d9da1520095e2052dbd8', 4);
INSERT INTO pracownicy VALUES (1, 'Judyta', 'Ostrowska', 'ul. Agrestowa 95 41-806 Zabrze', '2015-01-06', '2015-01-25', '85070135388', '0ce08ba198f99eceb7496a4795e4aca7', 4);
INSERT INTO pracownicy VALUES (4, 'Alojzy', 'Ostrowski', 'ul. Piłkarska 76 02-590 Warszawa', '2015-05-19', '2015-06-29', '89110575390', '39109a5bb10ccb7aff1313d369804b74', 4);
INSERT INTO pracownicy VALUES (9, 'Mieszko', 'Tomaszewski', 'ul. Świętego Leonarda 78 60-654 Poznań', '2015-08-04', '2015-10-29', '89040695799', '0b90276a9600c857ba25c57d8676be8c', 3);
INSERT INTO pracownicy VALUES (13, 'Oskar', 'Nowicki', 'ul. Prosta 76 15-353 Białystok', '2015-08-03', '2015-10-29', '79091346959', 'e4384bec6eec6d679bcc72abc78e3990', 1);
INSERT INTO pracownicy VALUES (14, 'Renard', 'Kwiatkowski', 'ul. Szewska 55 64-106 Leszno', '2015-09-04', '2015-11-20', '82062924836', '5d5e508216326f6f1e6575492146e06d', 3);
INSERT INTO pracownicy VALUES (12, 'Angelika', 'Michalska', 'ul. Kruszyny 139 05-077 Warszawa', '2015-08-23', '2016-05-06', '84081040986', 'd0c1096b0c41eecf1f39404988292faa', 1);
INSERT INTO pracownicy VALUES (3, 'Paweł', 'Opalach', 'ul. Prometeusza 100 01-497 Warszawa ', '2015-05-16', '2016-05-09', '87032915577', '81dc9bdb52d04dc20036dbd8313ed055', 2);
INSERT INTO pracownicy VALUES (22, 'Włodzisław', 'Duda', 'ul. Mochnackiego 91 93-159 Łódź', '2015-03-20', '2015-06-12', '86012162253', '200bf2ecfb9bc696f6ed0c7a02fe4ae9', 4);
INSERT INTO pracownicy VALUES (25, 'Bolesław', 'Kowalczyk', 'ul. Moniuszki Stanisława 16 75-551 Koszalin', '2016-05-29', '2016-11-09', '79031993834', '1db2dc6a5c6a06fe2ded473dbfd1986e', 4);
INSERT INTO pracownicy VALUES (8, 'Benedykt', 'Wysocki', 'ul. Paderewskiego Ignacego 84 04-443 Warszawa', '2015-03-21', '2015-05-22', '77040668950', 'c98cbe37367e1c7d347fc9aa0a39828b', 4);
INSERT INTO pracownicy VALUES (27, 'Juliusz', 'Kowalczyk', 'ul. Skibińska 54 20-303 Lublin', '2016-05-17', '2016-11-20', '83041294810', 'c962d7f2bdef9e7687b38f42dfe6d781', 4);
INSERT INTO pracownicy VALUES (5, 'Świętosław', 'Rutkowski', 'ul. Perzycka 130 60-182 Poznań', '2015-02-12', '2015-05-24', '78042918210', 'd1093bd03ea9e798eec513ca50c989f0', 3);
INSERT INTO pracownicy VALUES (6, 'Tomasz', 'Rutkowski', 'ul. Rezedowa 90 04-232 Warszawa', '2015-02-21', '2015-03-03', '83040873618', '9bafd14ec0a99b972c44798db85c0cdc', 3);
INSERT INTO pracownicy VALUES (28, 'Cibor', 'Wieczorek', 'ul. Zachariasza 69 03-761 Warszawa', '2016-04-21', '2016-06-25', '89082815630', 'ef36547bf15987eb3b3ddd4b7b248535', 4);
INSERT INTO pracownicy VALUES (7, 'Patryk', 'Chmielewski', 'ul. Tulipanów 139 45-219 Opole', '2015-03-12', '2015-08-20', '84062989697', '1f2260e63ab9ab0dba327772e9fcc5f4', 1);
INSERT INTO pracownicy VALUES (29, 'Hieronim', 'Czerwinski', 'ul. Przetoczna 141 80-702 Gdańsk', '2015-01-12', '2015-12-01', '87032645230', '07731af6604c66e5f4d3cf7e73b3ba27', 4);
INSERT INTO pracownicy VALUES (10, 'Hieronim', 'Symanski', 'ul. Homera 116 80-299 Gdańsk', '2015-03-24', NULL, '84111493575', '415bcedfab0f7d806fb404a977382de4', 3);
INSERT INTO pracownicy VALUES (11, 'Salomea', 'Symanska', 'ul. Esperanto 80 26-613 Radom', '2015-03-29', NULL, '87013198247', 'dc7f5ac09854d58e697c67561e5e12f9', 1);
INSERT INTO pracownicy VALUES (21, 'Konstanty', 'Majewski', 'ul. Miłkowskiego Stanisława 121 04-683 Warszawa', '2015-10-22', NULL, '90110321959', '2d69a59ae0d8a7e21c9f81db169777de', 4);
INSERT INTO pracownicy VALUES (23, 'Arkadiusz', 'Kowalski', 'ul. Braterstwa Broni 22 30-395 Kraków', '2015-07-21', NULL, '89010643195', 'c0fd00f8994254a4ac182f0b8c26cc23', 1);
INSERT INTO pracownicy VALUES (24, 'Jowita', 'Kowalska', 'ul. Braterstwa Broni 22 30-395 Kraków', '2015-09-20', NULL, '77040612027', 'e6c3ac91ac30849bccbf2b9751195939', 2);
INSERT INTO pracownicy VALUES (26, 'Elżbieta', 'Tomaszewska', 'ul. Sitowie 88 91-495 Łódź', '2016-05-01', NULL, '85061436623', '3cf997e09d2e433c5236fb4bbcaa0e38', 3);


--
-- Data for Name: stany; Type: TABLE DATA; Schema: public; Owner: mn161323_Krawiec1
--

INSERT INTO stany VALUES (10, 0, '2015-12-09 13:46:36.258125', 10, 1);
INSERT INTO stany VALUES (19, 74, '2015-03-21 18:50:52.311748', 19, 1);
INSERT INTO stany VALUES (5, 11, '2015-07-12 23:33:55.966238', 5, 1);
INSERT INTO stany VALUES (91, 17, '2015-07-12 23:33:55.966238', 91, 1);
INSERT INTO stany VALUES (9, 23, '2015-07-12 23:33:55.966238', 9, 1);
INSERT INTO stany VALUES (17, 86, '2015-07-31 14:25:33.358222', 17, 1);
INSERT INTO stany VALUES (92, 0, '2015-06-18 15:00:19.2145', 92, 1);
INSERT INTO stany VALUES (8, 0, '2015-03-24 06:31:45.083209', 8, 1);
INSERT INTO stany VALUES (20, 0, '2015-08-18 04:54:56.576956', 20, 1);
INSERT INTO stany VALUES (11, 100, '2015-06-27 04:39:25.944144', 11, 1);
INSERT INTO stany VALUES (88, 0, '2015-06-27 04:39:25.944144', 88, 1);
INSERT INTO stany VALUES (21, 13, '2015-05-06 03:21:46.010498', 21, 1);
INSERT INTO stany VALUES (12, 0, '2015-09-25 10:17:38.851777', 12, 1);
INSERT INTO stany VALUES (4, 0, '2015-03-14 17:49:01.813307', 4, 1);
INSERT INTO stany VALUES (18, 0, '2015-07-16 21:27:24.188346', 18, 1);
INSERT INTO stany VALUES (1, 20, '2015-07-23 14:37:25.960835', 1, 1);
INSERT INTO stany VALUES (15, 0, '2015-04-25 13:46:30.290143', 15, 1);
INSERT INTO stany VALUES (6, 0, '2015-07-25 08:32:39.451264', 6, 1);
INSERT INTO stany VALUES (22, 0, '2015-05-14 09:29:13.378983', 22, 1);
INSERT INTO stany VALUES (13, 42, '2015-06-20 06:39:22.925264', 13, 1);
INSERT INTO stany VALUES (89, 88, '2015-12-04 12:53:12.903543', 89, 1);
INSERT INTO stany VALUES (3, 80, '2015-12-17 03:37:54.799249', 3, 1);
INSERT INTO stany VALUES (16, 0, '2015-11-09 13:47:34.91361', 16, 1);
INSERT INTO stany VALUES (2, 0, '2015-07-18 05:42:48.719414', 2, 1);
INSERT INTO stany VALUES (7, 27, '2015-11-02 20:53:31.098106', 7, 1);
INSERT INTO stany VALUES (14, 0, '2016-12-07 00:54:22.348026', 14, 1);
INSERT INTO stany VALUES (47, 22, '2015-08-30 12:45:58.191879', 47, 1);
INSERT INTO stany VALUES (25, 83, '2015-08-15 14:42:40.774899', 25, 1);
INSERT INTO stany VALUES (74, 0, '2015-12-09 13:46:36.258125', 74, 1);
INSERT INTO stany VALUES (46, 0, '2015-12-09 13:46:36.258125', 46, 1);
INSERT INTO stany VALUES (77, 53, '2015-09-15 15:07:11.082232', 77, 1);
INSERT INTO stany VALUES (50, 0, '2015-08-25 10:01:24.220693', 50, 1);
INSERT INTO stany VALUES (40, 0, '2015-03-13 00:54:51.630305', 40, 1);
INSERT INTO stany VALUES (73, 25, '2015-03-13 00:54:51.630305', 73, 1);
INSERT INTO stany VALUES (79, 62, '2015-03-13 00:54:51.630305', 79, 1);
INSERT INTO stany VALUES (82, 0, '2015-11-29 06:38:55.779928', 82, 1);
INSERT INTO stany VALUES (26, 0, '2015-11-29 06:38:55.779928', 26, 1);
INSERT INTO stany VALUES (41, 90, '2015-03-24 06:31:45.083209', 41, 1);
INSERT INTO stany VALUES (61, 16, '2015-03-24 06:31:45.083209', 61, 1);
INSERT INTO stany VALUES (62, 0, '2015-08-18 04:54:56.576956', 62, 1);
INSERT INTO stany VALUES (58, 0, '2015-08-18 04:54:56.576956', 58, 1);
INSERT INTO stany VALUES (38, 0, '2015-10-23 09:20:41.004775', 38, 1);
INSERT INTO stany VALUES (68, 0, '2015-11-05 20:02:08.655803', 68, 1);
INSERT INTO stany VALUES (52, 0, '2015-11-18 03:40:17.793524', 52, 1);
INSERT INTO stany VALUES (64, 0, '2015-03-17 15:36:29.170101', 64, 1);
INSERT INTO stany VALUES (71, 47, '2015-03-17 15:36:29.170101', 71, 1);
INSERT INTO stany VALUES (56, 0, '2015-09-25 10:17:38.851777', 56, 1);
INSERT INTO stany VALUES (49, 9, '2015-08-01 14:24:50.417477', 49, 1);
INSERT INTO stany VALUES (53, 19, '2015-08-01 14:24:50.417477', 53, 1);
INSERT INTO stany VALUES (28, 0, '2015-07-16 21:27:24.188346', 28, 1);
INSERT INTO stany VALUES (76, 0, '2015-07-23 14:37:25.960835', 76, 1);
INSERT INTO stany VALUES (65, 99, '2015-05-14 09:29:13.378983', 65, 1);
INSERT INTO stany VALUES (44, 0, '2015-03-25 14:17:18.717735', 44, 1);
INSERT INTO stany VALUES (59, 5, '2015-10-23 06:31:56.620101', 59, 1);
INSERT INTO stany VALUES (31, 5, '2015-10-15 19:24:52.292275', 31, 1);
INSERT INTO stany VALUES (85, 64, '2015-04-12 11:45:22.737649', 85, 1);
INSERT INTO stany VALUES (86, 0, '2015-12-04 12:53:12.903543', 86, 1);
INSERT INTO stany VALUES (70, 0, '2015-08-13 02:23:30.734667', 70, 1);
INSERT INTO stany VALUES (35, 67, '2015-11-25 21:20:22.204676', 35, 1);
INSERT INTO stany VALUES (80, 0, '2016-05-07 06:12:46.196206', 80, 1);
INSERT INTO stany VALUES (51, 37, '2015-08-15 14:42:40.774899', 51, 1);
INSERT INTO stany VALUES (60, 0, '2015-12-09 13:46:36.258125', 60, 1);
INSERT INTO stany VALUES (67, 79, '2015-09-15 15:07:11.082232', 67, 1);
INSERT INTO stany VALUES (23, 33, '2016-01-07 13:03:16.130727', 23, 1);
INSERT INTO stany VALUES (90, 0, '2016-01-07 13:03:16.130727', 90, 1);
INSERT INTO stany VALUES (29, 33, '2015-03-21 18:50:52.311748', 29, 1);
INSERT INTO stany VALUES (27, 14, '2015-10-03 13:19:00.180445', 27, 1);
INSERT INTO stany VALUES (69, 81, '2015-03-02 17:16:12.457704', 69, 1);
INSERT INTO stany VALUES (78, 0, '2015-04-17 06:06:45.333669', 78, 1);
INSERT INTO stany VALUES (75, 71, '2015-07-31 14:25:33.358222', 75, 1);
INSERT INTO stany VALUES (24, 0, '2015-08-18 04:54:56.576956', 24, 1);
INSERT INTO stany VALUES (84, 0, '2015-08-18 04:54:56.576956', 84, 1);
INSERT INTO stany VALUES (32, 0, '2015-05-06 03:21:46.010498', 32, 1);
INSERT INTO stany VALUES (55, 93, '2015-11-05 20:02:08.655803', 55, 1);
INSERT INTO stany VALUES (34, 0, '2015-11-08 00:40:04.81174', 34, 1);
INSERT INTO stany VALUES (98, 0, '2015-08-22 07:01:44.268864', 98, 1);
INSERT INTO stany VALUES (30, 0, '2015-07-16 21:27:24.188346', 30, 1);
INSERT INTO stany VALUES (43, 51, '2015-08-23 09:49:55.271342', 43, 1);
INSERT INTO stany VALUES (97, 13, '2015-09-02 18:40:56.553765', 97, 1);
INSERT INTO stany VALUES (33, 51, '2015-05-14 09:29:13.378983', 33, 1);
INSERT INTO stany VALUES (95, 5, '2015-04-24 18:21:35.271108', 95, 1);
INSERT INTO stany VALUES (109, 86, '2015-06-01 07:28:59.962506', 109, 1);
INSERT INTO stany VALUES (110, 29, '2015-09-14 06:36:03.251956', 110, 1);
INSERT INTO stany VALUES (37, 15, '2015-10-23 06:31:56.620101', 37, 1);
INSERT INTO stany VALUES (63, 24, '2015-10-23 06:31:56.620101', 63, 1);
INSERT INTO stany VALUES (42, 0, '2015-12-28 03:13:23.030647', 42, 1);
INSERT INTO stany VALUES (39, 32, '2015-04-27 16:24:02.149276', 39, 1);
INSERT INTO stany VALUES (94, 0, '2015-02-22 16:43:03.292633', 94, 1);
INSERT INTO stany VALUES (54, 0, '2015-08-04 15:25:14.589371', 54, 1);
INSERT INTO stany VALUES (100, 21, '2015-08-04 15:25:14.589371', 100, 1);
INSERT INTO stany VALUES (36, 0, '2015-03-07 16:00:05.222771', 36, 1);
INSERT INTO stany VALUES (48, 0, '2015-03-22 16:46:21.693368', 48, 1);
INSERT INTO stany VALUES (83, 78, '2015-09-03 08:31:30.179059', 83, 1);
INSERT INTO stany VALUES (96, 0, '2015-07-23 07:28:44.602662', 96, 1);
INSERT INTO stany VALUES (81, 76, '2015-05-27 15:56:36.513864', 81, 1);
INSERT INTO stany VALUES (72, 0, '2016-03-26 11:01:39.641436', 72, 1);
INSERT INTO stany VALUES (93, 78, '2015-08-30 12:45:58.191879', 93, 1);
INSERT INTO stany VALUES (66, 0, '2015-04-11 22:34:20.743023', 66, 1);
INSERT INTO stany VALUES (57, 85, '2015-03-02 17:16:12.457704', 57, 1);
INSERT INTO stany VALUES (87, 50, '2015-09-25 10:17:38.851777', 87, 1);
INSERT INTO stany VALUES (99, 74, '2015-11-08 00:40:04.81174', 99, 1);
INSERT INTO stany VALUES (45, 71, '2015-06-23 18:53:27.541765', 45, 1);


--
-- Data for Name: statusy; Type: TABLE DATA; Schema: public; Owner: mn161323_Krawiec1
--

INSERT INTO statusy VALUES (1, 'Nieopłacone');
INSERT INTO statusy VALUES (2, 'Opłacone');
INSERT INTO statusy VALUES (3, 'Przetwarzane');
INSERT INTO statusy VALUES (4, 'Przygotowane');
INSERT INTO statusy VALUES (5, 'Wysłane');
INSERT INTO statusy VALUES (6, 'Zakończone');
INSERT INTO statusy VALUES (7, 'Anulowane');


--
-- Data for Name: towary; Type: TABLE DATA; Schema: public; Owner: mn161323_Krawiec1
--

INSERT INTO towary VALUES (8, '19602030080122', 'Spodnie robocze GWB, czerwono-granatowe, roz. 3XL', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (58, '19603030091092', 'Ogrodniczki GWB, granatowo-szare, roz. M', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (1, '19601030090056', 'Bluza robocza GWB, szaro-czarna, roz. XL', '2015-01-01 12:20:00', 130.00, true);
INSERT INTO towary VALUES (5, '19602030080092', 'Spodnie robocze GWB, czerwono-granatowe, roz. M', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (7, '19602030080114', 'Spodnie robocze GWB, czerwono-granatowe, roz. 2XL', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (46, '19601030090066', 'Bluza robocza GWB, szaro-czarna, roz. 4XL', '2015-01-01 12:20:00', 130.00, true);
INSERT INTO towary VALUES (50, '19603030080085', 'Ogrodniczki GWB, czerwono-granatowe, roz. S', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (52, '19603030080098', 'Ogrodniczki GWB, czerwono-granatowe, roz. L', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (56, '19603030091098', 'Ogrodniczki GWB, granatowo-szare, roz. L', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (62, '19603030091080', 'Ogrodniczki GWB, granatowo-szare, roz. XS', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (64, '19603030090098', 'Ogrodniczki GWB, szaro-czarne, roz. L', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (48, '19603030080106', 'Ogrodniczki GWB, czerwono-granatowe, roz. XL', '2015-01-01 12:20:00', 149.00, false);
INSERT INTO towary VALUES (54, '19603030080122', 'Ogrodniczki GWB, czerwono-granatowe, roz. 3XL', '2015-01-01 12:20:00', 149.00, false);
INSERT INTO towary VALUES (3, '19602030080106', 'Spodnie robocze GWB, czerwono-granatowe, roz. XL', '2015-01-01 12:20:00', 129.00, false);
INSERT INTO towary VALUES (60, '19603030091085', 'Ogrodniczki GWB, granatowo-szare, roz. S', '2015-01-01 12:20:00', 149.00, false);
INSERT INTO towary VALUES (66, '19603030090114', 'Ogrodniczki GWB, szaro-czarne, roz. 2XL', '2015-01-01 12:20:00', 149.00, false);
INSERT INTO towary VALUES (72, '1XIKXL', 'Bluza dla pilarzy BoXeR EVO, roz. XL', '2015-01-01 12:20:00', 145.00, false);
INSERT INTO towary VALUES (78, '1XIKXS', 'Bluza dla pilarzy BoXeR EVO, roz. XS', '2015-01-01 12:20:00', 145.00, false);
INSERT INTO towary VALUES (84, '1XIPXXXXL', 'Spodnie dla pilarzy BoXeR EVO, roz. 4XL', '2015-01-01 12:20:00', 341.00, false);
INSERT INTO towary VALUES (68, '19603030090122', 'Ogrodniczki GWB, szaro-czarne, roz. 3XL', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (70, '19603030090080', 'Ogrodniczki GWB, szaro-czarne, roz. XS', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (74, '1XIKM', 'Bluza dla pilarzy BoXeR EVO, roz. M', '2015-01-01 12:20:00', 145.00, true);
INSERT INTO towary VALUES (76, '1XIKXXL', 'Kurtka do prac leśnych 1XIK, roz. 2XL', '2015-01-01 12:20:00', 145.00, true);
INSERT INTO towary VALUES (80, '1XIPM', 'Spodnie dla pilarzy BoXeR EVO, roz. M', '2015-01-01 12:20:00', 341.00, true);
INSERT INTO towary VALUES (82, '1XIPXXL', 'Spodnie dla pilarzy BoXeR EVO, roz. 2XL', '2015-01-01 12:20:00', 341.00, true);
INSERT INTO towary VALUES (86, '1XIPS', 'Spodnie dla pilarzy BoXeR EVO, roz. S', '2015-01-01 12:20:00', 341.00, true);
INSERT INTO towary VALUES (69, '19603030090128', 'Ogrodniczki GWB, szaro-czarne, roz. 4XL', '2015-01-01 12:20:00', 149.00, false);
INSERT INTO towary VALUES (39, '19601030091046', 'Bluza robocza GWB, granatowo szara, roz. XS', '2015-01-01 12:20:00', 130.00, false);
INSERT INTO towary VALUES (67, '19603030090092', 'Ogrodniczki GWB, szaro-czarne, roz. M', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (45, '19601030090046', 'Bluza robocza GWB, szaro-czarna, roz. XS', '2015-01-01 12:20:00', 130.00, false);
INSERT INTO towary VALUES (51, '19603030080092', 'Ogrodniczki GWB, czerwono-granatowe, roz. M', '2015-01-01 12:20:00', 149.00, false);
INSERT INTO towary VALUES (57, '19603030091106', 'Ogrodniczki GWB, granatowo-szare, roz. XL', '2015-01-01 12:20:00', 149.00, false);
INSERT INTO towary VALUES (63, '19603030091128', 'Ogrodniczki GWB, granatowo-szare, roz. 4XL', '2015-01-01 12:20:00', 149.00, false);
INSERT INTO towary VALUES (6, '19602030080128', 'Spodnie robocze GWB, czerwono-granatowe, roz. 4XL', '2015-01-01 12:20:00', 129.00, false);
INSERT INTO towary VALUES (12, '19602030091098', 'Spodnie robocze GWB, granatowo-szare, roz. L', '2015-01-01 12:20:00', 129.00, false);
INSERT INTO towary VALUES (15, '19602030091080', 'Spodnie robocze GWB, granatowo-szare, roz. XS', '2015-01-01 12:20:00', 129.00, false);
INSERT INTO towary VALUES (90, '1XIGL', 'Ogrodniczki dla pilarzy BoXeR EVO, roz. L', '2015-01-01 12:20:00', 365.00, false);
INSERT INTO towary VALUES (75, '1XIKL', 'Bluza dla pilarzy BoXeR EVO, roz. L', '2015-01-01 12:20:00', 145.00, false);
INSERT INTO towary VALUES (35, '19601030091056', 'Bluza robocza GWB, granatowo szara, roz. XL', '2015-01-01 12:20:00', 130.00, true);
INSERT INTO towary VALUES (37, '19601030091062', 'Bluza robocza GWB, granatowo szara, roz. 3XL', '2015-01-01 12:20:00', 130.00, true);
INSERT INTO towary VALUES (41, '19601030090054', 'Bluza robocza GWB, szaro-czarna, roz. L', '2015-01-01 12:20:00', 130.00, true);
INSERT INTO towary VALUES (43, '19601030090062', 'Bluza robocza GWB, szaro-czarna, roz. 3XL', '2015-01-01 12:20:00', 130.00, true);
INSERT INTO towary VALUES (47, '19601030090050', 'Bluza robocza GWB, szaro-czarna, roz. M', '2015-01-01 12:20:00', 130.00, true);
INSERT INTO towary VALUES (49, '19603030080114', 'Ogrodniczki GWB, czerwono-granatowe, roz. 2XL', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (53, '19603030080080', 'Ogrodniczki GWB, czerwono-granatowe, roz. XS', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (55, '19603030080128', 'Ogrodniczki GWB, czerwono-granatowe, roz. 4XL', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (59, '19603030091114', 'Ogrodniczki GWB, granatowo-szare, roz. 2XL', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (61, '19603030091122', 'Ogrodniczki GWB, granatowo-szare, roz. 3XL', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (65, '19603030090106', 'Ogrodniczki GWB, szaro-czarne, roz. XL', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (2, '19602030080098', 'Spodnie robocze GWB, czerwono-granatowe, roz. L', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (4, '19602030080085', 'Spodnie robocze GWB, czerwono-granatowe, roz. S', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (10, '19602030091106', 'Spodnie robocze GWB, granatowo-szare, roz. XL', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (14, '19602030091085', 'Spodnie robocze GWB, granatowo-szare, roz. S', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (16, '19602030091128', 'Spodnie robocze GWB, granatowo-szare, roz. 4XL', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (71, '19603030090085', 'Ogrodniczki GWB, szaro-czarne, roz. S', '2015-01-01 12:20:00', 149.00, true);
INSERT INTO towary VALUES (92, '1XIGXS', 'Ogrodniczki dla pilarzy BoXeR EVO, roz. XS', '2015-01-01 12:20:00', 365.00, true);
INSERT INTO towary VALUES (73, '1XIPL', 'Spodnie dla pilarzy BoXeR EVO, roz. L', '2015-01-01 12:20:00', 341.00, true);
INSERT INTO towary VALUES (79, '1XIKS', 'Bluza dla pilarzy BoXeR EVO, roz. S', '2015-01-01 12:20:00', 145.00, true);
INSERT INTO towary VALUES (88, '1XIGXXL', 'Ogrodniczki z ochroną przed przecięciem 1XIG, roz. 2XL', '2015-01-01 12:20:00', 365.00, true);
INSERT INTO towary VALUES (94, '19602830090114', 'Spodnie monterskie GWB, szaro-czarne, roz. 2XL', '2015-01-01 12:20:00', 138.00, true);
INSERT INTO towary VALUES (98, '19602830090128', 'Spodnie monterskie GWB, szaro-czarne, roz. 4XL', '2015-01-01 12:20:00', 138.00, true);
INSERT INTO towary VALUES (77, '1XIKXXXL', 'Kurtka do prac leśnych 1XIK, roz. 3XL', '2015-01-01 12:20:00', 145.00, true);
INSERT INTO towary VALUES (83, '1XIPXXXL', 'Spodnie chroniące przed przecięciem Evo 1XIP, roz. 3XL', '2015-01-01 12:20:00', 341.00, true);
INSERT INTO towary VALUES (85, '1XIPXS', 'Spodnie dla pilarzy BoXeR EVO, roz. XS', '2015-01-01 12:20:00', 341.00, true);
INSERT INTO towary VALUES (89, '1XIGM', 'Ogrodniczki dla pilarzy BoXeR EVO, roz. M', '2015-01-01 12:20:00', 365.00, true);
INSERT INTO towary VALUES (101, '19602830089080', 'Spodnie monterskie GWB, czarno-szare, roz. XS', '2015-01-01 12:20:00', 138.00, true);
INSERT INTO towary VALUES (103, '19602830089128', 'Spodnie monterskie GWB, czarno-szare, roz. 4XL', '2015-01-01 12:20:00', 138.00, true);
INSERT INTO towary VALUES (104, '19602830090092', 'Spodnie monterskie GWB, szaro-czarne, roz. M', '2015-01-01 12:20:00', 138.00, true);
INSERT INTO towary VALUES (106, '19602830089098', 'Spodnie monterskie GWB, czarno-szare, roz. L', '2015-01-01 12:20:00', 138.00, true);
INSERT INTO towary VALUES (107, '19602830090106', 'Spodnie monterskie GWB, szaro-czarne, roz. XL', '2015-01-01 12:20:00', 138.00, true);
INSERT INTO towary VALUES (34, '19601030091054', 'Bluza robocza GWB, granatowo szara, roz. L', '2015-01-01 12:20:00', 130.00, true);
INSERT INTO towary VALUES (38, '19601030091050', 'Bluza robocza GWB, granatowo szara, roz. M', '2015-01-01 12:20:00', 130.00, true);
INSERT INTO towary VALUES (96, '19602830089122', 'Spodnie monterskie GWB, czarno-szare, roz. 3XL', '2015-01-01 12:20:00', 138.00, false);
INSERT INTO towary VALUES (81, '1XIPXL', 'Spodnie dla pilarzy BoXeR EVO, roz. XL', '2015-01-01 12:20:00', 341.00, false);
INSERT INTO towary VALUES (87, '1XIGXL', 'Ogrodniczki dla pilarzy BoXeR EVO, roz. XL', '2015-01-01 12:20:00', 365.00, false);
INSERT INTO towary VALUES (99, '19602830090098', 'Spodnie monterskie GWB, szaro-czarne, roz. L', '2015-01-01 12:20:00', 138.00, false);
INSERT INTO towary VALUES (102, '19602830090122', 'Spodnie monterskie GWB, szaro-czarne, roz. 3XL', '2015-01-01 12:20:00', 138.00, false);
INSERT INTO towary VALUES (105, '19602830089098', 'Spodnie monterskie GWB, czarno-szare, roz. L', '2015-01-01 12:20:00', 138.00, false);
INSERT INTO towary VALUES (108, '19602830090080', 'Spodnie monterskie GWB, szaro-czarne, roz. XS', '2015-01-01 12:20:00', 138.00, false);
INSERT INTO towary VALUES (36, '19601030091060', 'Bluza robocza GWB, granatowo szara, roz. 2XL', '2015-01-01 12:20:00', 130.00, false);
INSERT INTO towary VALUES (93, '1XIGS', 'Ogrodniczki dla pilarzy BoXeR EVO, roz. S', '2015-01-01 12:20:00', 365.00, false);
INSERT INTO towary VALUES (91, '1XIGXXXL', 'Ogrodniczki z ochroną przed przecięciem 1XIG, roz. 3XL', '2015-01-01 12:20:00', 365.00, true);
INSERT INTO towary VALUES (95, '19602830090085', 'Spodnie monterskie GWB, szaro-czarne, roz. S', '2015-01-01 12:20:00', 138.00, true);
INSERT INTO towary VALUES (97, '19602830089092', 'Spodnie monterskie GWB, czarno-szare, roz. M', '2015-01-01 12:20:00', 138.00, true);
INSERT INTO towary VALUES (100, '19602830089106', 'Spodnie monterskie GWB, czarno-szare, roz. XL', '2015-01-01 12:20:00', 138.00, true);
INSERT INTO towary VALUES (109, '19602830089114', 'Spodnie monterskie GWB, czarno-szare, roz. 2XL', '2015-01-01 12:20:00', 138.00, true);
INSERT INTO towary VALUES (110, '19602830089085', 'Spodnie monterskie GWB, czarno-szare, roz. S', '2015-01-01 12:20:00', 138.00, true);
INSERT INTO towary VALUES (11, '19602030091092', 'Spodnie robocze GWB, granatowo-szare, roz. M', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (13, '19602030091114', 'Spodnie robocze GWB, granatowo-szare, roz. 2XL', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (17, '19602030091122', 'Spodnie robocze GWB, granatowo-szare, roz. 3XL', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (19, '19602030090106', 'Spodnie robocze GWB, szaro-czarne, roz. XL', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (23, '19602030090128', 'Spodnie robocze GWB, szaro-czarne, roz. 4XL', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (25, '19602030090085', 'Spodnie robocze GWB, szaro-czarne, roz. S', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (29, '19601030080062', 'Bluza robocza GWB, czerwono-granatowa, roz. 3XL', '2015-01-01 12:20:00', 130.00, true);
INSERT INTO towary VALUES (31, '19601030080050', 'Bluza robocza GWB, czerwono-granatowa, roz. M', '2015-01-01 12:20:00', 130.00, true);
INSERT INTO towary VALUES (20, '19602030090092', 'Spodnie robocze GWB, szaro-czarne, roz. M', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (22, '19602030090080', 'Spodnie robocze GWB, szaro-czarne, roz. XS', '2015-01-01 12:20:00', 129.00, true);
INSERT INTO towary VALUES (9, '19602030080080', 'Spodnie robocze GWB, czerwono-granatowe, roz. XS', '2015-01-01 12:20:00', 129.00, false);
INSERT INTO towary VALUES (21, '19602030090114', 'Spodnie robocze GWB, szaro-czarne, roz. 2XL', '2015-01-01 12:20:00', 129.00, false);
INSERT INTO towary VALUES (27, '19601030080054', 'Bluza robocza GWB, czerwono-granatowa, roz. L', '2015-01-01 12:20:00', 130.00, false);
INSERT INTO towary VALUES (33, '19601030080046', 'Bluza robocza GWB, czerwono-granatowa, roz. XS', '2015-01-01 12:20:00', 130.00, false);
INSERT INTO towary VALUES (18, '19602030090098', 'Spodnie robocze GWB, szaro-czarne, roz. L', '2015-01-01 12:20:00', 129.00, false);
INSERT INTO towary VALUES (24, '19602030090122', 'Spodnie robocze GWB, szaro-czarne, roz. 3XL', '2015-01-01 12:20:00', 129.00, false);
INSERT INTO towary VALUES (30, '19601030080066', 'Bluza robocza GWB, czerwono-granatowa, roz. 4XL', '2015-01-01 12:20:00', 130.00, false);
INSERT INTO towary VALUES (26, '19601030080056', 'Bluza robocza GWB, czerwono-granatowa, roz. XL', '2016-01-06 15:15:00', 130.00, true);
INSERT INTO towary VALUES (28, '19601030080060', 'Bluza robocza GWB, czerwono-granatowa, roz. 2XL', '2016-01-06 15:15:00', 130.00, true);
INSERT INTO towary VALUES (32, '19601030080048', 'Bluza robocza GWB, czerwono-granatowa, roz. S', '2016-01-06 15:15:00', 130.00, true);
INSERT INTO towary VALUES (42, '19601030090060', 'Bluza robocza GWB, szaro-czarna, roz. 2XL', '2016-01-06 15:15:00', 130.00, false);
INSERT INTO towary VALUES (40, '19601030091066', 'Bluza robocza GWB, granatowo szara, roz. 4XL', '2016-01-06 15:15:00', 130.00, true);
INSERT INTO towary VALUES (44, '19601030090048', 'Bluza robocza GWB, szaro-czarna, roz. S', '2016-01-06 15:15:00', 130.00, true);


--
-- Data for Name: umowy; Type: TABLE DATA; Schema: public; Owner: mn161323_Krawiec1
--

INSERT INTO umowy VALUES (1, 'umowa o pracę na czas nieokreślony');
INSERT INTO umowy VALUES (3, 'umowa zlecenie');
INSERT INTO umowy VALUES (4, 'umowa o dzieło');
INSERT INTO umowy VALUES (2, 'umowa o pracę na czas określony');


--
-- Data for Name: zlecenia; Type: TABLE DATA; Schema: public; Owner: mn161323_Krawiec1
--

INSERT INTO zlecenia VALUES (52, '2015-07-04 14:42:40.774899', '2015-08-15 14:42:40.774899', 6, 'Drugi Borkowski', 'ul. Zamkowa 143  62-800 Kalisz', 12, 1156.20, 1);
INSERT INTO zlecenia VALUES (53, '2015-02-28 22:34:20.743023', '2015-04-11 22:34:20.743023', 6, 'Czesława Wysocka', 'ul. Puławska 107  02-566 Warszawa', 12, 1434.18, 1);
INSERT INTO zlecenia VALUES (54, '2015-10-28 13:46:36.258125', '2015-12-09 13:46:36.258125', 6, 'Dobrosława Wysocka', 'ul. Rumuńska 91  91-336 Łódź', 13, 1206.63, 1);
INSERT INTO zlecenia VALUES (30, '2015-03-12 13:46:30.290143', '2015-04-25 13:46:30.290143', 7, 'Dominik Grabowski', 'ul. Nowosądecka 54  54-030 Wrocław', 7, 897.90, 1);
INSERT INTO zlecenia VALUES (55, '2015-08-04 15:07:11.082232', '2015-09-15 15:07:11.082232', 6, 'Jędrzej Borkowski', 'ul. Spartańska 10  02-637 Warszawa', 13, 615.00, 1);
INSERT INTO zlecenia VALUES (56, '2015-07-14 10:01:24.220693', '2015-08-25 10:01:24.220693', 6, 'Wojciecha Symanska', 'ul. Rycerska 22  67-200 Głogów', 14, 1012.29, 1);
INSERT INTO zlecenia VALUES (23, '2015-06-20 14:24:50.417477', '2015-08-01 14:24:50.417477', 6, 'Irenka Jabłońska', 'ul. Rataja Macieja 129  10-260 Olsztyn', 5, 996.30, 1);
INSERT INTO zlecenia VALUES (24, '2015-10-14 04:56:53.273084', '2015-11-25 04:56:53.273084', 6, 'Amadei Czerwinski', 'ul. Kawęczyńska 95  03-770 Warszawa', 5, 512.91, 1);
INSERT INTO zlecenia VALUES (25, '2015-06-04 21:27:24.188346', '2015-07-16 21:27:24.188346', 6, 'Drugi Borkowski', 'ul. Zamkowa 143  62-800 Kalisz', 5, 1509.21, 1);
INSERT INTO zlecenia VALUES (26, '2015-07-12 09:49:55.271342', '2015-08-23 09:49:55.271342', 6, 'Donat Kucharski', 'ul. Skośna 132  45-415 Opole', 6, 808.11, 1);
INSERT INTO zlecenia VALUES (27, '2015-06-11 14:37:25.960835', '2015-07-23 14:37:25.960835', 6, 'Izaak Ostrowski', 'ul. XI Poprzeczna 127  04-638 Warszawa', 6, 1509.21, 1);
INSERT INTO zlecenia VALUES (28, '2015-07-22 18:40:56.553765', '2015-09-02 18:40:56.553765', 6, 'Amadeusz Jabłoński', 'ul. Ostrów Wyspa 137  80-873 Gdańsk', 6, 1031.97, 1);
INSERT INTO zlecenia VALUES (29, '2015-07-15 16:27:33.790332', '2015-08-26 16:27:33.790332', 6, 'Zoja Dudek', 'ul. Kampinoska 66  85-770 Bydgoszcz', 6, 295.20, 1);
INSERT INTO zlecenia VALUES (64, '2015-11-05 03:37:54.799249', '2015-12-17 03:37:54.799249', 6, 'Mieszko Zielinski', 'ul. Herbowa 32  30-698 Kraków', 15, 774.90, 1);
INSERT INTO zlecenia VALUES (65, '2015-03-16 13:45:12.358882', '2015-04-27 13:45:12.358882', 6, 'Longin Michalski', 'ul. Jazowa 132  31-214 Kraków', 16, 442.80, 1);
INSERT INTO zlecenia VALUES (66, '2015-03-17 07:59:04.572794', '2015-04-28 07:59:04.572794', 6, 'Franciszek Ostrowski', 'ul. Siennicka 58  04-005 Warszawa', 16, 1183.26, 1);
INSERT INTO zlecenia VALUES (67, '2015-02-16 09:35:04.093637', '2015-03-30 09:35:04.093637', 6, 'Irenka Jabłońska', 'ul. Rataja Macieja 129  10-260 Olsztyn', 16, 4174.62, 1);
INSERT INTO zlecenia VALUES (68, '2015-05-05 00:10:43.493995', '2015-06-16 00:10:43.493995', 6, 'Seweryna Tomaszewska', 'ul. Bielszowicka 73  41-710 Ruda Śląska', 16, 1820.40, 1);
INSERT INTO zlecenia VALUES (69, '2015-01-29 02:56:39.873626', '2015-03-12 02:56:39.873626', 6, 'Czesław Król', 'ul. Skrzydlata 46  54-129 Wrocław', 16, 1520.28, 1);
INSERT INTO zlecenia VALUES (75, '2015-06-19 14:25:33.358222', '2015-07-31 14:25:33.358222', 6, 'Dobrogost Grabowski', 'ul. Warszawska 66  49-200 Grodków', 18, 626.07, 1);
INSERT INTO zlecenia VALUES (76, '2015-05-07 15:00:19.2145', '2015-06-18 15:00:19.2145', 6, 'Przemysł Dąbrowski', 'ul. Gąsiorowskiego Wacława 146  30-694 Kraków', 18, 912.66, 1);
INSERT INTO zlecenia VALUES (77, '2015-02-10 06:31:45.083209', '2015-03-24 06:31:45.083209', 6, 'Zygmunt Jabłoński', 'ul. Epopei 13  03-029 Warszawa', 18, 2265.66, 1);
INSERT INTO zlecenia VALUES (78, '2015-07-07 04:54:56.576956', '2015-08-18 04:54:56.576956', 6, 'Augustyna Ostrowska', 'ul. Modlińska 32  03-186 Warszawa', 18, 3929.85, 1);
INSERT INTO zlecenia VALUES (79, '2015-05-16 04:39:25.944144', '2015-06-27 04:39:25.944144', 6, 'Julita Nowak', 'ul. Starzyńskiego Stefana 91  30-397 Kraków', 19, 1145.13, 1);
INSERT INTO zlecenia VALUES (81, '2015-03-16 16:24:02.149276', '2015-04-27 16:24:02.149276', 6, 'Felicjan Jasiński', 'ul. Przemysłowa 71  61-541 Poznań', 19, 1479.69, 1);
INSERT INTO zlecenia VALUES (82, '2015-07-07 14:05:35.318492', '2015-08-18 14:05:35.318492', 6, 'Ryszard Dąbrowski', 'ul. Główna 13  49-330 Łosiów', 19, 1357.92, 1);
INSERT INTO zlecenia VALUES (83, '2015-05-12 18:53:27.541765', '2015-06-23 18:53:27.541765', 6, 'Dobrogost Borkowski', 'Pl. Dominikański 133  80-844 Gdańsk', 19, 2472.30, 1);
INSERT INTO zlecenia VALUES (84, '2015-09-28 13:47:34.91361', '2015-11-09 13:47:34.91361', 6, 'Jędrzej Nowak', 'ul. Bankowa 40  08-530 Dęblin', 19, 708.48, 1);
INSERT INTO zlecenia VALUES (85, '2015-04-22 09:45:37.253751', '2015-06-03 09:45:37.253751', 6, 'Karina Sawicka', 'Pl. Szczepański 138  31-011 Kraków', 20, 158.67, 1);
INSERT INTO zlecenia VALUES (86, '2015-10-04 09:22:10.288137', '2015-11-15 09:22:10.288137', 6, 'Celestyna Nowicka', 'ul. Bojerowa 94  94-124 Łódź', 20, 1434.18, 1);
INSERT INTO zlecenia VALUES (87, '2015-01-11 16:43:03.292633', '2015-02-22 16:43:03.292633', 6, 'Kajetan Sokołowski', 'ul. Kokosowa 38  65-120 Zielona Góra', 20, 608.85, 1);
INSERT INTO zlecenia VALUES (88, '2015-05-10 06:57:55.137176', '2015-06-21 06:57:55.137176', 6, 'Krystiana Gorska', 'ul. Korczyńskiego Ludomiła 117  30-698 Kraków', 20, 1876.98, 1);
INSERT INTO zlecenia VALUES (89, '2015-11-19 13:08:48.359301', '2015-12-31 13:08:48.359301', 6, 'Wiesław Grabowski', 'ul. Generała Karcza Jana 148  30-394 Kraków', 20, 2542.41, 1);
INSERT INTO zlecenia VALUES (91, '2015-06-23 15:25:14.589371', '2015-08-04 15:25:14.589371', 6, 'Kasper Grabowski', 'ul. Lutniowa 89  02-388 Warszawa', 21, 1477.23, 1);
INSERT INTO zlecenia VALUES (92, '2015-01-24 16:00:05.222771', '2015-03-07 16:00:05.222771', 6, 'Jędrzej Nowak', 'ul. Bankowa 40  08-530 Dęblin', 21, 1228.77, 1);
INSERT INTO zlecenia VALUES (93, '2015-02-17 04:04:51.400941', '2015-03-31 04:04:51.400941', 6, 'Beata Grabowska', 'ul. Astronautów 132  93-533 Łódź', 21, 1622.37, 1);
INSERT INTO zlecenia VALUES (94, '2015-11-30 12:02:30.358227', '2016-01-11 12:02:30.358227', 6, 'Franciszek Ostrowski', 'ul. Siennicka 58  04-005 Warszawa', 21, 1649.43, 1);
INSERT INTO zlecenia VALUES (95, '2015-11-21 06:54:58.52538', '2016-01-02 06:54:58.52538', 6, 'Jędrzej Borkowski', 'ul. Spartańska 10  02-637 Warszawa', 21, 1125.45, 1);
INSERT INTO zlecenia VALUES (96, '2015-04-05 12:23:19.689491', '2015-05-17 12:23:19.689491', 6, 'Stefcia Dąbrowski', 'ul. Kłoczkowskiego Wacława 122  80-180 Gdańsk', 21, 1078.71, 1);
INSERT INTO zlecenia VALUES (97, '2015-10-05 13:16:30.662567', '2015-11-16 13:16:30.662567', 6, 'Lubomierz Symanski', 'ul. Okrąg 80  00-415 Warszawa', 22, 4386.18, 1);
INSERT INTO zlecenia VALUES (98, '2015-06-26 14:22:24.204712', '2015-08-07 14:22:24.204712', 6, 'Drugi Borkowski', 'ul. Zamkowa 143  62-800 Kalisz', 22, 2348.07, 1);
INSERT INTO zlecenia VALUES (99, '2015-09-05 09:20:28.164048', '2015-10-17 09:20:28.164048', 6, 'Czesława Wysocka', 'ul. Puławska 107  02-566 Warszawa', 22, 1239.84, 1);
INSERT INTO zlecenia VALUES (101, '2015-04-03 02:02:06.69999', '2015-05-15 02:02:06.69999', 6, 'Sławomira Wiśniewska', 'ul. Małopolska 139  81-813 Sopot', 22, 1458.78, 1);
INSERT INTO zlecenia VALUES (102, '2015-04-27 15:38:11.010869', '2015-06-08 15:38:11.010869', 6, 'Dita Chmielewska', 'ul. Karłowicza Mieczysława 114  91-478 Łódź', 22, 568.26, 1);
INSERT INTO zlecenia VALUES (103, '2015-10-26 16:18:33.730136', '2015-12-07 16:18:33.730136', 6, 'Adelajda Symanska', 'ul. Zdrojowa 133  61-023 Poznań', 23, 314.88, 1);
INSERT INTO zlecenia VALUES (104, '2015-09-25 20:48:06.819358', '2015-11-06 20:48:06.819358', 6, 'Bogusława Michalska', 'Al. Bohaterów Warszawy 36  70-343 Szczecin', 23, 767.52, 1);
INSERT INTO zlecenia VALUES (106, '2015-03-19 06:09:18.491197', '2015-04-30 06:09:18.491197', 6, 'Lubomierz Symanski', 'ul. Okrąg 80  00-415 Warszawa', 23, 1515.36, 1);
INSERT INTO zlecenia VALUES (125, '2015-07-05 15:54:20.558537', '2015-08-16 15:54:20.558537', 6, 'Jędrzej Borkowski', 'ul. Spartańska 10  02-637 Warszawa', 27, 630.99, 1);
INSERT INTO zlecenia VALUES (152, '2016-02-14 11:01:39.641436', '2016-03-26 11:01:39.641436', 6, 'Czesława Wysocka', 'ul. Puławska 107  02-566 Warszawa', 32, 1483.38, 1);
INSERT INTO zlecenia VALUES (154, '2016-02-15 17:23:09.68626', '2016-03-27 17:23:09.68626', 6, 'Kajetan Sokołowski', 'ul. Kokosowa 38  65-120 Zielona Góra', 32, 1510.44, 1);
INSERT INTO zlecenia VALUES (157, '2016-10-07 07:47:46.112262', '2016-11-17 07:47:46.112262', 6, 'Mieszko Kowalski', 'Al. I Armii Wojska Polskiego 50  22-100 Chełm', 33, 4619.88, 1);
INSERT INTO zlecenia VALUES (70, '2015-11-14 03:13:23.030647', '2015-12-28 03:13:23.030647', 7, 'Beata Grabowska', 'ul. Astronautów 132  93-533 Łódź', 17, 986.46, 1);
INSERT INTO zlecenia VALUES (120, '2015-07-01 15:55:03.642873', '2015-08-14 15:55:03.642873', 7, 'Albin Nowakowski', 'ul. Gajowicka 43  53-407 Wrocław', 26, 1863.45, 1);
INSERT INTO zlecenia VALUES (110, '2015-06-05 04:27:59.507111', '2015-07-19 04:27:59.507111', 7, 'Hendrych Pawlak', 'ul. Weigla Ferdynanda 11  30-898 Kraków', 24, 879.45, 1);
INSERT INTO zlecenia VALUES (107, '2015-07-02 02:23:30.734667', '2015-08-13 02:23:30.734667', 6, 'Przemysł Dąbrowski', 'ul. Gąsiorowskiego Wacława 146  30-694 Kraków', 23, 2214.00, 1);
INSERT INTO zlecenia VALUES (108, '2015-08-16 15:52:38.623222', '2015-09-27 15:52:38.623222', 6, 'Franciszek Ostrowski', 'ul. Siennicka 58  04-005 Warszawa', 24, 2126.67, 1);
INSERT INTO zlecenia VALUES (109, '2015-11-15 13:25:45.75841', '2015-12-27 13:25:45.75841', 6, 'Mieszko Kowalski', 'Al. I Armii Wojska Polskiego 50  22-100 Chełm', 24, 1680.18, 1);
INSERT INTO zlecenia VALUES (111, '2015-08-08 01:54:12.269009', '2015-09-19 01:54:12.269009', 6, 'Zuzanna Jaworska', 'ul. Tarnogórska 122  03-679 Warszawa', 24, 1585.47, 1);
INSERT INTO zlecenia VALUES (112, '2015-10-17 02:14:49.752339', '2015-11-28 02:14:49.752339', 6, 'Dobrogost Grabowski', 'ul. Warszawska 66  49-200 Grodków', 24, 1052.88, 1);
INSERT INTO zlecenia VALUES (113, '2015-11-20 04:11:15.353877', '2016-01-01 04:11:15.353877', 6, 'Karina Sawicka', 'Pl. Szczepański 138  31-011 Kraków', 24, 1857.30, 1);
INSERT INTO zlecenia VALUES (114, '2015-09-25 00:27:21.526642', '2015-11-06 00:27:21.526642', 6, 'Jędrzej Nowak', 'ul. Bankowa 40  08-530 Dęblin', 24, 618.69, 1);
INSERT INTO zlecenia VALUES (115, '2015-03-02 16:01:07.937136', '2015-04-13 16:01:07.937136', 6, 'Salomea Walczak', 'ul. Archeologów 39  02-184 Warszawa', 25, 726.93, 1);
INSERT INTO zlecenia VALUES (116, '2015-08-04 02:08:16.074209', '2015-09-15 02:08:16.074209', 6, 'Tobiasz Duda', 'ul. Mgielna 148  20-833 Lublin', 25, 1860.99, 1);
INSERT INTO zlecenia VALUES (117, '2015-07-23 08:31:30.179059', '2015-09-03 08:31:30.179059', 6, 'Agnieszka Piotrowska', 'ul. Stanisławskiego Jana 60  51-638 Wrocław', 25, 3888.03, 1);
INSERT INTO zlecenia VALUES (118, '2015-03-17 00:54:40.428073', '2015-04-28 00:54:40.428073', 6, 'Zachariasz Gorski', 'ul. Szosa Chełmińska 83  87-107 Toruń', 25, 2071.32, 1);
INSERT INTO zlecenia VALUES (119, '2015-06-11 07:28:44.602662', '2015-07-23 07:28:44.602662', 6, 'Alfons Ostrowski', 'ul. Stelmachów 46  31-349 Kraków', 26, 972.93, 1);
INSERT INTO zlecenia VALUES (121, '2015-04-15 15:56:36.513864', '2015-05-27 15:56:36.513864', 6, 'Weronika Borkowska', 'ul. Wyspowa 58  03-687 Warszawa', 26, 2809.32, 1);
INSERT INTO zlecenia VALUES (122, '2015-09-29 22:39:48.752751', '2015-11-10 22:39:48.752751', 6, 'Metody Kwiatkowski', 'ul. Zakopiańska 49  81-314 Gdynia', 26, 944.64, 1);
INSERT INTO zlecenia VALUES (123, '2015-10-14 21:20:22.204676', '2015-11-25 21:20:22.204676', 6, 'Czesława Wysocka', 'ul. Puławska 107  02-566 Warszawa', 27, 2687.55, 1);
INSERT INTO zlecenia VALUES (124, '2015-06-06 05:42:48.719414', '2015-07-18 05:42:48.719414', 6, 'Karina Sawicka', 'Pl. Szczepański 138  31-011 Kraków', 27, 1065.18, 1);
INSERT INTO zlecenia VALUES (71, '2015-10-18 06:38:55.779928', '2015-11-29 06:38:55.779928', 6, 'Jakub Kalinowski', 'Al. Sienkiewicza Henryka 31  42-217 Częstochowa', 17, 539.97, 1);
INSERT INTO zlecenia VALUES (126, '2015-09-14 09:48:55.180257', '2015-10-26 09:48:55.180257', 6, 'Wojciecha Symanska', 'ul. Rycerska 22  67-200 Głogów', 27, 1832.70, 1);
INSERT INTO zlecenia VALUES (127, '2015-09-20 16:18:34.472558', '2015-11-01 16:18:34.472558', 6, 'Mieszko Kowalski', 'Al. I Armii Wojska Polskiego 50  22-100 Chełm', 27, 339.48, 1);
INSERT INTO zlecenia VALUES (128, '2015-09-21 20:53:31.098106', '2015-11-02 20:53:31.098106', 6, 'Augustyn Michalski', 'ul. Złota 123  00-019 Warszawa', 27, 2018.43, 1);
INSERT INTO zlecenia VALUES (158, '2016-04-17 20:41:51.272934', '2016-05-28 20:41:51.272934', 6, 'Beata Grabowska', 'ul. Astronautów 132  93-533 Łódź', 33, 1088.55, 1);
INSERT INTO zlecenia VALUES (161, '2016-10-01 04:18:04.245202', '2016-11-11 04:18:04.245202', 6, 'Stefcia Dąbrowski', 'ul. Kłoczkowskiego Wacława 122  80-180 Gdańsk', 33, 2635.89, 1);
INSERT INTO zlecenia VALUES (163, '2016-03-13 09:07:54.46357', '2016-04-23 09:07:54.46357', 6, 'Apolonia Nowak', 'ul. Spółdzielcza 142  42-453 Łazy', 34, 2894.19, 1);
INSERT INTO zlecenia VALUES (164, '2016-05-22 01:59:32.283769', '2016-07-02 01:59:32.283769', 6, 'Sławomira Wiśniewska', 'ul. Małopolska 139  81-813 Sopot', 34, 1079.94, 1);
INSERT INTO zlecenia VALUES (166, '2016-08-21 10:52:24.021517', '2016-10-01 10:52:24.021517', 6, 'Czesława Wysocka', 'ul. Puławska 107  02-566 Warszawa', 34, 1655.58, 1);
INSERT INTO zlecenia VALUES (176, '2016-06-22 12:36:21.548819', '2016-08-02 12:36:21.548819', 6, 'Dobrogost Grabowski', 'ul. Warszawska 66  49-200 Grodków', 36, 1576.86, 1);
INSERT INTO zlecenia VALUES (20, '2015-01-25 00:10:16.445258', '2015-03-10 00:10:16.445258', 7, 'Jakub Kalinowski', 'Al. Sienkiewicza Henryka 31  42-217 Częstochowa', 4, 295.20, 1);
INSERT INTO zlecenia VALUES (10, '2015-08-17 17:30:46.367468', '2015-09-30 17:30:46.367468', 7, 'Edyta Nowicka', 'ul. Ciasna 31  47-230 Kędzierzyn-Koźle', 3, 147.60, 1);
INSERT INTO zlecenia VALUES (60, '2015-05-29 23:33:55.966238', '2015-07-12 23:33:55.966238', 7, 'Zuzanna Jaworska', 'ul. Tarnogórska 122  03-679 Warszawa', 15, 2088.54, 1);
INSERT INTO zlecenia VALUES (57, '2015-11-26 13:03:16.130727', '2016-01-07 13:03:16.130727', 6, 'Waleria Kwiatkowska', 'ul. Dunajewskiego Isaaka 91  47-200 Kędzierzyn-Koźle', 14, 1466.16, 1);
INSERT INTO zlecenia VALUES (3, '2015-02-17 01:50:56.327847', '2015-03-31 01:50:56.327847', 6, 'Anastazja Jabłońska', 'ul. Częstochowska 6  42-248 Przyrów', 1, 836.40, 1);
INSERT INTO zlecenia VALUES (58, '2015-01-30 00:54:51.630305', '2015-03-13 00:54:51.630305', 6, 'Jarosława Rutkowska', 'ul. Nabrzeże Fińskie 4  71-607 Szczecin', 14, 1621.14, 1);
INSERT INTO zlecenia VALUES (59, '2015-02-07 18:50:52.311748', '2015-03-21 18:50:52.311748', 6, 'Maryla Adamczyk', 'ul. Postolińska 17  51-126 Wrocław', 14, 1585.47, 1);
INSERT INTO zlecenia VALUES (61, '2015-10-23 12:53:12.903543', '2015-12-04 12:53:12.903543', 6, 'Seweryna Symanska', 'ul. 19 Stycznia 88  09-101 Płońsk', 15, 1920.03, 1);
INSERT INTO zlecenia VALUES (62, '2015-01-15 03:04:12.921742', '2015-02-26 03:04:12.921742', 6, 'Patryk Grabowski', 'ul. Kilińskiego Jana 10  93-160 Łódź', 15, 1735.53, 1);
INSERT INTO zlecenia VALUES (63, '2015-02-11 01:24:10.832149', '2015-03-25 01:24:10.832149', 6, 'Radosława Ostrowska', 'ul. Kobuza 134  02-841 Warszawa', 15, 1628.52, 1);
INSERT INTO zlecenia VALUES (4, '2015-03-16 13:58:39.696084', '2015-04-27 13:58:39.696084', 6, 'Beata Grabowska', 'ul. Astronautów 132  93-533 Łódź', 1, 442.80, 1);
INSERT INTO zlecenia VALUES (5, '2015-10-20 04:19:01.934046', '2015-12-01 04:19:01.934046', 6, 'Czesław Kwiatkowski', 'ul. Macierzanki 64  05-077 Warszawa/Wesoła', 1, 1180.80, 1);
INSERT INTO zlecenia VALUES (6, '2015-05-12 21:30:03.370906', '2015-06-23 21:30:03.370906', 6, 'Przemysł Jasiński', 'ul. Latawcowa 55  54-130 Wrocław', 2, 4305.00, 1);
INSERT INTO zlecenia VALUES (7, '2015-07-30 21:48:54.915081', '2015-09-10 21:48:54.915081', 6, 'Marcin Walczak', 'ul. Gdańska 82  47-404 Racibórz', 2, 1611.30, 1);
INSERT INTO zlecenia VALUES (8, '2015-09-26 11:06:29.723468', '2015-11-07 11:06:29.723468', 6, 'Czesław Król', 'ul. Skrzydlata 46  54-129 Wrocław', 2, 750.30, 1);
INSERT INTO zlecenia VALUES (9, '2015-04-21 20:39:56.413086', '2015-06-02 20:39:56.413086', 6, 'Dobrosława Wysocka', 'ul. Rumuńska 91  91-336 Łódź', 2, 295.20, 1);
INSERT INTO zlecenia VALUES (11, '2015-02-13 17:05:55.989513', '2015-03-27 17:05:55.989513', 6, 'Bogusława Michalska', 'Al. Bohaterów Warszawy 36  70-343 Szczecin', 3, 627.30, 1);
INSERT INTO zlecenia VALUES (12, '2015-08-17 23:50:02.08894', '2015-09-28 23:50:02.08894', 6, 'Łukasz Wieczorek', 'ul. Bułgarska 110  65-943 Zielona Góra', 3, 602.70, 1);
INSERT INTO zlecenia VALUES (13, '2015-02-26 00:56:44.293303', '2015-04-09 00:56:44.293303', 6, 'Celestyn Kalinowski', 'ul. Roślinna 15  20-516 Lublin', 4, 750.30, 1);
INSERT INTO zlecenia VALUES (14, '2015-03-25 03:21:46.010498', '2015-05-06 03:21:46.010498', 6, 'Seweryna Tomaszewska', 'ul. Bielszowicka 73  41-710 Ruda Śląska', 4, 1611.30, 1);
INSERT INTO zlecenia VALUES (15, '2015-09-24 20:02:08.655803', '2015-11-05 20:02:08.655803', 6, 'Jadwiga Symanska', 'ul. Zagórzańska 24  04-965 Warszawa', 4, 750.30, 1);
INSERT INTO zlecenia VALUES (16, '2015-10-07 03:40:17.793524', '2015-11-18 03:40:17.793524', 6, 'Patrycja Pawłowska', 'ul. Kasztanowa 112  41-814 Zabrze', 4, 295.20, 1);
INSERT INTO zlecenia VALUES (17, '2015-02-03 15:36:29.170101', '2015-03-17 15:36:29.170101', 6, 'Danuta Jasińska', 'ul. Ondraszka 62  40-857 Katowice', 4, 750.30, 1);
INSERT INTO zlecenia VALUES (18, '2015-08-14 10:17:38.851777', '2015-09-25 10:17:38.851777', 6, 'Czesława Wysocka', 'ul. Puławska 107  02-566 Warszawa', 4, 602.70, 1);
INSERT INTO zlecenia VALUES (19, '2015-09-27 00:40:04.81174', '2015-11-08 00:40:04.81174', 6, 'Apolonia Nowak', 'ul. Spółdzielcza 142  42-453 Łazy', 4, 1525.20, 1);
INSERT INTO zlecenia VALUES (21, '2015-01-31 17:49:01.813307', '2015-03-14 17:49:01.813307', 6, 'Grażyna Czarnecka', 'ul. Piaskowa 141  41-516 Chorzów', 5, 848.70, 1);
INSERT INTO zlecenia VALUES (22, '2015-07-11 07:01:44.268864', '2015-08-22 07:01:44.268864', 6, 'Martyn Wiśniewski', 'ul. Skarżyńskiego Stanisława 105  54-530 Wrocław', 5, 1544.88, 1);
INSERT INTO zlecenia VALUES (141, '2016-05-13 06:40:39.047724', NULL, 2, 'Celestyna Nowicka', 'ul. Bojerowa 94  94-124 Łódź', 30, 1624.83, 1);
INSERT INTO zlecenia VALUES (144, '2016-11-03 14:04:31.094057', NULL, 5, 'Franciszek Ostrowski', 'ul. Siennicka 58  04-005 Warszawa', 31, 498.15, 1);
INSERT INTO zlecenia VALUES (147, '2016-05-31 01:56:52.250438', NULL, 2, 'Franciszek Ostrowski', 'ul. Siennicka 58  04-005 Warszawa', 31, 3843.75, 1);
INSERT INTO zlecenia VALUES (140, '2016-03-27 06:12:46.196206', '2016-05-07 06:12:46.196206', 7, 'Jakub Kalinowski', 'Al. Sienkiewicza Henryka 31  42-217 Częstochowa', 30, 1196.79, 1);
INSERT INTO zlecenia VALUES (145, '2016-09-06 02:15:33.314082', '2016-10-17 02:15:33.314082', 7, 'Jędrzej Borkowski', 'ul. Spartańska 10  02-637 Warszawa', 31, 408.36, 1);
INSERT INTO zlecenia VALUES (136, '2016-11-10 05:50:25.111628', '2016-12-21 05:50:25.111628', 6, 'Stefcia Dąbrowski', 'ul. Kłoczkowskiego Wacława 122  80-180 Gdańsk', 29, 1694.94, 1);
INSERT INTO zlecenia VALUES (137, '2016-10-30 17:12:00.841366', '2016-12-10 17:12:00.841366', 6, 'Jakub Kalinowski', 'Al. Sienkiewicza Henryka 31  42-217 Częstochowa', 29, 2649.42, 1);
INSERT INTO zlecenia VALUES (139, '2016-08-10 08:45:12.576529', '2016-09-20 08:45:12.576529', 6, 'Jędrzej Borkowski', 'ul. Spartańska 10  02-637 Warszawa', 30, 1211.55, 1);
INSERT INTO zlecenia VALUES (142, '2016-10-26 15:20:42.915648', '2016-12-06 15:20:42.915648', 6, 'Lubomierz Symanski', 'ul. Okrąg 80  00-415 Warszawa', 30, 1435.41, 1);
INSERT INTO zlecenia VALUES (143, '2016-11-01 01:48:40.313537', '2016-12-12 01:48:40.313537', 6, 'Karina Sawicka', 'Pl. Szczepański 138  31-011 Kraków', 30, 292.74, 1);
INSERT INTO zlecenia VALUES (148, '2016-07-29 03:28:59.674088', '2016-09-08 03:28:59.674088', 6, 'Czesław Król', 'ul. Skrzydlata 46  54-129 Wrocław', 31, 1035.66, 1);
INSERT INTO zlecenia VALUES (146, '2016-11-30 11:04:24.214754', NULL, 1, 'Jędrzej Nowak', 'ul. Bankowa 40  08-530 Dęblin', 31, 2062.71, 1);
INSERT INTO zlecenia VALUES (135, '2016-05-11 01:44:15.969527', NULL, 2, 'Czesław Król', 'ul. Skrzydlata 46  54-129 Wrocław', 29, 461.25, 1);
INSERT INTO zlecenia VALUES (138, '2016-10-03 07:23:02.188949', NULL, 3, 'Longin Michalski', 'ul. Jazowa 132  31-214 Kraków', 30, 892.98, 1);
INSERT INTO zlecenia VALUES (133, '2016-10-19 00:54:08.749709', '2016-11-29 00:54:08.749709', 6, 'Augustyna Olszewska', 'ul. Ikara 82  81-197 Gdynia', 29, 1918.80, 1);
INSERT INTO zlecenia VALUES (134, '2016-05-16 11:00:22.950724', '2016-06-26 11:00:22.950724', 6, 'Jadwiga Symanska', 'ul. Zagórzańska 24  04-965 Warszawa', 29, 1357.92, 1);
INSERT INTO zlecenia VALUES (214, '2016-11-22 09:30:02.616736', NULL, 1, 'Longin Michalski', 'ul. Jazowa 132  31-214 Kraków', 31, 1441.56, 1);
INSERT INTO zlecenia VALUES (205, '2016-02-28 09:07:25.688993', '2016-04-09 09:07:25.688993', 7, 'Hendrych Pawlak', 'ul. Weigla Ferdynanda 11  30-898 Kraków', 13, 191.88, 1);
INSERT INTO zlecenia VALUES (215, '2016-04-22 02:24:12.366909', '2016-06-02 02:24:12.366909', 7, 'Augustyn Michalski', 'ul. Złota 123  00-019 Warszawa', 36, 292.74, 1);
INSERT INTO zlecenia VALUES (220, '2016-05-26 22:03:15.737931', '2016-07-06 22:03:15.737931', 7, 'Sergiusz Wieczorek', 'ul. Wawelska 42  02-034 Warszawa', 21, 1634.67, 1);
INSERT INTO zlecenia VALUES (1, '2015-07-08 00:49:56.653752', '2015-08-19 00:49:56.653752', 6, 'Adelajda Symanska', 'ul. Zdrojowa 133  61-023 Poznań', 1, 959.40, 1);
INSERT INTO zlecenia VALUES (155, '2016-08-21 18:49:21.957622', '2016-10-01 18:49:21.957622', 7, 'Franciszek Ostrowski', 'ul. Siennicka 58  04-005 Warszawa', 32, 924.96, 1);
INSERT INTO zlecenia VALUES (160, '2016-06-24 22:12:56.561093', '2016-08-04 22:12:56.561093', 7, 'Czesława Wysocka', 'ul. Puławska 107  02-566 Warszawa', 33, 1751.52, 1);
INSERT INTO zlecenia VALUES (203, '2016-06-03 23:04:06.482322', '2016-07-14 23:04:06.482322', 6, 'Małgorzata Wiśniewska', 'ul. Jagiellońska 127  91-362 Łódź', 27, 1926.18, 1);
INSERT INTO zlecenia VALUES (31, '2015-06-27 02:47:00.066793', '2015-08-08 02:47:00.066793', 6, 'Sławomira Wiśniewska', 'ul. Małopolska 139  81-813 Sopot', 7, 369.00, 1);
INSERT INTO zlecenia VALUES (32, '2015-02-26 00:07:00.075935', '2015-04-09 00:07:00.075935', 6, 'Anastazy Zielinski', 'ul. Bytomska 143  41-400 Mysłowice', 7, 738.00, 1);
INSERT INTO zlecenia VALUES (33, '2015-03-07 07:41:16.399349', '2015-04-18 07:41:16.399349', 6, 'Wiesław Król', 'ul. Powsińska 64  02-920 Warszawa', 7, 848.70, 1);
INSERT INTO zlecenia VALUES (34, '2015-06-13 08:32:39.451264', '2015-07-25 08:32:39.451264', 6, 'Lubomierz Symanski', 'ul. Okrąg 80  00-415 Warszawa', 8, 1190.64, 1);
INSERT INTO zlecenia VALUES (35, '2015-03-11 07:58:35.674862', '2015-04-22 07:58:35.674862', 6, 'Beatrycze Nowicka', 'ul. 21 Pułku Piechoty "Dzieci Warszawy" 88  03-983 Warszawa', 8, 637.14, 1);
INSERT INTO zlecenia VALUES (36, '2015-04-02 09:29:13.378983', '2015-05-14 09:29:13.378983', 6, 'Franciszek Ostrowski', 'ul. Siennicka 58  04-005 Warszawa', 8, 1263.21, 1);
INSERT INTO zlecenia VALUES (37, '2015-02-13 07:04:06.599776', '2015-03-27 07:04:06.599776', 6, 'Hanna Adamczyk', 'ul. Krzywa 145  42-400 Zawiercie', 9, 341.94, 1);
INSERT INTO zlecenia VALUES (38, '2015-03-13 18:21:35.271108', '2015-04-24 18:21:35.271108', 6, 'Kazimiera Tomaszewska', 'ul. Pocztowa 24  48-100 Głubczyce', 10, 996.30, 1);
INSERT INTO zlecenia VALUES (204, '2016-06-06 00:49:33.926255', NULL, 2, 'Matylda Kowalska', 'ul. Gumniska 37  33-106 Tarnów', 28, 660.51, 1);
INSERT INTO zlecenia VALUES (207, '2016-03-26 02:01:32.422968', NULL, 4, 'Jędrzej Nowak', 'ul. Bankowa 40  08-530 Dęblin', 36, 3608.82, 1);
INSERT INTO zlecenia VALUES (210, '2016-11-18 23:25:35.040772', NULL, 5, 'Maryla Adamczyk', 'ul. Postolińska 17  51-126 Wrocław', 28, 762.60, 1);
INSERT INTO zlecenia VALUES (213, '2016-10-29 19:43:59.088026', NULL, 3, 'Drugi Borkowski', 'ul. Zamkowa 143  62-800 Kalisz', 32, 2040.57, 1);
INSERT INTO zlecenia VALUES (216, '2016-11-05 12:18:57.228352', NULL, 5, 'Hanna Adamczyk', 'ul. Krzywa 145  42-400 Zawiercie', 28, 1597.77, 1);
INSERT INTO zlecenia VALUES (219, '2016-03-12 16:30:42.619765', NULL, 4, 'Eustachy Zawadzki', 'Pl. Słoneczny 2  91-498 Łódź', 24, 1131.60, 1);
INSERT INTO zlecenia VALUES (150, '2016-05-12 20:29:12.868518', NULL, 2, 'Franciszek Ostrowski', 'ul. Siennicka 58  04-005 Warszawa', 31, 1324.71, 1);
INSERT INTO zlecenia VALUES (153, '2016-04-22 06:56:38.958349', NULL, 3, 'Joasia Majewska', 'ul. Hiacyntowa 143  04-908 Warszawa', 32, 2629.74, 1);
INSERT INTO zlecenia VALUES (156, '2016-07-18 10:20:49.942473', NULL, 5, 'Gerwazy Chmielewski', 'ul. Wieniawskiego Henryka 41  71-144 Szczecin', 32, 1912.65, 1);
INSERT INTO zlecenia VALUES (159, '2016-04-26 05:19:28.402085', NULL, 4, 'Beata Grabowska', 'ul. Astronautów 132  93-533 Łódź', 33, 1373.91, 1);
INSERT INTO zlecenia VALUES (162, '2016-07-20 18:20:09.750348', NULL, 5, 'Drugi Borkowski', 'ul. Zamkowa 143  62-800 Kalisz', 34, 956.94, 1);
INSERT INTO zlecenia VALUES (165, '2016-03-08 08:32:09.417068', NULL, 4, 'Lubomierz Symanski', 'ul. Okrąg 80  00-415 Warszawa', 34, 934.80, 1);
INSERT INTO zlecenia VALUES (206, '2016-09-13 02:43:23.334314', '2016-10-24 02:43:23.334314', 6, 'Drugi Borkowski', 'ul. Zamkowa 143  62-800 Kalisz', 38, 1586.70, 1);
INSERT INTO zlecenia VALUES (208, '2016-06-20 19:24:45.838518', '2016-07-31 19:24:45.838518', 6, 'Sławomira Wiśniewska', 'ul. Małopolska 139  81-813 Sopot', 38, 2432.94, 1);
INSERT INTO zlecenia VALUES (209, '2016-06-23 08:14:40.249554', '2016-08-03 08:14:40.249554', 6, 'Seweryna Tomaszewska', 'ul. Bielszowicka 73  41-710 Ruda Śląska', 39, 934.80, 1);
INSERT INTO zlecenia VALUES (211, '2016-01-10 22:18:48.692436', '2016-02-20 22:18:48.692436', 6, 'Korneli Michalski', 'ul. Kombatantów 76  71-809 Szczecin', 29, 2339.46, 1);
INSERT INTO zlecenia VALUES (212, '2016-06-10 07:23:44.037364', '2016-07-21 07:23:44.037364', 6, 'Czesław Król', 'ul. Skrzydlata 46  54-129 Wrocław', 26, 1851.15, 1);
INSERT INTO zlecenia VALUES (217, '2016-01-12 03:56:34.815463', '2016-02-22 03:56:34.815463', 6, 'Klara Czarnecka', 'ul. Łazanowicka 66  03-089 Warszawa', 29, 2617.44, 1);
INSERT INTO zlecenia VALUES (218, '2016-01-22 02:33:54.900463', '2016-03-03 02:33:54.900463', 6, 'Patryk Grabowski', 'ul. Kilińskiego Jana 10  93-160 Łódź', 29, 1397.28, 1);
INSERT INTO zlecenia VALUES (149, '2016-05-10 17:38:25.74671', '2016-06-20 17:38:25.74671', 6, 'Klara Czarnecka', 'ul. Łazanowicka 66  03-089 Warszawa', 31, 1460.01, 1);
INSERT INTO zlecenia VALUES (151, '2016-05-10 04:33:53.962923', '2016-06-20 04:33:53.962923', 6, 'Donat Kucharski', 'ul. Skośna 132  45-415 Opole', 31, 1938.48, 1);
INSERT INTO zlecenia VALUES (177, '2016-03-25 23:02:18.429236', NULL, 4, 'Augustyna Ostrowska', 'ul. Modlińska 32  03-186 Warszawa', 36, 3869.58, 1);
INSERT INTO zlecenia VALUES (180, '2016-05-01 05:46:17.227074', NULL, 2, 'Metody Kwiatkowski', 'ul. Zakopiańska 49  81-314 Gdynia', 37, 1329.63, 1);
INSERT INTO zlecenia VALUES (183, '2016-09-11 02:03:39.281986', NULL, 2, 'Bogumiła Ostrowska', 'ul. Kaczeńcowa 6  35-604 Rzeszów', 38, 2168.49, 1);
INSERT INTO zlecenia VALUES (186, '2016-04-21 02:59:01.446385', NULL, 2, 'Albin Wysocki', 'ul. Aptekarska 2  51-134 Wrocław', 38, 2296.41, 1);
INSERT INTO zlecenia VALUES (189, '2016-04-08 21:39:59.898389', NULL, 2, 'Felicja Wiśniewska', 'Pl. Pocztowy 56  18-400 Łomża', 38, 1391.13, 1);
INSERT INTO zlecenia VALUES (192, '2016-08-10 22:25:48.067832', NULL, 5, 'Jadwiga Symanska', 'ul. Zagórzańska 24  04-965 Warszawa', 39, 912.66, 1);
INSERT INTO zlecenia VALUES (195, '2016-05-04 05:11:52.814775', NULL, 3, 'Dita Chmielewska', 'ul. Karłowicza Mieczysława 114  91-478 Łódź', 39, 725.70, 1);
INSERT INTO zlecenia VALUES (201, '2016-06-17 06:56:15.328705', NULL, 2, 'Ireneusz Walczak', 'ul. Kwartalna 125  93-327 Łódź', 23, 947.10, 1);
INSERT INTO zlecenia VALUES (185, '2016-02-06 00:40:57.438532', '2016-03-18 00:40:57.438532', 7, 'Walenty Tomaszewski', 'ul. Czyżyków 88  30-244 Kraków', 38, 150.06, 1);
INSERT INTO zlecenia VALUES (190, '2016-07-22 10:17:57.668855', '2016-09-01 10:17:57.668855', 7, 'Drugi Borkowski', 'ul. Zamkowa 143  62-800 Kalisz', 39, 1623.60, 1);
INSERT INTO zlecenia VALUES (198, '2016-08-16 09:51:48.708626', '2016-09-26 09:51:48.708626', 7, 'Longin Michalski', 'ul. Jazowa 132  31-214 Kraków', 39, 2127.90, 1);
INSERT INTO zlecenia VALUES (100, '2015-02-06 16:46:21.693368', '2015-03-22 16:46:21.693368', 7, 'Hendrych Pawlak', 'ul. Weigla Ferdynanda 11  30-898 Kraków', 22, 927.42, 1);
INSERT INTO zlecenia VALUES (90, '2015-10-19 21:21:27.623151', '2015-12-02 21:21:27.623151', 7, 'Oskar Czarnecki', 'ul. Piastowska 48  41-100 Siemianowice Śląskie', 20, 1372.68, 1);
INSERT INTO zlecenia VALUES (80, '2015-09-09 09:20:41.004775', '2015-10-23 09:20:41.004775', 7, 'Zofia Maciejewska', 'ul. Osmolicka 71  20-523 Lublin', 19, 1769.97, 1);
INSERT INTO zlecenia VALUES (40, '2015-08-01 06:36:03.251956', '2015-09-14 06:36:03.251956', 7, 'Ziemowit Tomaszewski', 'ul. Pałubickiego Rajmunda 14  85-790 Bydgoszcz', 10, 808.11, 1);
INSERT INTO zlecenia VALUES (130, '2015-02-05 00:23:54.950052', '2015-03-21 00:23:54.950052', 7, 'Drugi Borkowski', 'ul. Zamkowa 143  62-800 Kalisz', 28, 1296.42, 1);
INSERT INTO zlecenia VALUES (2, '2015-11-28 16:38:59.899948', '2015-12-25 13:40:00', 7, 'Jędrzej Borkowski', 'ul. Spartańska 10  02-637 Warszawa', 1, 565.80, 1);
INSERT INTO zlecenia VALUES (50, '2015-11-27 11:45:39.705652', '2015-12-25 13:40:00', 7, 'Hanna Adamczyk', 'ul. Krzywa 145  42-400 Zawiercie', 12, 1200.48, 1);
INSERT INTO zlecenia VALUES (129, '2015-06-07 10:39:33.47104', '2015-07-19 10:39:33.47104', 6, 'Zygmunt Jabłoński', 'ul. Epopei 13  03-029 Warszawa', 28, 2512.89, 1);
INSERT INTO zlecenia VALUES (131, '2015-01-14 21:53:15.198561', '2015-02-25 21:53:15.198561', 6, 'Karina Sawicka', 'Pl. Szczepański 138  31-011 Kraków', 28, 2394.81, 1);
INSERT INTO zlecenia VALUES (132, '2015-03-03 18:59:58.540851', '2015-04-14 18:59:58.540851', 6, 'Weronika Borkowska', 'ul. Wyspowa 58  03-687 Warszawa', 28, 1017.21, 1);
INSERT INTO zlecenia VALUES (39, '2015-04-20 07:28:59.962506', '2015-06-01 07:28:59.962506', 6, 'Stefcia Dąbrowski', 'ul. Kłoczkowskiego Wacława 122  80-180 Gdańsk', 10, 1488.30, 1);
INSERT INTO zlecenia VALUES (41, '2015-09-02 09:37:51.178669', '2015-10-14 09:37:51.178669', 6, 'Joasia Majewska', 'ul. Hiacyntowa 143  04-908 Warszawa', 10, 1380.06, 1);
INSERT INTO zlecenia VALUES (42, '2015-02-11 14:17:18.717735', '2015-03-25 14:17:18.717735', 6, 'Hendrych Pawlak', 'ul. Weigla Ferdynanda 11  30-898 Kraków', 10, 1280.43, 1);
INSERT INTO zlecenia VALUES (43, '2015-09-11 06:31:56.620101', '2015-10-23 06:31:56.620101', 6, 'Longin Michalski', 'ul. Jazowa 132  31-214 Kraków', 10, 2477.22, 1);
INSERT INTO zlecenia VALUES (44, '2015-04-04 14:17:38.858603', '2015-05-16 14:17:38.858603', 6, 'Augustyn Michalski', 'ul. Złota 123  00-019 Warszawa', 11, 886.83, 1);
INSERT INTO zlecenia VALUES (45, '2015-11-13 18:03:09.054617', '2015-12-25 18:03:09.054617', 6, 'Augustyna Olszewska', 'ul. Ikara 82  81-197 Gdynia', 11, 707.25, 1);
INSERT INTO zlecenia VALUES (46, '2015-03-12 02:33:16.219361', '2015-04-23 02:33:16.219361', 6, 'Mieszko Kowalski', 'Al. I Armii Wojska Polskiego 50  22-100 Chełm', 11, 1011.06, 1);
INSERT INTO zlecenia VALUES (47, '2015-09-03 19:24:52.292275', '2015-10-15 19:24:52.292275', 6, 'Ludwik Maciejewski', 'ul. Stefanika Rastislawa Milana 117  03-133 Warszawa', 11, 3970.44, 1);
INSERT INTO zlecenia VALUES (48, '2015-03-01 11:45:22.737649', '2015-04-12 11:45:22.737649', 6, 'Klara Czarnecka', 'ul. Łazanowicka 66  03-089 Warszawa', 11, 1950.78, 1);
INSERT INTO zlecenia VALUES (49, '2015-05-09 06:39:22.925264', '2015-06-20 06:39:22.925264', 6, 'Lubomierz Symanski', 'ul. Okrąg 80  00-415 Warszawa', 12, 2484.60, 1);
INSERT INTO zlecenia VALUES (51, '2015-07-19 12:45:58.191879', '2015-08-30 12:45:58.191879', 6, 'Hendrych Pawlak', 'ul. Weigla Ferdynanda 11  30-898 Kraków', 12, 318.57, 1);
INSERT INTO zlecenia VALUES (169, '2016-11-18 06:39:43.475384', '2016-12-29 06:39:43.475384', 6, 'Kaja Gorska', 'Pl. Gałczyńskiego Konstantego Ildefonsa 103  70-488 Szczecin', 35, 1821.63, 1);
INSERT INTO zlecenia VALUES (172, '2016-08-07 10:27:50.598006', '2016-09-17 10:27:50.598006', 6, 'Zygmunt Jabłoński', 'ul. Epopei 13  03-029 Warszawa', 36, 1472.31, 1);
INSERT INTO zlecenia VALUES (173, '2016-03-23 14:18:48.9922', '2016-05-03 14:18:48.9922', 6, 'Jędrzej Nowak', 'ul. Bankowa 40  08-530 Dęblin', 36, 2083.62, 1);
INSERT INTO zlecenia VALUES (200, '2016-06-14 23:44:28.592298', '2016-07-25 23:44:28.592298', 7, 'Gabrysia Pawlak', 'ul. Gojawiczyńskiej Poli CHAR(13)  43-600 Jaworzno', 20, 1100.85, 1);
INSERT INTO zlecenia VALUES (178, '2016-07-19 08:58:38.21875', '2016-08-29 08:58:38.21875', 6, 'Jędrzej Borkowski', 'ul. Spartańska 10  02-637 Warszawa', 37, 1554.72, 1);
INSERT INTO zlecenia VALUES (179, '2016-08-07 01:18:02.095224', '2016-09-17 01:18:02.095224', 6, 'Beata Grabowska', 'ul. Astronautów 132  93-533 Łódź', 37, 1643.28, 1);
INSERT INTO zlecenia VALUES (181, '2016-04-19 16:36:17.394855', '2016-05-30 16:36:17.394855', 6, 'Zuzanna Jaworska', 'ul. Tarnogórska 122  03-679 Warszawa', 37, 2104.53, 1);
INSERT INTO zlecenia VALUES (182, '2016-05-27 19:12:25.199928', '2016-07-07 19:12:25.199928', 6, 'Hendrych Pawlak', 'ul. Weigla Ferdynanda 11  30-898 Kraków', 37, 2164.80, 1);
INSERT INTO zlecenia VALUES (184, '2016-05-12 01:24:22.92285', '2016-06-22 01:24:22.92285', 6, 'Krzyś Pawlak', 'ul. Legionów Polskich 78  41-310 Dąbrowa Górnicza', 38, 644.52, 1);
INSERT INTO zlecenia VALUES (187, '2016-11-09 05:52:29.807471', '2016-12-20 05:52:29.807471', 6, 'Radosława Wiśniewska', 'Al. Korfantego Wojciecha 149  40-005 Katowice', 38, 255.84, 1);
INSERT INTO zlecenia VALUES (188, '2016-10-02 11:43:44.794105', '2016-11-12 11:43:44.794105', 6, 'Korneli Michalski', 'ul. Kombatantów 76  71-809 Szczecin', 38, 1494.45, 1);
INSERT INTO zlecenia VALUES (191, '2016-04-09 09:33:34.647612', '2016-05-20 09:33:34.647612', 6, 'Drugi Borkowski', 'ul. Zamkowa 143  62-800 Kalisz', 39, 2071.32, 1);
INSERT INTO zlecenia VALUES (193, '2016-10-27 00:54:22.348026', '2016-12-07 00:54:22.348026', 6, 'Bogusława Michalska', 'Al. Bohaterów Warszawy 36  70-343 Szczecin', 39, 1382.52, 1);
INSERT INTO zlecenia VALUES (194, '2016-06-29 14:32:45.818962', '2016-08-09 14:32:45.818962', 6, 'Beata Grabowska', 'ul. Astronautów 132  93-533 Łódź', 39, 1644.51, 1);
INSERT INTO zlecenia VALUES (196, '2016-04-15 06:14:01.155285', '2016-05-26 06:14:01.155285', 6, 'Radosława Ostrowska', 'ul. Kobuza 134  02-841 Warszawa', 39, 1594.08, 1);
INSERT INTO zlecenia VALUES (197, '2016-09-24 17:05:23.603851', '2016-11-04 17:05:23.603851', 6, 'Jędrzej Nowak', 'ul. Bankowa 40  08-530 Dęblin', 39, 439.11, 1);
INSERT INTO zlecenia VALUES (199, '2016-06-20 14:02:33.33674', '2016-07-31 14:02:33.33674', 6, 'Lubomierz Symanski', 'ul. Okrąg 80  00-415 Warszawa', 39, 2306.25, 1);
INSERT INTO zlecenia VALUES (202, '2016-07-14 13:48:58.614222', '2016-08-24 13:48:58.614222', 6, 'Beatrycze Pawlak', 'ul. Oleandry 103  30-060 Kraków', 26, 1783.50, 1);
INSERT INTO zlecenia VALUES (72, '2015-08-22 13:19:00.180445', '2015-10-03 13:19:00.180445', 6, 'Sławomira Wiśniewska', 'ul. Małopolska 139  81-813 Sopot', 17, 275.52, 1);
INSERT INTO zlecenia VALUES (73, '2015-01-19 17:16:12.457704', '2015-03-02 17:16:12.457704', 6, 'Kazimiera Tomaszewska', 'ul. Pocztowa 24  48-100 Głubczyce', 17, 3327.15, 1);
INSERT INTO zlecenia VALUES (74, '2015-03-06 06:06:45.333669', '2015-04-17 06:06:45.333669', 6, 'Jędrzej Borkowski', 'ul. Spartańska 10  02-637 Warszawa', 17, 154.98, 1);
INSERT INTO zlecenia VALUES (105, '2015-05-13 16:05:13.610476', '2015-06-24 16:05:13.610476', 6, 'Zoja Dudek', 'ul. Kampinoska 66  85-770 Bydgoszcz', 23, 143.91, 1);
INSERT INTO zlecenia VALUES (168, '2016-10-16 16:25:40.355784', NULL, 5, 'Apolonia Tomaszewska', 'ul. Wołodyjowskiego Michała 34  20-627 Lublin', 35, 2462.46, 1);
INSERT INTO zlecenia VALUES (171, '2016-02-22 13:07:54.549374', NULL, 3, 'Ferdynand Kaczmarek', 'ul. Niedbalskiego Stanisława 128  61-422 Poznań', 35, 843.78, 1);
INSERT INTO zlecenia VALUES (170, '2016-04-20 09:16:45.598328', '2016-05-31 09:16:45.598328', 7, 'Kajetan Sokołowski', 'ul. Bolesława Chrobrego 144  42-500 Będzin', 35, 1195.56, 1);
INSERT INTO zlecenia VALUES (174, '2016-05-16 09:03:12.603099', '2016-06-26 09:03:12.603099', 7, 'Drugi Borkowski', 'ul. Zamkowa 143  62-800 Kalisz', 36, 1364.07, 1);
INSERT INTO zlecenia VALUES (175, '2016-08-14 11:10:29.279843', '2016-09-24 11:10:29.279843', 7, 'Wiesław Grabowski', 'ul. Generała Karcza Jana 148  30-394 Kraków', 36, 752.76, 1);
INSERT INTO zlecenia VALUES (167, '2016-11-12 15:24:48.203153', '2016-12-23 15:24:48.203153', 6, 'Karina Sawicka', 'Pl. Szczepański 138  31-011 Kraków', 34, 726.93, 1);


--
-- Name: magazyny_pkey; Type: CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

ALTER TABLE ONLY magazyny
    ADD CONSTRAINT magazyny_pkey PRIMARY KEY (numer);


--
-- Name: pozycja_pkey; Type: CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

ALTER TABLE ONLY pozycje
    ADD CONSTRAINT pozycja_pkey PRIMARY KEY (numer);


--
-- Name: pracownik_pesel_key; Type: CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

ALTER TABLE ONLY pracownicy
    ADD CONSTRAINT pracownik_pesel_key UNIQUE (pesel);


--
-- Name: pracownik_pkey; Type: CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

ALTER TABLE ONLY pracownicy
    ADD CONSTRAINT pracownik_pkey PRIMARY KEY (numer);


--
-- Name: stan_pkey; Type: CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

ALTER TABLE ONLY stany
    ADD CONSTRAINT stan_pkey PRIMARY KEY (numer);


--
-- Name: statusy_pkey; Type: CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

ALTER TABLE ONLY statusy
    ADD CONSTRAINT statusy_pkey PRIMARY KEY (numer);


--
-- Name: towar_pkey; Type: CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

ALTER TABLE ONLY towary
    ADD CONSTRAINT towar_pkey PRIMARY KEY (numer);


--
-- Name: umowy_pkey; Type: CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

ALTER TABLE ONLY umowy
    ADD CONSTRAINT umowy_pkey PRIMARY KEY (numer);


--
-- Name: zlecenie_pkey; Type: CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

ALTER TABLE ONLY zlecenia
    ADD CONSTRAINT zlecenie_pkey PRIMARY KEY (numer);


--
-- Name: mag_towar_idx; Type: INDEX; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE UNIQUE INDEX mag_towar_idx ON stany USING btree (magazyn, towar);


--
-- Name: poz_zlec_idx; Type: INDEX; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE INDEX poz_zlec_idx ON pozycje USING btree (zlecenie, numer);


--
-- Name: prac_datroz_num_idx; Type: INDEX; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE INDEX prac_datroz_num_idx ON pracownicy USING btree (data_rozpoczecia, numer);


--
-- Name: prac_datzak_num_idx; Type: INDEX; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE INDEX prac_datzak_num_idx ON pracownicy USING btree (data_zakonczenia, numer);


--
-- Name: tow_akt_idx; Type: INDEX; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE INDEX tow_akt_idx ON towary USING btree (aktywny, numer);


--
-- Name: zlec_mg_stat_utw_idx; Type: INDEX; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE INDEX zlec_mg_stat_utw_idx ON zlecenia USING btree (magazyn, status, data_utworzenia);


--
-- Name: zlec_mg_stat_zak_idx; Type: INDEX; Schema: public; Owner: mn161323_Krawiec1; Tablespace: 
--

CREATE INDEX zlec_mg_stat_zak_idx ON zlecenia USING btree (magazyn, status, data_zakonczenia);


--
-- Name: pozycja_towar_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY pozycje
    ADD CONSTRAINT pozycja_towar_fkey FOREIGN KEY (towar) REFERENCES towary(numer);


--
-- Name: pozycja_zlecenie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY pozycje
    ADD CONSTRAINT pozycja_zlecenie_fkey FOREIGN KEY (zlecenie) REFERENCES zlecenia(numer);


--
-- Name: pracownicy_umowa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY pracownicy
    ADD CONSTRAINT pracownicy_umowa_fkey FOREIGN KEY (umowa) REFERENCES umowy(numer);


--
-- Name: stany_magazyn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY stany
    ADD CONSTRAINT stany_magazyn_fkey FOREIGN KEY (magazyn) REFERENCES magazyny(numer);


--
-- Name: stany_towar_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY stany
    ADD CONSTRAINT stany_towar_fkey FOREIGN KEY (towar) REFERENCES towary(numer);


--
-- Name: zlecenia_magazyn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY zlecenia
    ADD CONSTRAINT zlecenia_magazyn_fkey FOREIGN KEY (magazyn) REFERENCES magazyny(numer);


--
-- Name: zlecenie_pracownik_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY zlecenia
    ADD CONSTRAINT zlecenie_pracownik_fkey FOREIGN KEY (pracownik) REFERENCES pracownicy(numer);


--
-- Name: zlecenie_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mn161323_Krawiec1
--

ALTER TABLE ONLY zlecenia
    ADD CONSTRAINT zlecenie_status_fkey FOREIGN KEY (status) REFERENCES statusy(numer);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: magazyny; Type: ACL; Schema: public; Owner: mn161323_Krawiec1
--

REVOKE ALL ON TABLE magazyny FROM PUBLIC;
REVOKE ALL ON TABLE magazyny FROM "mn161323_Krawiec1";
GRANT ALL ON TABLE magazyny TO "mn161323_Krawiec1";


--
-- Name: pozycje; Type: ACL; Schema: public; Owner: mn161323_Krawiec1
--

REVOKE ALL ON TABLE pozycje FROM PUBLIC;
REVOKE ALL ON TABLE pozycje FROM "mn161323_Krawiec1";
GRANT ALL ON TABLE pozycje TO "mn161323_Krawiec1";


--
-- Name: pracownicy; Type: ACL; Schema: public; Owner: mn161323_Krawiec1
--

REVOKE ALL ON TABLE pracownicy FROM PUBLIC;
REVOKE ALL ON TABLE pracownicy FROM "mn161323_Krawiec1";
GRANT ALL ON TABLE pracownicy TO "mn161323_Krawiec1";


--
-- Name: stany; Type: ACL; Schema: public; Owner: mn161323_Krawiec1
--

REVOKE ALL ON TABLE stany FROM PUBLIC;
REVOKE ALL ON TABLE stany FROM "mn161323_Krawiec1";
GRANT ALL ON TABLE stany TO "mn161323_Krawiec1";


--
-- Name: statusy; Type: ACL; Schema: public; Owner: mn161323_Krawiec1
--

REVOKE ALL ON TABLE statusy FROM PUBLIC;
REVOKE ALL ON TABLE statusy FROM "mn161323_Krawiec1";
GRANT ALL ON TABLE statusy TO "mn161323_Krawiec1";


--
-- Name: towary; Type: ACL; Schema: public; Owner: mn161323_Krawiec1
--

REVOKE ALL ON TABLE towary FROM PUBLIC;
REVOKE ALL ON TABLE towary FROM "mn161323_Krawiec1";
GRANT ALL ON TABLE towary TO "mn161323_Krawiec1";


--
-- Name: umowy; Type: ACL; Schema: public; Owner: mn161323_Krawiec1
--

REVOKE ALL ON TABLE umowy FROM PUBLIC;
REVOKE ALL ON TABLE umowy FROM "mn161323_Krawiec1";
GRANT ALL ON TABLE umowy TO "mn161323_Krawiec1";


--
-- Name: zlecenia; Type: ACL; Schema: public; Owner: mn161323_Krawiec1
--

REVOKE ALL ON TABLE zlecenia FROM PUBLIC;
REVOKE ALL ON TABLE zlecenia FROM "mn161323_Krawiec1";
GRANT ALL ON TABLE zlecenia TO "mn161323_Krawiec1";


--
-- PostgreSQL database dump complete
--

