--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 10.4

-- Started on 2018-09-19 10:40:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 17163)
-- Name: caracteristica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.caracteristica (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    nombre text,
    descripcion text
);


ALTER TABLE public.caracteristica OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 17169)
-- Name: caracteristica_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.caracteristica_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.caracteristica_id_seq OWNER TO postgres;

--
-- TOC entry 2267 (class 0 OID 0)
-- Dependencies: 182
-- Name: caracteristica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.caracteristica_id_seq OWNED BY public.caracteristica.id;


--
-- TOC entry 183 (class 1259 OID 17171)
-- Name: chapter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chapter (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    nombre text,
    descripcion text,
    id_chapter real,
    id_game real
);


ALTER TABLE public.chapter OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 17177)
-- Name: chapter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.chapter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chapter_id_seq OWNER TO postgres;

--
-- TOC entry 2268 (class 0 OID 0)
-- Dependencies: 184
-- Name: chapter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.chapter_id_seq OWNED BY public.chapter.id;


--
-- TOC entry 185 (class 1259 OID 17179)
-- Name: escuela_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.escuela_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.escuela_id_seq OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 17181)
-- Name: escuela; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.escuela (
    id integer DEFAULT nextval('public.escuela_id_seq'::regclass) NOT NULL,
    nombre text,
    descripcion text
);


ALTER TABLE public.escuela OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 17188)
-- Name: escuela_room_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.escuela_room_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.escuela_room_id_seq OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 17190)
-- Name: escuela_room; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.escuela_room (
    id integer DEFAULT nextval('public.escuela_room_id_seq'::regclass) NOT NULL,
    id_escuela real,
    id_room real,
    descripcion text
);


ALTER TABLE public.escuela_room OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 17197)
-- Name: game; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    nombre text,
    descripcion text
);


ALTER TABLE public.game OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 17203)
-- Name: game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_id_seq OWNER TO postgres;

--
-- TOC entry 2269 (class 0 OID 0)
-- Dependencies: 190
-- Name: game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_id_seq OWNED BY public.game.id;


--
-- TOC entry 191 (class 1259 OID 17205)
-- Name: jugador_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jugador_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jugador_id_seq OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 17207)
-- Name: jugador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jugador (
    id integer DEFAULT nextval('public.jugador_id_seq'::regclass) NOT NULL,
    avatar text,
    nombre text,
    id_room real,
    puntos real,
    id_registro real,
    id_escuela real
);


ALTER TABLE public.jugador OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 17214)
-- Name: learn_jugador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.learn_jugador (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    id_jugador real,
    id_learning real,
    fecha_inicio date,
    fecha_fin date,
    tiempo_juego real,
    estado text,
    num_play real
);


ALTER TABLE public.learn_jugador OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 17220)
-- Name: learn_jugador_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.learn_jugador_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learn_jugador_id_seq OWNER TO postgres;

--
-- TOC entry 2270 (class 0 OID 0)
-- Dependencies: 194
-- Name: learn_jugador_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.learn_jugador_id_seq OWNED BY public.learn_jugador.id;


--
-- TOC entry 195 (class 1259 OID 17222)
-- Name: learning; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.learning (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    nombre text,
    descripcion text,
    id_chapter real,
    duracion real
);


ALTER TABLE public.learning OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 17228)
-- Name: learning_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.learning_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_id_seq OWNER TO postgres;

--
-- TOC entry 2271 (class 0 OID 0)
-- Dependencies: 196
-- Name: learning_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.learning_id_seq OWNED BY public.learning.id;


--
-- TOC entry 197 (class 1259 OID 17230)
-- Name: metrica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.metrica (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    nombre text,
    proposito text,
    formula text,
    interpretacion text,
    id_metrica real
);


ALTER TABLE public.metrica OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 17236)
-- Name: metrica_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.metrica_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.metrica_id_seq OWNER TO postgres;

--
-- TOC entry 2272 (class 0 OID 0)
-- Dependencies: 198
-- Name: metrica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.metrica_id_seq OWNED BY public.metrica.id;


--
-- TOC entry 199 (class 1259 OID 17238)
-- Name: nivel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nivel (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    nombre text,
    descripcion text,
    id_chapter real,
    id_learning real
);


ALTER TABLE public.nivel OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 17244)
-- Name: nivel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nivel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nivel_id_seq OWNER TO postgres;

--
-- TOC entry 2273 (class 0 OID 0)
-- Dependencies: 200
-- Name: nivel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nivel_id_seq OWNED BY public.nivel.id;


--
-- TOC entry 201 (class 1259 OID 17246)
-- Name: nivel_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nivel_usuario (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    id_usuario real,
    id_nivel real,
    fecha_inicio date,
    fecha_fin date,
    tiempo_juego real,
    estado text,
    correctas real,
    incorrectas real,
    intentos real
);


ALTER TABLE public.nivel_usuario OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17252)
-- Name: nivel_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nivel_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nivel_usuario_id_seq OWNER TO postgres;

--
-- TOC entry 2274 (class 0 OID 0)
-- Dependencies: 202
-- Name: nivel_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nivel_usuario_id_seq OWNED BY public.nivel_usuario.id;


--
-- TOC entry 203 (class 1259 OID 17254)
-- Name: room; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.room (
    id integer NOT NULL,
    nombre text,
    descripcion text,
    tipo text,
    edad real,
    id_juego real
);


ALTER TABLE public.room OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17260)
-- Name: room_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.room_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.room_id_seq OWNER TO postgres;

--
-- TOC entry 2275 (class 0 OID 0)
-- Dependencies: 204
-- Name: room_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.room_id_seq OWNED BY public.room.id;


--
-- TOC entry 205 (class 1259 OID 17262)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    "emailAddress" text,
    password text,
    "fullName" text,
    "isSuperAdmin" boolean,
    "passwordResetToken" text,
    "passwordResetTokenExpiresAt" real,
    "stripeCustomerId" text,
    "hasBillingCard" boolean,
    "billingCardBrand" text,
    "billingCardLast4" text,
    "billingCardExpMonth" text,
    "billingCardExpYear" text,
    "emailProofToken" text,
    "emailProofTokenExpiresAt" real,
    "emailStatus" text,
    "emailChangeCandidate" text,
    "tosAcceptedByIp" text,
    "lastSeenAt" real
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17268)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- TOC entry 2276 (class 0 OID 0)
-- Dependencies: 206
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- TOC entry 207 (class 1259 OID 17270)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL,
    correo text,
    password text,
    nombre text,
    "passwordResetToken" text,
    "passwordResetTokenExpiresAt" real,
    "emailProofToken" text,
    "emailProofTokenExpiresAt" real,
    "emailStatus" text,
    "emailChangeCandidate" text,
    "tosAcceptedByIp" text,
    "isSuperAdmin" boolean
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17276)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 2277 (class 0 OID 0)
-- Dependencies: 208
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 2073 (class 2604 OID 17278)
-- Name: caracteristica id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristica ALTER COLUMN id SET DEFAULT nextval('public.caracteristica_id_seq'::regclass);


--
-- TOC entry 2074 (class 2604 OID 17279)
-- Name: chapter id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chapter ALTER COLUMN id SET DEFAULT nextval('public.chapter_id_seq'::regclass);


--
-- TOC entry 2077 (class 2604 OID 17280)
-- Name: game id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game ALTER COLUMN id SET DEFAULT nextval('public.game_id_seq'::regclass);


--
-- TOC entry 2079 (class 2604 OID 17281)
-- Name: learn_jugador id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learn_jugador ALTER COLUMN id SET DEFAULT nextval('public.learn_jugador_id_seq'::regclass);


--
-- TOC entry 2080 (class 2604 OID 17282)
-- Name: learning id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning ALTER COLUMN id SET DEFAULT nextval('public.learning_id_seq'::regclass);


--
-- TOC entry 2081 (class 2604 OID 17283)
-- Name: metrica id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metrica ALTER COLUMN id SET DEFAULT nextval('public.metrica_id_seq'::regclass);


--
-- TOC entry 2082 (class 2604 OID 17284)
-- Name: nivel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nivel ALTER COLUMN id SET DEFAULT nextval('public.nivel_id_seq'::regclass);


--
-- TOC entry 2083 (class 2604 OID 17285)
-- Name: nivel_usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nivel_usuario ALTER COLUMN id SET DEFAULT nextval('public.nivel_usuario_id_seq'::regclass);


--
-- TOC entry 2084 (class 2604 OID 17286)
-- Name: room id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room ALTER COLUMN id SET DEFAULT nextval('public.room_id_seq'::regclass);


--
-- TOC entry 2085 (class 2604 OID 17287)
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- TOC entry 2086 (class 2604 OID 17288)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 2233 (class 0 OID 17163)
-- Dependencies: 181
-- Data for Name: caracteristica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.caracteristica ("createdAt", "updatedAt", id, nombre, descripcion) FROM stdin;
1534726928373	1534726928373	1	Eficiencia	Grado con el que pueden lograr las metas propuestas invirtiendo una cantidad apropiada de recursos en relación a la efectividad lograda.
1534726928373	1534726928373	2	Efectividad	Grado en el que pueden lograr las metas propuestas con precisión \ny completitud.
1534726928373	1534726928373	3	Flexibilidad	Grado con el que se pueden variar las condiciones por prueba.
1534726928373	1534726928373	4	Satisfacción	Grado con el que los jugadores se sienten bien al terminar una meta.
1534726928373	1534726928373	5	Learning	Grado con el que a los jugadores les fue útil la parte de la enseñanza previa.
\.


--
-- TOC entry 2235 (class 0 OID 17171)
-- Dependencies: 183
-- Data for Name: chapter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chapter ("createdAt", "updatedAt", id, nombre, descripcion, id_chapter, id_game) FROM stdin;
\N	\N	18	MiPais	prueba1	0	10
\N	\N	19	DeberesYDerechos	prueba	0	10
\N	\N	21	Armandomochila	armamochila	0	10
\N	\N	26	Los Seres	bla bla BLA	0	14
\N	\N	27	MiEscuela	desc1	0	10
\N	\N	28	ArmandoBotiquin	desc1	0	15
\.


--
-- TOC entry 2238 (class 0 OID 17181)
-- Dependencies: 186
-- Data for Name: escuela; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.escuela (id, nombre, descripcion) FROM stdin;
1	ES001	Escuela 1
2	ES002	Escuela 2
\.


--
-- TOC entry 2240 (class 0 OID 17190)
-- Dependencies: 188
-- Data for Name: escuela_room; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.escuela_room (id, id_escuela, id_room, descripcion) FROM stdin;
1	1	4	\N
2	1	5	\N
3	2	4	\N
4	1	6	\N
5	1	7	\N
\.


--
-- TOC entry 2241 (class 0 OID 17197)
-- Dependencies: 189
-- Data for Name: game; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.game ("createdAt", "updatedAt", id, nombre, descripcion) FROM stdin;
\N	\N	10	EntornoSocialEscuela	prueba1
\N	\N	14	En mi Entorno Natural	bla bla
\.


--
-- TOC entry 2244 (class 0 OID 17207)
-- Dependencies: 192
-- Data for Name: jugador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jugador (id, avatar, nombre, id_room, puntos, id_registro, id_escuela) FROM stdin;
61	mestizo	Isabela	4	15	61	1
63	mestizo	MARCOS	4	0	63	1
62	mestizo	Lionel	4	9	62	1
79	mestizo	ELIZABETH	5	0	79	1
64	mestizo	Elmi	4	13	64	1
101	afro-h	Jose	4	29	101	1
116	mestizo	WILLIAMREYES	4	0	116	1
65	mestizo	Isabela	5	12	65	1
81	mestizo	CARO	4	6	81	1
67	mestizo	Mia	4	2	67	1
80	mestizo	yo	4	0	80	1
69	mestizo	Daniela	5	2	69	1
113	mestizo	C41C41	4	0	113	1
68	mestizo	ELIAS	6	21	68	1
102	mestizo-m	Yomy	4	58	102	1
51	mestizo	Paula	4	40	51	1
103	afro-m	Prix	4	6	103	1
71	mestizo	WILLIAMREYES 	6	15	71	1
52	mestizo	FRANCISCO	4	17	52	1
82	mestizo	yeyi	4	18	82	1
49	mestizo	MIA	4	0	49	1
57	mestizo	Samanta	4	18	57	1
70	mestizo	Elie	5	3	70	1
83	asiatico1	PRUEBADIANA	4	0	83	1
84	mestizo	DIANA	4	0	84	1
50	mestizo	ELIAS	4	0	50	1
85	mestizo	DIAN2	4	0	85	1
104	afro-h	Ivan	4	0	104	1
73	mestizo	NATHALY	4	3	73	1
72	mestizo	Santiago	6	34	72	1
86	mestizo	DIAN4	4	3	86	1
74	mestizo	Lionel	5	3	74	1
75	mestizo	Franchesca	4	3	75	1
87	mestizo	DIAN6	4	0	87	1
54	mestizo	Santiago	4	15	54	1
60	mestizo	FERNANDA	4	15	60	1
76	mestizo	Emilio	5	3	76	1
131	afro-h	Tomas	4	0	131	1
138	indigena-m	Gthjbj	4	0	0	1
53	mestizo	 Franchesca	4	15	53	1
59	mestizo	Kiara	4	17	59	1
56	mestizo	Daniela	4	14	56	1
140	mestizo-m	Hillary	4	13	140	1
118	mestizo	EXACASTRO	4	0	118	1
78	mestizo	Elizabeth\rES001	5	41	78	1
55	mestizo	NATHALI	4	13	55	1
77	mestizo	Santiago	5	3	77	1
58	mestizo	Eliel	4	14	58	1
114	mestizo	C2C2C2	4	8	114	1
93	indigena-h	Solomeo	4	0	93	1
120	afro-m	Morticia	4	0	120	1
105	mestizo-m	Asli	4	41	105	1
94	caucasico-h	Fernando	4	42	94	1
95	afro-h	Pruebajoel	4	0	95	1
142	mestizo-h	Hola	4	11	142	1
96	afro-h	Prueba	4	0	96	1
106	caucasico-h	Diego	4	-4	106	1
97	mestizo-h	Abel	4	26	97	1
98	indigena-h	Jean	4	0	98	1
122	indigena-h	Lalo	4	0	122	1
99	mestizo-m	Cristy	4	37	99	1
124	indigena-m	Yuleisi	4	0	124	1
100	afro-h	Walter	4	6	100	1
126	mestizo	WILLObeta	4	0	126	1
144	indigena-h	Xx	4	0	144	1
107	mestizo	MARCOSantonio	4	0	107	1
108	mestizo	EXABETA1	4	0	108	1
128	mestizo	WILLObeta3	4	0	128	1
109	mestizo	PRUBET2	4	0	109	1
110	mestizo	PRUBETA1	4	0	110	1
111	mestizo	PRUBETA3	4	3	111	1
112	mestizo	C4C4C4	4	9	112	1
130	mestizo	ALFACLIC	4	18	130	1
132	indigena-m	Maria	4	0	132	1
133	indigena-h	Juan	4	0	133	1
134	caucasico-m	Sofy	4	0	134	1
135	afro-h	Gonzalo	4	0	135	1
136	mestizo-h	Hugo	4	0	136	1
137	caucasico-h	Bob	4	-1	137	1
139	indigena-m	Gthjbj	4	0	0	1
115	mestizo	Examen	4	17	115	1
117	mestizo	CASTROEXA	4	0	117	1
119	mestizo-h	Nicolas	4	0	119	1
121	caucasico-m	Clara	4	0	121	1
141	indigena-h	Yeyi	4	6	141	1
123	afro-h	Roberto	4	6	123	1
125	mestizo-h	Claudio	4	2	125	1
143	mestizo-h	Sjhd	4	0	143	1
127	mestizo	WILLObeta2	4	0	127	1
129	mestizo	ALFA01APK	4	9	129	1
\.


--
-- TOC entry 2245 (class 0 OID 17214)
-- Dependencies: 193
-- Data for Name: learn_jugador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.learn_jugador ("createdAt", "updatedAt", id, id_jugador, id_learning, fecha_inicio, fecha_fin, tiempo_juego, estado, num_play) FROM stdin;
\N	\N	86	123	18	2018-09-13	2018-09-13	17	abandonado	1
\N	\N	87	124	18	2018-09-13	2018-09-13	20	abandonado	1
\N	\N	88	125	18	2018-09-13	2018-09-13	25	abandonado	1
\N	\N	89	126	14	2018-08-13	2018-08-13	1	Completado	2
\N	\N	90	127	14	2018-08-13	2018-08-13	4	Completado	1
\N	\N	91	127	19	2018-08-13	2018-08-13	1	Completado	1
\N	\N	92	127	20	2018-08-13	2018-08-13	0	Completado	1
\N	\N	93	127	15	2018-08-13	2018-08-13	4	abandonado	1
\N	\N	94	128	14	2018-08-13	2018-08-13	0	Completado	1
\N	\N	95	128	19	2018-08-13	2018-08-13	0	Completado	1
\N	\N	96	128	20	2018-08-13	2018-08-13	0	Completado	1
\N	\N	97	128	15	2018-08-13	2018-08-13	0	abandonado	1
\N	\N	98	129	14	2018-08-13	2018-08-13	8	Completado	2
\N	\N	99	129	20	2018-08-13	2018-08-13	1	Completado	1
\N	\N	100	129	19	2018-08-13	2018-08-13	2	Completado	1
\N	\N	101	130	14	2018-08-13	2018-08-13	1	Completado	1
\N	\N	102	130	20	2018-08-13	2018-08-13	2	Completado	3
\N	\N	103	130	19	2018-08-13	2018-08-13	0	Completado	1
\N	\N	104	132	18	2018-09-15	2018-09-15	13	abandonado	1
\N	\N	105	136	18	2018-09-15	2018-09-15	2	abandonado	1
\N	\N	106	137	18	2018-09-15	2018-09-15	17	abandonado	1
\N	\N	107	140	18	2018-09-17	2018-09-17	207	completado	1
\N	\N	108	141	18	2018-09-17	2018-09-17	2	abandonado	2
\N	\N	109	142	18	2018-09-17	2018-09-17	5	abandonado	2
\N	\N	110	143	18	2018-09-17	2018-09-17	2	abandonado	1
\N	\N	41	78	13	2018-08-04	2018-08-04	1	Completado	1
\N	\N	42	80	14	2018-08-04	2018-08-04	1	Completado	1
\N	\N	43	80	15	2018-08-04	2018-08-04	2	Completado	2
\N	\N	44	80	13	2018-08-04	2018-08-04	5	Completado	1
\N	\N	45	79	14	2018-08-04	2018-08-04	17	Completado	1
\N	\N	46	82	14	2018-08-05	2018-08-05	5	Completado	3
\N	\N	47	82	15	2018-08-05	2018-08-05	9	Completado	1
\N	\N	50	94	18	2018-09-07	2018-09-07	21	abandonado	3
\N	\N	51	95	18	2018-09-07	2018-09-07	3	abandonado	1
\N	\N	52	96	18	2018-09-07	2018-09-07	2	abandonado	1
\N	\N	53	97	18	2018-09-07	2018-09-07	7	abandonado	2
\N	\N	54	98	18	2018-09-07	2018-09-07	21	abandonado	1
\N	\N	55	99	18	2018-09-07	2018-09-07	59	abandonado	1
\N	\N	56	100	18	2018-09-07	2018-09-07	50	abandonado	1
\N	\N	57	101	18	2018-09-07	2018-09-07	207	completado	1
\N	\N	58	102	18	2018-09-08	2018-09-08	200	completado	1
\N	\N	59	103	18	2018-09-09	2018-09-09	3	abandonado	2
\N	\N	60	104	18	2018-09-09	2018-09-09	15	abandonado	1
\N	\N	61	106	18	2018-09-11	2018-09-11	203	completado	1
\N	\N	62	107	15	2018-08-11	2018-08-11	13	Completado	1
\N	\N	63	109	14	2018-08-11	2018-08-11	0	Completado	1
\N	\N	64	109	15	2018-08-11	2018-08-11	1	Completado	1
\N	\N	65	110	19	2018-08-11	2018-08-11	1	Completado	1
\N	\N	66	111	20	2018-08-11	2018-08-11	2	Completado	1
\N	\N	67	112	14	2018-08-11	2018-08-11	2	Completado	1
\N	\N	68	112	15	2018-08-11	2018-08-11	2	Completado	1
\N	\N	69	112	19	2018-08-11	2018-08-11	3	Completado	1
\N	\N	70	112	20	2018-08-11	2018-08-11	1	Completado	1
\N	\N	71	113	20	2018-08-11	2018-08-11	0	Completado	1
\N	\N	72	113	19	2018-08-11	2018-08-11	0	Completado	1
\N	\N	73	113	14	2018-08-11	2018-08-11	1	Completado	1
\N	\N	74	114	14	2018-08-11	2018-08-11	2	Completado	1
\N	\N	75	114	15	2018-08-11	2018-08-11	1	Completado	1
\N	\N	76	114	19	2018-08-11	2018-08-11	1	Completado	1
\N	\N	77	114	20	2018-08-11	2018-08-11	1	Completado	1
\N	\N	78	115	14	2018-08-12	2018-08-12	0	Completado	4
\N	\N	79	115	15	2018-08-12	2018-08-12	1	Completado	3
\N	\N	81	115	20	2018-08-12	2018-08-12	0	Completado	4
\N	\N	80	115	19	2018-08-12	2018-08-12	98	Completado	9
\N	\N	82	116	15	2018-08-12	2018-08-12	12	Completado	2
\N	\N	83	119	18	2018-09-13	2018-09-13	18	abandonado	1
\N	\N	84	120	18	2018-09-13	2018-09-13	7	abandonado	1
\N	\N	85	122	18	2018-09-13	2018-09-13	10	abandonado	2
\.


--
-- TOC entry 2247 (class 0 OID 17222)
-- Dependencies: 195
-- Data for Name: learning; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.learning ("createdAt", "updatedAt", id, nombre, descripcion, id_chapter, duracion) FROM stdin;
\N	\N	14	MiPais	desc3	18	205
\N	\N	15	Deberes	desc	19	121
\N	\N	13	Escuela	desc3	21	245
\N	\N	18	Historia-Seres	Oscar le explica a los niños la diferencia entre seres vivos y no vivos	26	207
\N	\N	19	PartedelaEscuela	desc3	27	245
\N	\N	20	Botiquin	desc3	28	245
\.


--
-- TOC entry 2249 (class 0 OID 17230)
-- Dependencies: 197
-- Data for Name: metrica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.metrica ("createdAt", "updatedAt", id, nombre, proposito, formula, interpretacion, id_metrica) FROM stdin;
1534726928373	1534726928373	1	Tiempo de meta	¿Cuánto tiempo requiere el jugador para lograr la meta?	tiempo_juego_ok	Tiempo de juego en el nivel completado	1
1534726928373	1534726928373	2	Eficiencia de meta por respuestas correctas	¿Cómo de eficientes son los usuarios en el nivel?	correctas_ok / tiempo_juego	Respuestas correctas en un nivel completado vs tiempo que tomó completarlo	1
1534726928373	1534726928373	3	Eficiencia de meta por respuestas incorrectas	¿Qué tan poco eficientes son los usuarios en el nivel?	incorrectas_ok / tiempo_juego	Respuestas incorrectas en un nivel completado vs tiempo que tomó completarlo	1
1534726928373	1534726928373	4	Eficiencia relativa a los mejores resultados de jugadores	¿Qué porcentaje de jugadores lo hicieron bastante rápido?	jugadores_OK / total_jugadores	Número de mejores jugadores vs total de jugadores	1
1534726928373	1534726928373	5	Eficiencia relativa a los jugadores con dificultades en el nivel	¿Qué porcentaje de jugadores tuvieron dificultades?	jugadores_BAD / total_jugadores	Número de jugadores que tuvieron dificultades vs total de jugadores	1
1534726928373	1534726928373	6	Efectividad de la meta	¿Qué porcentaje de metas y retos se han alcanzado correctamente?	correctas / (correctas + incorrectas)	Relacion del total de respuestas correctas vs el total de intentos	2
1534726928373	1534726928373	7	Completitud de la meta	¿Qué porcentaje de metas y retos se han completado?	n_completos / n_user	Numero de usuarios que completaron vs numero de usuarios totales	2
1534726928373	1534726928373	8	Frecuencia de intentos para llegar a la meta	¿Cuál ha sido la frecuencia de intentos?	intentos_ok / correctas_ok	Numero de intentos en niveles completados vs numero de r. correctas en niveles completados	2
1534726928373	1534726928373	9	Flexibilidad por metas	¿Qué porcentaje de metas se logran utilizando distintas formas de interacción diferentes a las usadas por defecto?	correctas / (correctas + incorrectas)	Número r. correctas en rooms por defecto menos el total de r. correctas por el resto de rooms	3
1534726928373	1534726928373	10	Flexibilidad por tiempo	¿Qué porcentaje de tiempo se logra utilizando distintas formas de interacción diferentes a las usadas por defecto?	t_rooms / t_total	Tiempo en rooms por defecto menos el tiempo total del resto de rooms	3
1534726928373	1534726928373	11	Preferencias de uso con respecto del nivel vs el resto de niveles	¿Qué porcentaje de usuarios prefieren el nivel frente a otro?	n_completos, n_usuarios, id_nivel, niveles	Tiempo en el nivel actual menos el total de tiempo del resto de niveles	4
\.


--
-- TOC entry 2251 (class 0 OID 17238)
-- Dependencies: 199
-- Data for Name: nivel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nivel ("createdAt", "updatedAt", id, nombre, descripcion, id_chapter, id_learning) FROM stdin;
\N	\N	23	PintalaBandera	prueba3	18	0
\N	\N	24	DeberesyDerechos	prueba	19	0
\N	\N	25	Armandolamochila	prueba2	21	0
\N	\N	28	SeresActivity1	Sigue las instrucciones que te da Loly	26	18
\N	\N	29	SeresActivity2	Sigue las instrucciones que te da Loly	26	18
\N	\N	30	SeresActivity4	Sigue las instrucciones que te da Loly	26	18
\N	\N	31	SeresActivity3	Sigue las instrucciones que te da Loly	26	18
\N	\N	32	mochila1	prueba2	21	0
\N	\N	33	PolitoEnfermo	prueba2	29	0
\.


--
-- TOC entry 2253 (class 0 OID 17246)
-- Dependencies: 201
-- Data for Name: nivel_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nivel_usuario ("createdAt", "updatedAt", id, id_usuario, id_nivel, fecha_inicio, fecha_fin, tiempo_juego, estado, correctas, incorrectas, intentos) FROM stdin;
\N	\N	57	57	23	2018-08-04	2018-08-04	2	completado	1	0	2
\N	\N	56	55	23	2018-08-04	2018-08-04	34	completado	5	2	2
\N	\N	59	59	23	2018-08-04	2018-08-04	2	completado	1	0	2
\N	\N	58	58	23	2018-08-04	2018-08-04	50	completado	5	1	1
\N	\N	61	61	23	2018-08-04	2018-08-04	25	completado	5	0	1
\N	\N	91	94	30	2018-09-07	2018-09-07	35	completado	5	3	3
\N	\N	60	60	23	2018-08-04	2018-08-04	1	completado	1	0	2
\N	\N	63	64	23	2018-08-04	2018-08-04	22	completado	5	2	1
\N	\N	92	94	31	2018-09-07	2018-09-07	35	completado	5	3	3
\N	\N	89	94	28	2018-09-07	2018-09-07	35	completado	5	3	3
\N	\N	90	94	29	2018-09-07	2018-09-07	35	completado	5	3	3
\N	\N	93	96	28	2018-09-07	2018-09-07	4	abandonado	0	0	1
\N	\N	94	97	28	2018-09-07	2018-09-07	61	completado	5	4	1
\N	\N	95	97	30	2018-09-07	2018-09-07	30	completado	5	0	1
\N	\N	96	99	28	2018-09-07	2018-09-07	36	completado	5	0	1
\N	\N	97	99	30	2018-09-07	2018-09-07	64	completado	5	6	1
\N	\N	98	99	31	2018-09-07	2018-09-07	51	completado	5	2	1
\N	\N	99	100	29	2018-09-07	2018-09-07	11	abandonado	1	0	1
\N	\N	100	100	31	2018-09-07	2018-09-07	9	abandonado	1	0	1
\N	\N	101	101	29	2018-09-07	2018-09-07	145	completado	5	0	2
\N	\N	102	101	28	2018-09-07	2018-09-07	145	completado	5	0	2
\N	\N	103	101	31	2018-09-07	2018-09-07	145	completado	5	0	2
\N	\N	104	101	30	2018-09-07	2018-09-07	43	completado	5	1	1
\N	\N	105	102	28	2018-09-08	2018-09-08	40	completado	5	0	1
\N	\N	106	102	30	2018-09-08	2018-09-08	36	completado	5	2	1
\N	\N	107	102	31	2018-09-08	2018-09-08	38	completado	5	0	1
\N	\N	62	62	23	2018-08-04	2018-08-04	190	completado	5	6	1
\N	\N	108	102	29	2018-09-08	2018-09-08	38	completado	5	0	1
\N	\N	65	67	24	2018-08-04	2018-08-04	3	completado	1	1	2
\N	\N	109	103	29	2018-09-09	2018-09-09	23	abandonado	2	0	1
\N	\N	74	73	24	2018-08-04	2018-08-04	2	completado	1	0	2
\N	\N	75	72	23	2018-08-04	2018-08-04	11	completado	5	2	1
\N	\N	76	74	24	2018-08-04	2018-08-04	0	completado	1	0	2
\N	\N	77	75	24	2018-08-04	2018-08-04	2	completado	1	0	2
\N	\N	70	52	24	2018-08-04	2018-08-04	3	completado	1	0	2
\N	\N	71	57	24	2018-08-04	2018-08-04	2	completado	1	0	2
\N	\N	72	70	24	2018-08-04	2018-08-04	1	completado	1	0	2
\N	\N	73	72	24	2018-08-04	2018-08-04	18	completado	7	0	2
\N	\N	78	60	24	2018-08-04	2018-08-04	1	completado	1	0	2
\N	\N	79	76	24	2018-08-04	2018-08-04	1	completado	1	0	2
\N	\N	51	51	23	2018-08-04	2018-08-04	16	completado	10	1	2
\N	\N	50	50	23	2018-08-04	2018-08-04	1	completado	0	0	3
\N	\N	53	53	23	2018-08-04	2018-08-04	16	completado	5	0	2
\N	\N	52	52	23	2018-08-04	2018-08-04	3	completado	1	0	2
\N	\N	55	56	23	2018-08-04	2018-08-04	17	completado	5	1	1
\N	\N	54	54	23	2018-08-04	2018-08-04	21	completado	5	0	1
\N	\N	64	65	24	2018-08-04	2018-08-04	19	completado	7	9	2
\N	\N	67	69	24	2018-08-04	2018-08-04	0	completado	1	1	2
\N	\N	66	68	24	2018-08-04	2018-08-04	32	completado	7	0	2
\N	\N	69	71	23	2018-08-04	2018-08-04	5	completado	5	0	2
\N	\N	68	51	24	2018-08-04	2018-08-04	16	completado	10	1	2
\N	\N	81	77	24	2018-08-04	2018-08-04	0	completado	1	0	3
\N	\N	80	59	24	2018-08-04	2018-08-04	2	completado	1	0	2
\N	\N	85	80	25	2018-08-04	2018-08-04	8	completado	0	0	1
\N	\N	84	81	24	2018-08-04	2018-08-04	11	completado	1	0	2
\N	\N	83	81	23	2018-08-04	2018-08-04	11	completado	1	0	2
\N	\N	82	78	25	2018-08-04	2018-08-04	77	completado	17	10	1
\N	\N	114	106	28	2018-09-11	2018-09-11	53	completado	5	18	1
\N	\N	115	106	29	2018-09-11	2018-09-11	30	abandonado	0	1	1
\N	\N	86	82	26	2018-08-05	2018-08-05	4	Completado	0	0	3
\N	\N	87	82	23	2018-08-05	2018-08-05	4	Completado	0	0	3
\N	\N	88	86	27	2018-08-05	2018-08-05	4	abandonado	1	0	1
\N	\N	116	109	23	2018-08-11	2018-08-11	1	abandonado	0	0	1
\N	\N	117	110	32	2018-08-11	2018-08-11	1	abandonado	0	0	1
\N	\N	118	111	33	2018-08-11	2018-08-11	3	abandonado	0	1	2
\N	\N	119	111	32	2018-08-11	2018-08-11	3	abandonado	0	1	2
\N	\N	120	111	23	2018-08-11	2018-08-11	4	abandonado	1	2	1
\N	\N	121	112	23	2018-08-11	2018-08-11	4	abandonado	1	0	1
\N	\N	122	112	32	2018-08-11	2018-08-11	3	abandonado	2	0	1
\N	\N	123	112	33	2018-08-11	2018-08-11	1	abandonado	0	0	1
\N	\N	124	113	33	2018-08-11	2018-08-11	2	abandonado	0	0	1
\N	\N	110	105	31	2018-09-11	2018-09-11	36	abandonado	5	3	3
\N	\N	111	105	28	2018-09-11	2018-09-11	36	abandonado	5	3	3
\N	\N	112	105	30	2018-09-11	2018-09-11	36	abandonado	5	3	3
\N	\N	113	105	29	2018-09-11	2018-09-11	36	abandonado	5	3	3
\N	\N	125	113	32	2018-08-11	2018-08-11	0	abandonado	0	0	1
\N	\N	126	113	23	2018-08-11	2018-08-11	2	abandonado	0	0	1
\N	\N	127	114	23	2018-08-11	2018-08-11	7	abandonado	3	0	1
\N	\N	128	114	32	2018-08-11	2018-08-11	2	abandonado	0	1	1
\N	\N	129	114	33	2018-08-11	2018-08-11	1	abandonado	0	0	1
\N	\N	133	117	32	2018-08-12	2018-08-12	18	null	0	0	2
\N	\N	152	137	30	2018-09-15	2018-09-15	3	abandonado	0	1	1
\N	\N	135	122	28	2018-09-13	2018-09-13	4	abandonado	0	0	3
\N	\N	137	123	28	2018-09-13	2018-09-13	15	abandonado	2	2	1
\N	\N	138	123	31	2018-09-13	2018-09-13	6	abandonado	1	1	1
\N	\N	140	127	23	2018-08-13	2018-08-13	1	abandonado	0	0	3
\N	\N	141	127	32	2018-08-13	2018-08-13	2	abandonado	0	0	1
\N	\N	142	127	33	2018-08-13	2018-08-13	2	abandonado	0	0	1
\N	\N	153	140	28	2018-09-17	2018-09-17	76	completado	5	2	1
\N	\N	154	141	28	2018-09-17	2018-09-17	61	abandonado	0	0	4
\N	\N	157	142	28	2018-09-17	2018-09-17	44	abandonado	3	4	1
\N	\N	149	130	23	2018-08-13	2018-08-13	13	completado	4	0	4
\N	\N	150	130	33	2018-08-13	2018-08-13	13	completado	4	0	4
\N	\N	151	130	32	2018-08-13	2018-08-13	0	abandonado	0	0	1
\N	\N	155	141	29	2018-09-17	2018-09-17	61	abandonado	0	0	4
\N	\N	156	141	31	2018-09-17	2018-09-17	61	abandonado	0	0	4
\N	\N	158	142	30	2018-09-17	2018-09-17	63	completado	5	9	1
\N	\N	130	115	23	2018-08-12	2018-08-12	2	abandonado	0	0	39
\N	\N	131	115	32	2018-08-12	2018-08-12	2	abandonado	0	0	39
\N	\N	132	115	33	2018-08-12	2018-08-12	2	abandonado	0	0	39
\N	\N	134	118	32	2018-08-12	2018-08-12	1	abandonado	0	0	6
\N	\N	136	122	29	2018-09-13	2018-09-13	4	abandonado	0	0	3
\N	\N	139	125	29	2018-09-13	2018-09-13	7	abandonado	1	1	1
\N	\N	143	128	23	2018-08-13	2018-08-13	1	abandonado	0	0	1
\N	\N	144	128	32	2018-08-13	2018-08-13	1	abandonado	0	0	1
\N	\N	145	128	33	2018-08-13	2018-08-13	1	abandonado	0	0	1
\N	\N	146	129	23	2018-08-13	2018-08-13	1	abandonado	0	0	3
\N	\N	147	129	33	2018-08-13	2018-08-13	1	abandonado	0	0	3
\N	\N	148	129	32	2018-08-13	2018-08-13	1	abandonado	0	0	3
\.


--
-- TOC entry 2255 (class 0 OID 17254)
-- Dependencies: 203
-- Data for Name: room; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.room (id, nombre, descripcion, tipo, edad, id_juego) FROM stdin;
4	R1	Sala por Default	Default	8	10
5	R2	Sin guía	Sin guía	6	10
6	R3	Dra	Sin guia	6	10
7	R4	R4	Guia	6	10
\.


--
-- TOC entry 2257 (class 0 OID 17262)
-- Dependencies: 205
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" ("createdAt", "updatedAt", id, "emailAddress", password, "fullName", "isSuperAdmin", "passwordResetToken", "passwordResetTokenExpiresAt", "stripeCustomerId", "hasBillingCard", "billingCardBrand", "billingCardLast4", "billingCardExpMonth", "billingCardExpYear", "emailProofToken", "emailProofTokenExpiresAt", "emailStatus", "emailChangeCandidate", "tosAcceptedByIp", "lastSeenAt") FROM stdin;
\.


--
-- TOC entry 2259 (class 0 OID 17270)
-- Dependencies: 207
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios ("createdAt", "updatedAt", id, correo, password, nombre, "passwordResetToken", "passwordResetTokenExpiresAt", "emailProofToken", "emailProofTokenExpiresAt", "emailStatus", "emailChangeCandidate", "tosAcceptedByIp", "isSuperAdmin") FROM stdin;
1534785393237	1534785393237	4	mididashboard@gmail.com	$2a$10$2r3TrNcup5qxjFFEcnOqDe3hT2t3wA4pvp4P7R4AGcX8ioKJ1vUti	MIDI		0		0	confirmed			t
1534726928373	1534726928373	1	mmendozaquelal@gmail.com	$2a$10$2YbqvSq0N3AY0FfG9TBlGO1oOPYGQ6ZnSbc9z/A5I0YkivE8Rd2Cu	Marco		0		0	confirmed			f
\N	\N	8	marcoxavibsc@gmail.com	$2a$10$30D5kqeZa.wYJr9uXEGfS.KOhyMKSXihs.IWRjzXOvmz0kGdt2tsS	Marco		0		0	confirmed			f
\N	\N	5	maxamend@espol.edu.ec	$2a$10$KUb9VB8GgYsnQMFEX23yPOcf5LD20xRKbUU1xIfO7Qs/cFOVWEk3G	Marco		0		0	confirmed			f
\N	\N	9	nsolorza@espol.edu.ec	$2a$10$93brUNAl3.zxwXBuhbtceOgZ.Z6pLTAYBinNnAER8GdOAag4YXSKe	Nayeth Solorzano		0		0	confirmed			f
\.


--
-- TOC entry 2278 (class 0 OID 0)
-- Dependencies: 182
-- Name: caracteristica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.caracteristica_id_seq', 5, true);


--
-- TOC entry 2279 (class 0 OID 0)
-- Dependencies: 184
-- Name: chapter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.chapter_id_seq', 29, true);


--
-- TOC entry 2280 (class 0 OID 0)
-- Dependencies: 185
-- Name: escuela_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.escuela_id_seq', 2, true);


--
-- TOC entry 2281 (class 0 OID 0)
-- Dependencies: 187
-- Name: escuela_room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.escuela_room_id_seq', 5, true);


--
-- TOC entry 2282 (class 0 OID 0)
-- Dependencies: 190
-- Name: game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_id_seq', 15, true);


--
-- TOC entry 2283 (class 0 OID 0)
-- Dependencies: 191
-- Name: jugador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jugador_id_seq', 144, true);


--
-- TOC entry 2284 (class 0 OID 0)
-- Dependencies: 194
-- Name: learn_jugador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.learn_jugador_id_seq', 110, true);


--
-- TOC entry 2285 (class 0 OID 0)
-- Dependencies: 196
-- Name: learning_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.learning_id_seq', 20, true);


--
-- TOC entry 2286 (class 0 OID 0)
-- Dependencies: 198
-- Name: metrica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.metrica_id_seq', 13, true);


--
-- TOC entry 2287 (class 0 OID 0)
-- Dependencies: 200
-- Name: nivel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nivel_id_seq', 33, true);


--
-- TOC entry 2288 (class 0 OID 0)
-- Dependencies: 202
-- Name: nivel_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nivel_usuario_id_seq', 158, true);


--
-- TOC entry 2289 (class 0 OID 0)
-- Dependencies: 204
-- Name: room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.room_id_seq', 7, true);


--
-- TOC entry 2290 (class 0 OID 0)
-- Dependencies: 206
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 1, false);


--
-- TOC entry 2291 (class 0 OID 0)
-- Dependencies: 208
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 9, true);


--
-- TOC entry 2088 (class 2606 OID 17290)
-- Name: caracteristica caracteristica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caracteristica
    ADD CONSTRAINT caracteristica_pkey PRIMARY KEY (id);


--
-- TOC entry 2090 (class 2606 OID 17292)
-- Name: chapter chapter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chapter
    ADD CONSTRAINT chapter_pkey PRIMARY KEY (id);


--
-- TOC entry 2092 (class 2606 OID 17294)
-- Name: escuela escuela_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.escuela
    ADD CONSTRAINT escuela_pkey PRIMARY KEY (id);


--
-- TOC entry 2094 (class 2606 OID 17296)
-- Name: escuela_room escuela_room_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.escuela_room
    ADD CONSTRAINT escuela_room_pkey PRIMARY KEY (id);


--
-- TOC entry 2096 (class 2606 OID 17298)
-- Name: game game_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_pkey PRIMARY KEY (id);


--
-- TOC entry 2098 (class 2606 OID 17300)
-- Name: jugador jugador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jugador
    ADD CONSTRAINT jugador_pkey PRIMARY KEY (id);


--
-- TOC entry 2100 (class 2606 OID 17302)
-- Name: learn_jugador learn_jugador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learn_jugador
    ADD CONSTRAINT learn_jugador_pkey PRIMARY KEY (id);


--
-- TOC entry 2102 (class 2606 OID 17304)
-- Name: learning learning_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning
    ADD CONSTRAINT learning_pkey PRIMARY KEY (id);


--
-- TOC entry 2104 (class 2606 OID 17306)
-- Name: metrica metrica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metrica
    ADD CONSTRAINT metrica_pkey PRIMARY KEY (id);


--
-- TOC entry 2106 (class 2606 OID 17308)
-- Name: nivel nivel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nivel
    ADD CONSTRAINT nivel_pkey PRIMARY KEY (id);


--
-- TOC entry 2108 (class 2606 OID 17310)
-- Name: nivel_usuario nivel_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nivel_usuario
    ADD CONSTRAINT nivel_usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 2110 (class 2606 OID 17312)
-- Name: room room_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);


--
-- TOC entry 2112 (class 2606 OID 17314)
-- Name: user user_emailAddress_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "user_emailAddress_key" UNIQUE ("emailAddress");


--
-- TOC entry 2114 (class 2606 OID 17316)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 2116 (class 2606 OID 17318)
-- Name: usuarios usuarios_correo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correo_key UNIQUE (correo);


--
-- TOC entry 2118 (class 2606 OID 17320)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


-- Completed on 2018-09-19 10:40:18

--
-- PostgreSQL database dump complete
--
