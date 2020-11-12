--
-- PostgreSQL database dump
--

-- Dumped from database version 10.14 (Ubuntu 10.14-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.14 (Ubuntu 10.14-0ubuntu0.18.04.1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: a_o_c_s; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.a_o_c_s (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    content text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: a_o_c_s_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.a_o_c_s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: a_o_c_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.a_o_c_s_id_seq OWNED BY public.a_o_c_s.id;


--
-- Name: abouts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.abouts (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    excerpt character varying(255),
    content text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: abouts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.abouts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.abouts_id_seq OWNED BY public.abouts.id;


--
-- Name: aoc_names; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.aoc_names (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: aoc_names_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.aoc_names_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: aoc_names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.aoc_names_id_seq OWNED BY public.aoc_names.id;


--
-- Name: banners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.banners (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    banner character varying(255) NOT NULL,
    status boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: banners_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.banners_id_seq OWNED BY public.banners.id;


--
-- Name: collaborations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.collaborations (
    id bigint NOT NULL,
    logo character varying(255) NOT NULL,
    org_name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    url character varying(255) DEFAULT 'http://www.mcu.edu.kh/'::character varying
);


--
-- Name: collaborations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.collaborations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: collaborations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.collaborations_id_seq OWNED BY public.collaborations.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT now() NOT NULL
);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: galleries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.galleries (
    id bigint NOT NULL,
    thumb character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: galleries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.galleries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: galleries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.galleries_id_seq OWNED BY public.galleries.id;


--
-- Name: gallery_albums; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gallery_albums (
    id bigint NOT NULL,
    gallery_id bigint NOT NULL,
    path character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: gallery_albums_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.gallery_albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gallery_albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.gallery_albums_id_seq OWNED BY public.gallery_albums.id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.majors (
    id bigint NOT NULL,
    a_o_c_id bigint NOT NULL,
    major character varying(255) NOT NULL,
    content text DEFAULT 'content'::text NOT NULL,
    curriculum text DEFAULT 'content'::text NOT NULL,
    schedule text DEFAULT 'content'::text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: majors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.majors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: majors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.majors_id_seq OWNED BY public.majors.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.news (
    id bigint NOT NULL,
    user_id bigint DEFAULT (1)::bigint NOT NULL,
    category character varying(255) NOT NULL,
    thumb character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    is_publish boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: oauth_access_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.oauth_access_tokens (
    id character varying(100) NOT NULL,
    user_id bigint,
    client_id integer NOT NULL,
    name character varying(255),
    scopes text,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone
);


--
-- Name: oauth_auth_codes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.oauth_auth_codes (
    id character varying(100) NOT NULL,
    user_id bigint NOT NULL,
    client_id integer NOT NULL,
    scopes text,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);


--
-- Name: oauth_clients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.oauth_clients (
    id integer NOT NULL,
    user_id bigint,
    name character varying(255) NOT NULL,
    secret character varying(100),
    redirect text NOT NULL,
    personal_access_client boolean NOT NULL,
    password_client boolean NOT NULL,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: oauth_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.oauth_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oauth_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.oauth_clients_id_seq OWNED BY public.oauth_clients.id;


--
-- Name: oauth_personal_access_clients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.oauth_personal_access_clients (
    id integer NOT NULL,
    client_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.oauth_personal_access_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.oauth_personal_access_clients_id_seq OWNED BY public.oauth_personal_access_clients.id;


--
-- Name: oauth_refresh_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.oauth_refresh_tokens (
    id character varying(100) NOT NULL,
    access_token_id character varying(100) NOT NULL,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


--
-- Name: projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects (
    id bigint NOT NULL,
    logo character varying(255) NOT NULL,
    project_name character varying(255) NOT NULL,
    project_from character varying(255) NOT NULL,
    description text NOT NULL,
    project_status character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    url character varying(255) DEFAULT 'http://www.mcu.edu.kh/'::character varying
);


--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(30) NOT NULL,
    profile character varying(100) DEFAULT 'images/placeholder/placeholder.png'::character varying NOT NULL,
    role character varying(20) DEFAULT 'user'::character varying NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    status boolean DEFAULT true NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: videos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.videos (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: videos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.videos_id_seq OWNED BY public.videos.id;


--
-- Name: a_o_c_s id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.a_o_c_s ALTER COLUMN id SET DEFAULT nextval('public.a_o_c_s_id_seq'::regclass);


--
-- Name: abouts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.abouts ALTER COLUMN id SET DEFAULT nextval('public.abouts_id_seq'::regclass);


--
-- Name: aoc_names id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aoc_names ALTER COLUMN id SET DEFAULT nextval('public.aoc_names_id_seq'::regclass);


--
-- Name: banners id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.banners ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);


--
-- Name: collaborations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.collaborations ALTER COLUMN id SET DEFAULT nextval('public.collaborations_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: galleries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.galleries ALTER COLUMN id SET DEFAULT nextval('public.galleries_id_seq'::regclass);


--
-- Name: gallery_albums id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gallery_albums ALTER COLUMN id SET DEFAULT nextval('public.gallery_albums_id_seq'::regclass);


--
-- Name: majors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.majors ALTER COLUMN id SET DEFAULT nextval('public.majors_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: oauth_clients id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_clients_id_seq'::regclass);


--
-- Name: oauth_personal_access_clients id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_personal_access_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_personal_access_clients_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: videos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.videos ALTER COLUMN id SET DEFAULT nextval('public.videos_id_seq'::regclass);


--
-- Name: 17015; Type: BLOB; Schema: -; Owner: -
--

SELECT pg_catalog.lo_create('17015');


--
-- Name: 17018; Type: BLOB; Schema: -; Owner: -
--

SELECT pg_catalog.lo_create('17018');


--
-- Data for Name: a_o_c_s; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.a_o_c_s (id, name, content, created_at, updated_at) FROM stdin;
12	Students Association	<p>Students Association</p>\n<p>&nbsp;</p>\n<h3 style="text-align: center;"><span style="color: #ff0000;">Not Available</span></h3>	2020-01-09 00:35:28	2020-03-07 07:24:12
5	Faculty of Agriculture and Food Processing	<h1 style="text-align: center;">Not Available</h1>	2020-01-09 00:26:06	2020-03-05 07:01:02
14	Academic Affairs Office	<h4>1.&nbsp; Structure</h4>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e25236972ec5-1579492201.jpg" alt="" width="100%" /></p>	2020-01-20 03:50:21	2020-01-20 03:50:21
10	Account Office	<p>Account Office</p>\n<h3 style="text-align: center;"><span style="color: #ff0000;">Not Available</span></h3>	2020-01-09 00:34:14	2020-03-07 07:24:20
2	Faculty of Science and Technology	<p style="font-family: content;">&nbsp; &nbsp; &nbsp;</p>\n<h1 style="font-family: content; text-align: center;">&nbsp;</h1>\n<h1 style="font-family: content; text-align: center;">មហាវិទ្យាល័យវិទ្យាសាស្ត្រនិងបច្ចេកវិទ្យា</h1>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p style="font-family: content;"><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e411496ba59d-1581323414.jpg" alt="" width="70%" /></p>\n<p style="font-family: content;">&nbsp;</p>\n<p style="font-family: content;">&nbsp;</p>\n<p style="font-family: content;">&nbsp; &nbsp; &nbsp; សម័យ​ទំនើប​កម្ម​នៃ​ការ​រីក​ចំរើន​ផ្នែក​បច្ចេកវិទ្យា បាន​ធ្វើ​អោយ​សេដ្ឋកិច្ច​ជាតិ និង​សហគ្រាស​​ទូទៅ​មាន​ការ​រីក​ចំរើន​យ៉ាង​ខ្លាំង​នៅ​លើ​ពិភព​លោក​យើង​នេះ។</p>\n<p>ជាក់​ស្ដែង​គ្រប់​វិស័យ​ទាំងអស់​ ក្នុង​ពេល​បច្ចុប្បន្ន​នេះ​ចាំ​បាច់​ត្រូវ​តែ​ ប្រព័ន្ធ​បច្ចេកវិទ្យា​ព័ត៌មានវិទ្យា​ (​កុំព្យូទរ័​) ​ពុំ​អាច​ខាន​បាន ទាំង​ក្នុង​គេហដ្ឋាន អង្គភាព​ខ្នាត​តូច រហូត​ដល់​ក្រុម​ហ៊ុន​ពហុជាតិ នៅ​ក្នុង​កិច្ចការ​រដ្ឋបាល​ ក្រសួង មន្ទីរ ស្ថាប័នរដ្ឋ អង្គការ ឯកជន នានា​។ល។​ ដែល​ធ្វើ​អោយ​មាន​តម្រូវ​ការ​នូវ​ធនធានមនុស្ស ផ្នែក​ព័ត៌មានវិទ្យា​ជា​ចាំ​បាច់​ដើម្បី​ជួយ​សម្រួល​ដល់​ការងារ​លើ​គ្រប់​វិស័យ​ទាំងអស់។</p>\n<p>ក្នុង​នាម​ជា​ព្រឹទ្ធបុរស​ ព្រឹទ្ធបុរស​រង ប្រធាន​ដេប៉ាតឺម៉ង់ អនុប្រធាន​ដេប៉ាតឺម៉ង់​នៅ​ក្នុង​មហាវិទ្យាល័យ វិទ្យាសាស្ត្រ និង​បច្ចេកវិទ្យា យើង​ខ្ញុំ ទាំង​អស់​គ្នា​មាន​សេចក្ដី​រីករាយ​យ៉ាង​ខ្លាំង​ដែល​​មាន​​​ឱកាស​បាន​ចូល​រួម​លើក​ស្ទួយ​និង​ការអភិវឌ្ឍន៍​សង្គមជាតិ​តាម​រយៈ​ការ​បណ្ដុះ​បណ្ដាល​ធនធាន​មនុស្ស​និង​ការ​រៀប​ចំ​កម្មវិធីសិក្សា​សម្រាប់​មហាវិទ្យាល័យ​ទាំង​ថ្នាក់​បរិញ្ញាបត្រ​និង​ថ្នាក់​បរិញ្ញាបត្រ​រង គ្រប់​ដេប៉ាតឺម៉ង់​នៅ​ក្នុង​មហាវិទ្យាល័យ​វិទ្យាសាស្ត្រ និង​បច្ចេកវិទ្យា​។​​​ សៀវភៅ​នេះ​ នឹង​បង្ហាញ​អំពី​គម្រោង​កម្មវិធី​សិក្សា របស់​មហាវិទ្យាល័យ​វិទ្យាសាស្ត្រ​​​និង​បច្ចេកវិទ្យា ដែល​មាន​សារ​សំខាន់​ក្នុង​ការ​ចង្អុល​បង្ហាញ​អំពី​ចំណុច​សំខាន់​ដែល​ត្រូវ​សិក្សា​​​​ ដំណើរ​ការសិក្សា របស់​និស្សិត ពេលវេលា របៀប​នៃ​ការ​បង្រៀន​របស់​គ្រូ​ និង​របៀប​នៃ​ការ​វាយ​តម្លៃ​និស្សិត​។​ គម្រោង​កម្ម​វិធី​នេះ​ត្រូវ​បាន​រៀបចំ​សម្រាប់​ការ​សិក្សា​រយៈ​ពេល​៣​ឆ្នាំ គឺ​ចាប់ពី​ឆ្នាំ​ទី​២ រហូត​ដល់​ឆ្នាំ​ទី​៤​នៃ​ថ្នាក់​បរិញ្ញាបត្រ និង​មាន​រយៈ​ពេល​២​ឆ្នាំ​សម្រាប់​ថ្នាក់​បរិញ្ញាបត្រ​រង តាម​ប្រព័ន្ធ​ក្រេឌីត (១​ក្រេឌីត=១​៥​ម៉ោង)។</p>\n<p>ការសិក្សា​នៅ​ក្នុង​មហាវិទ្យាល័យ​វិទ្យាសាស្ត្រ​ និង​បច្ចេកវិទ្យា ពិត​ជា​បាន​ទទួល​នូវ​ចំណេះដឹង​ផ្នែក​វិទ្យាសាស្ត្រ​ជាក់​ជា​ប្រាកដ​។</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2 style="text-align: center;"><strong>សេចក្ដីផ្ដើម</strong></h2>\n<p>&nbsp;</p>\n<p>​&nbsp; &nbsp; សាកលវិទ្យាល័យ​មានជ័យ​ ជា​សាកលវិទ្យាល័យ​មួយ​ស្ថិត​នៅ​ភាគ​ពាយ័ព្យ​នៃ​ប្រទេស​កម្ពុជា​ដែល​មាន​ទីតាំង​សង្កាត់​ទឹកថ្លា ក្រុង​សិរីសោភ័ណ ខេត្ត​ បន្ទាយ​មានជ័យ ។</p>\n<p>ក្រោម​ការ​ដឹក​នាំ​ដ៏​ឈ្លាស​វៃ​របស់​ប្រមុខ​រាជរដ្ឋាភិបាល​កម្ពុជា ដែល​មាន​សម្ដេច​អគ្គ​មហា​សេនាបតី​តេ​ជោ​ ហ៊ុន សែន នាយក​រដ្ឋមន្ត្រី​នៃ​រាជរដ្ឋាភិបាល​កម្ពុជា​។ សាកលវិទ្យាល័យ​ មានជ័យ​ ជា​គ្រឹះ​ស្ថាន​សាធារណៈ​ របស់​រដ្ឋ​ដែល​ស្ថិតនៅ​ក្រោម ​ការ​ដឹក​នាំ​របស់​ក្រសួង​អប់រំ យុវជន និង​កីឡា ​បាន​ចាប់​បដិសន្ធិ​ឡើង ក្រោម​ការ​ផ្ដួចផ្ដើម និង​ចំណាយ​ថវិកា​ផ្ទាល់​របស់​ ឯកឧត្ដម​ នាយ​ឧត្ដម​សេនីយ៍ ផ្កាយ​មាស​៤ ​កែ គឹម​យ៉ាន​​ ឧបនាយករដ្ឋមន្ត្រី និង​លោកជំទាវ ឧកញ៉ា​ ម៉ៅ ម៉ា​ល័យ​ នឹង​ថ្នាក់​ដឹកនាំ​ជាន់ខ្ពស់ ព្រមទាំង​សប្បុរស​ជន​ជា​ច្រើន​ជួយ​ឧបត្ថម្ភ​គាំទ្រ​ថវិកា​សម្ភារ​និង​ស្មារតី ​ក្នុង​គោលបំណង​ជួយ​រួម​ចំណែក​កាត់​បន្ថយ​ភាព​ក្រីក្រ ដើម្បី​ជួយ​កសាង​សាកលវិទ្យាល័យ​ជ័យ​ និង​អភិវឌ្ឍន៍​ប្រទេស​ជាតិ​ទាំងមូល​​។</p>\n<p>នៅ ថ្ងៃ ទី ០​៤ ខែ មេសា ឆ្នាំ ២​០​០​៨ សាកលវិទ្យាល័យ មានជ័យ​ ត្រូវ​បាន​សម្ពោធ​ ដាក់ អោយ​ប្រើប្រាស់​ក្រោម​ធិបតី​ភាព​ដ៏​ខ្ពង់​ខ្ពស់​របស់​សម្ដេច​អគ្គ​មហា​សេនា​បតី​តេជោ ហ៊ុន សែន នាយក​រដ្ឋ​មន្ត្រី​នៃ​រាជរដ្ឋាភិបាល​កម្ពុជា ដែល​មាន​អគារ​សិក្សា​មួយ​ខ្នង​កម្ពស់​០​៣​ជាន់ មាន​បន្ទប់​សិក្សា​ធំ​ទូលាយ​ចំនួន ៣​៦​បន្ទប់ ​ដែល​បាន​បំពាក់​ទៅ​ដោយ​សម្ភារ​សិក្សា​គ្រប់គ្រាន់ មាន​សាល​ប្រជុំ ០​១ យ៉ាង​ធំ​ព្រម​ទាំង​មាន​អគារ សិក្សា​សម្រាប់​ដេប៉ាតឺម៉ង់​សុខាភិបាល ០​១​ខ្នង អគារ​បណ្ណាល័យ ០​១​ខ្នង អគារ​ស្នាក់​នៅ​របស់​សាស្ត្រាចារ្យ​០​១​ខ្នង និង​អគារ​ស្នាក់​នៅ​របស់​និស្សិត​០​២​ខ្នង​។</p>\n<p>មហាវិទ្យាល័យ វិទ្យាសាស្ត្រ និង​បច្ចេកវិទ្យា គឺ​ជា​មហាវិទ្យាល័យ​មួយ​ក្នុង​ចំណោម​​&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; មហា​វិទ្យាល័យ​ទាំង​៥​ដែល​បាន​ចំណុះ​អោយ​សាកលវិទ្យាល័យ​មាន​ជ័យ​។</p>\n<p>មហាវិទ្យាល័យ​វិទ្យាសាស្ត្រ​ និង​បច្ចេកវិទ្យា​នឹង​ខិតខំ​ប្រឹងប្រែង​ផ្ទេរ​វិជ្ជា​មូលដ្ឋាន​ទ្រឹស្ដី​ និង​ជំនាញ​វិជ្ជាជីវៈ​ទៅ​ឲ្យ​​និស្សិត​ដើម្បី​ក្លាយ ​ជា​អ្នក​ដែល​មាន​សមត្ថភាព​ខ្ពស់​ទាំង​ចំណេះដឹង ជំនាញ សីលធម៌ គំនិតច្នៃប្រឌិត​ គំនិត​បង្កើត​ថ្មី និង​លក្ខណ​សម្បត្តិ​ប្រកប​ដោយ​គុណភាព​ខ្ពស់​សម្រាប់​ចូលរួម​ក្នុង​ការងារ​ស្រាវជ្រាវ​ និង​អភិវឌ្ឍន៍​សេដ្ឋកិច្ច​សង្គម​កម្ពុជា​ប្រកប​ដោយ​ចិរភាព​នៅ​ក្នុង​បរិបទ​សាកល​ភាវូបនីយកម្ម​ ។</p>\n<h2>&nbsp;</h2>\n<h2 style="text-align: center;"><strong>ទស្សនវិស័យ</strong></h2>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; មហាវិទ្យាល័យវិទ្យាសាស្ត្រ និងបច្ចេកវិទ្យា នឹងក្លាយជាមហាវិទ្យាល័យ​ដែលឈាន​មុខ​ក្នុងការ​បណ្តុះបណ្តា​ធនធានមនុស្សប្រកបដោយគុណភាព និងប្រសិទ្ធភាព ដើម្បី​ចូលរួមចំណែងក្នុង​ការអភិវឌ្ឍន៍ប្រទេសជាតិ។</p>\n<h2>&nbsp;</h2>\n<h2 style="text-align: center;"><strong>បេសកកម្ម&nbsp;&nbsp; </strong>&nbsp;&nbsp;</h2>\n<h2>&nbsp;&nbsp;</h2>\n<p>​&nbsp; &nbsp; មហាវិទ្យាល័យ​វិទ្យាសាស្ត្រ​ និង​បច្ចេកវិទ្យា មាន​បេសកកម្ម​ដើម្បី​បណ្ដុះបណ្ដាល​ធនធាន​មនុស្ស​ផ្នែក​បច្ចេកវិទ្យា​ប្រកប​ដោយ​គុណភាព​ខ្ពស់​ដើម្បី​មាន​សមត្ថភាព​គ្រប់គ្រាន់​ក្នុង​គ្រប់គ្រង​លើ​ការអភិវឌ្ឍន៍​ និង​ការស្រាវជ្រាវ​នានា​ក្នុង​សង្គម​ពេល​បច្ចុប្បន្ន​ និង​អនាគត ។</p>\n<h2>&nbsp;</h2>\n<h2 style="text-align: center;"><strong>គោលបំណង</strong></h2>\n<p>&nbsp;</p>\n<p>-ដើម្បី​ក្លាយ​ខ្លួន​ទៅ​ជា​អ្នក​បច្ចេកវិទ្យា​ដ៏​ចំណាន</p>\n<p>-ដើម្បី​ក្លាយ​ខ្លួន​ទៅ​ជា​អ្នក​ដឹក​នាំ​ល្អ​ សម​ជា​មនុស្ស​សម័យ​ទំនើប</p>\n<p>-ដើម្បី​មាន​ឱកាស​ងាយ​ស្រួល​ក្នុង​ការ​ស្វែង​រក​ការងារ​ធ្វើ</p>\n<p>- ដើម្បី​ក្លាយ​ខ្លួន​ជា​សាស្ត្រាចារ្យ បង្រៀន​ផ្នែក​ព័ត៌មានវិទ្យា</p>\n<p>- ដើម្បី​ក្លាយ​ខ្លួន​ជា​អ្នក​សរសេរ​កម្មវិធី​ក្នុង​កុំព្យូទ័រ​ និង​គ្រប់គ្រង​ទិន្នន័យ</p>\n<p>-ដើម្បី​កិត្តិយស​ផ្ទាល់​ខ្លួន សង្គម​គ្រួសារ និង​សង្គម​ជាតិ</p>\n<h2>&nbsp;</h2>\n<h2 style="text-align: center;"><strong>ផែនការ​ជា​យុទ្ធសាស្ត្រ</strong></h2>\n<p>&nbsp;</p>\n<p>-ផ្ដល់​ឲ្យ​និស្សិត​នូវ​មូលដ្ឋាន​សម្ភារ​ដើម្បី​ស្រាវជ្រាវ​ជំនាញ​ផ្នែក​វិទ្យាសាស្ត្រ​ល្អ​បំផុត ។</p>\n<p>-ធានា​ផ្ដល់​ជូន​នូវ​សាស្ត្រាចារ្យ​ជាតិ​ និង​បរទេស​ប្រកប​ដោយ​គុណភាព និង​សមត្ថភាព​ខ្ពស់​&nbsp;&nbsp;&nbsp;&nbsp; ទាំង​ការ​បង្រៀន​ និង​ការងារ​ស្រាវជ្រាវ ។</p>\n<p>-ខិតខំ​ធ្វើ​ការ​ផ្សព្វផ្សាយ​ដល់​សាធារណ​ជន​ឲ្យ​យល់​ច្បាស់​ពី​សារសំខាន់​ និង​ផលប្រយោជន៍​</p>\n<p>-បំពាក់​នូវ​សម្ភារ​ឲ្យ​បាន​គ្រប់គ្រាន់​ដើម្បី​ការងារ​សិក្សា​ និង​ការស្រាវជ្រាវ​របស់​និស្សិត</p>\n<p>-ធ្វើ​ការ​ទំនាក់ទំនង​ជាមួយ​សាកលវិទ្យាល័យ​នានា​ទាំង​នៅ​ក្នុងស្រុក និង​បរទេស</p>\n<p>-ផ្ដល់​ការ​បណ្ដុះបណ្ដាល​បន្ថែម​ដល់​សាស្ត្រាចារ្យ​ និង​អាហារូបករណ៍​សិក្សា​នៅ​បរទេស</p>\n<p>-ផ្ដល់​ការ​លើក​ទឹក​ចិត្ត​ដល់​សាស្ត្រាចារ្យ​ដែល​មាន​ស្នាដៃ​ក្នុង​ការ​បង្រៀន និង​ការងារ​ល្អ</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<hr />\n<h4 style="text-align: center;"><span style="color: #339966;">Get in touch with use by&nbsp;</span></h4>\n<p>&nbsp;</p>\n<h6 style="text-align: center;">Facebook Page: <a title="Go to Facebook page" href="https://web.facebook.com/mcu.edu.kh/" target="_blank" rel="noopener">MCU MeanChey University</a>&nbsp; &nbsp;</h6>\n<h6 style="text-align: center;">YouTube Channel: <a title="YouTube" href="https://www.youtube.com/channel/UCs9PeMaTI75W6PvGz7_HOSg?view_as=subscriber" target="_blank" rel="noopener">Mean Chey University</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h6>\n<h6 style="text-align: center;"><span style="color: #626262;" data-darkreader-inline-color=""><span style="font-family: Times New Roman, serif;">Email: </span></span><span style="color: #000080;" data-darkreader-inline-color=""><span style="font-family: Times New Roman, serif;"><u><a href="mailto:contact@mcu.edu.kh">contact@mcu.edu.kh</a></u></span></span></h6>\n<p>&nbsp;</p>\n<h6 style="text-align: center;"><a href="http://mcu.edu.kh/contact">Go to our contact detail</a></h6>\n<p>&nbsp;</p>	2020-01-09 00:20:01	2020-03-09 06:56:25
9	ICT	<h1 class="LC20lb DKV0Md" style="text-align: center;">&nbsp;</h1>\n<h1 class="LC20lb DKV0Md" style="text-align: center;">&nbsp;</h1>\n<h2 class="LC20lb DKV0Md" style="text-align: center;"><span style="color: #339966;">មជ្ឈមណ្ឌលព័ត៌មានវិទ្យា</span></h2>\n<h4>&nbsp;</h4>\n<h4 class="LC20lb DKV0Md" style="text-align: center;"><span style="color: #339966;">Information and Communications Technology center</span></h4>\n<h3>&nbsp;</h3>\n<h3 style="text-align: center;">&nbsp;</h3>\n<h1>&nbsp;</h1>\n<p>&nbsp;</p>\n<h1>&nbsp;</h1>\n<h1>Structure</h1>\n<p><img src="https://api.mcu.edu.kh/storage/5e55038172d43-1582629761.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h1>&nbsp;</h1>\n<h1 style="text-align: center;">Contact</h1>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2>លោក អ៊ិន និមល&nbsp; (Mr. ENN NIMOL)</h2>\n<p>ប្រធានស្តីទីទទួលបន្ទុកក្តាប់រួម (Acting Chairman)</p>\n<p>H/P: (+855) 087 606 034 / (+855) 097 777 0774 / (+855) 092 792 392</p>\n<h3><span style="color: #626262;" data-darkreader-inline-color=""><span style="font-family: Times New Roman, serif;">Email: </span></span><span style="color: #000080;" data-darkreader-inline-color=""><span style="font-family: Times New Roman, serif;"><u><a href="mailto:ennnimol7@gmail.com">ennnimol7@gmail.com</a></u></span></span></h3>\n<h3>Facebook: &nbsp;<a title="Go to Facebook account" href="https://web.facebook.com/enn.nimol" target="_blank" rel="noopener">Enn Nimol</a></h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<p>&nbsp;</p>\n<h2>លោក លី រ៉ហ្សីមី&nbsp; (LY ROZIMY)</h2>\n<p>បុគ្គលិកកិច្ចសន្យា ទទួលបន្ទុក</p>\n<p>Website, Graphic and Design</p>\n<p>H/P: (+855) 087 400 815 / (+855) 095 35 80 36</p>\n<h3><span style="color: #626262;" data-darkreader-inline-color=""><span style="font-family: Times New Roman, serif;">Email: </span></span><span style="color: #000080;" data-darkreader-inline-color=""><span style="font-family: Times New Roman, serif;"><u><a href="mailto:lyrozimy@gmail.com">lyrozimy@gmail.com</a></u></span></span></h3>\n<h3>Facebook: <a title="Go to Facebook account" href="https://web.facebook.com/rami.romly" target="_blank" rel="noopener">Ra Mi</a></h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<p>&nbsp;</p>\n<h2>លោក ឡាយ ពិសិទ្ធ&nbsp; (Mr LAY PISETH)</h2>\n<p>បុគ្គលិកស្ម័គ្រចិត្តទទួលបន្ទុក</p>\n<p>Maintenance Software and Hardware</p>\n<p>H/P: (+855) 087 502 333</p>\n<h3><span style="color: #626262;" data-darkreader-inline-color=""><span style="font-family: Times New Roman, serif;">Email: </span></span><span style="color: #000080;" data-darkreader-inline-color=""><span style="font-family: Times New Roman, serif;"><u><a href="mailto:laypiseth@gmail.com">laypiseth@gmail.com</a></u></span></span></h3>\n<h3>Facebook: <a title="Go to Facebook account" href="https://web.facebook.com/profile.php?id=100034560075364" target="_blank" rel="noopener"> Piseth</a></h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2>1.សេចក្ដីផ្ដើម</h2>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; មនុស្សជាច្រើនគិតថា ព័ត៌មាន និងបច្ចេកវិទ្យាគមនាគមន៍ ITC គឺជាមូលដ្ឋានគ្រឹះ​សម្រាប់គ្រប់​សកម្មភាព​ សិក្សា ស្រាវជ្រោវ ឧស្សាហកម្ម និងអភិបាលកិច្ច។ ការគាំទ្រនេះពិតជា​មាន​លក្ខ​ណ:​​​​​ច្បាស់​លាស់ក្នុងការប្រើប្រាស់ ICT ដែលជាគន្លឹះសម្រាប់អោយអង្គភាពជោគជ័យ។ ដោយសាហេតុផលនេះហើយទើបសាកលវិទ្យាល័យ​មានជ័យ បាន​សម្រេច​ប​ង្កើត​​មជ្ឍ​មណ្ឌល​ព័ត៌មាន​វិទ្យា ហើយកាតព្វកិច្ច និងការទទួលខុសត្រូវ ដ៏ចម្បងរបស់ មជ្ឍមណ្ឌលព័ត៌មាន​វិទ្យាគឺ ធានាអោយបាន​នូវការអភិវឌ្ឍន៍ ICT ក្នុងកិច្ចការបង្រៀន សិក្សាស្រាវជ្រាវ និងគ្រប់កិច្ចរដ្ឋបាល នៅ​សាកល​វិទ្យាល័យមានជ័យ។</p>\n<h2>&nbsp;</h2>\n<h2>2.ចក្ខុវិស័យ</h2>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; មជ្ឍមណ្ឌុលព័ត៌មានវិទ្យា នឹងក្លាយទៅជា ឧត្តមភាពមជ្ឍមណ្ឌលមួយ នៅក្នុងការប្រើប្រាស់ សក្ដានុពល នៃ ICT ក្នុងការៀន ច្នៃប្រឌិត និងបរិស្ថាននៃការអប់រំ សម្រាប់ជាប្រយោជន៍នៃ សាកលវិទ្យាល័យមានជ័យ និងក៏ដូច​ជាការអភិវឌ្ឍន៍ប្រទេសជាតិ។</p>\n<p>&nbsp;</p>\n<h2>3.បេសកម្ម</h2>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; មជ្ឍមណ្ឌលព័ត៌មានវិទ្យាគឺ មានបេសកម្មជាច្រើនដើម្បីគាំទ្រសេវា ICT ដោយប្រើប្រាស់វិធីសាស្រ្តទំនើបបំផុត ចំពោះនិស្សិត មហាវិទ្យាល័យ អ្នកស្រាវជ្រាវ និងបុគ្គលិក ដែលសម្របសម្រួលការងាររបស់សាកលវិទ្យាល័យ ក្នុងតំបន់ខុសគ្នា ដូចជាការណែនាំ ស្រាវជ្រាវទូទៅ រដ្ឋបាល និងសេវាដើម្បីគ្របដណ្ដប់សហគមន៍ក្នុងបណ្ដាញជាមួយ និងបេសកម្មនៃសាកលវិទ្យាល័យមានជ័យ។</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;"><span style="color: #339966;">We Are Developing</span></h1>\n<p>&nbsp;</p>\n<p><span style="color: #339966;"><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e673878890ad-1583822968.jpg" alt="" width="32%" /></span></p>\n<p style="text-align: center;">&nbsp;</p>\n<h3 style="text-align: center;">Official Website :&nbsp; <a href="http://mcu.edu.kh/" target="_blank" rel="noopener">mcu.edu.kh</a></h3>\n<p style="text-align: center;">&nbsp;</p>\n<h3 style="text-align: center;">Facebook Page: <a title="Go to Facebook page" href="https://web.facebook.com/mcu.edu.kh/" target="_blank" rel="noopener">MCU MeanChey University</a></h3>\n<p style="text-align: center;">&nbsp;</p>\n<h3 style="text-align: center;">YouYube Channel: <a title="YouTube" href="https://www.youtube.com/channel/UCs9PeMaTI75W6PvGz7_HOSg?view_as=subscriber" target="_blank" rel="noopener">Mean Chey University</a></h3>\n<p style="text-align: center;">&nbsp;</p>\n<h3 style="text-align: center;">Twitter: <a title="Twitter" href="https://twitter.com/CheyUniversity" target="_blank" rel="noopener">Mean Chey University</a></h3>\n<h3 style="text-align: center;">&nbsp;</h3>\n<h3 style="text-align: center;">Instagram: <a title="Instagram" href="https://www.instagram.com/meanchey_university/" target="_blank" rel="noopener">meanchey_university</a></h3>\n<p>&nbsp;</p>\n<p style="text-align: center;">&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp; Website Development, Created &copy; 26 September 2019, admin of <a title="Mean Chey University" href="http://mcu.edu.kh/">mcu.edu.kh</a> ,&nbsp;Mean Chey University</p>	2020-01-09 00:34:03	2020-03-10 06:49:46
6	Research and Development Office	<h2>&nbsp;</h2>\n<h2 style="text-align: center;">Structure</h2>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h4>Strategy</h4>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Office of research and development continues to promote the development of innovative research to become a center of excellence&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5f33b3f11d003-1597223921.jpg" alt="" width="80%" /></p>\n<h1 style="text-align: center;">Contact</h1>\n<p>&nbsp;</p>\n<p><strong>Mrs. Muy Soklain&nbsp;&nbsp; </strong>Director</p>\n<p>Research and Development office</p>\n<p>Mean Chey University</p>\n<p>H/P: (855) 99 69 6767 /</p>\n<p>Email: <u>muysoklen</u><a href="mailto:sokwinphon@yahoo.com">@yahoo.com</a></p>\n<h3 style="text-align: center;">&nbsp;</h3>\n<p>&nbsp;</p>	2020-01-09 00:33:18	2020-08-12 09:25:13
8	IQA Office	<p>&nbsp;</p>\n<h2 style="text-align: center;">Structure</h2>\n<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5f33b5be73977-1597224382.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h3 style="text-align: center;">&nbsp;</h3>	2020-01-09 00:33:47	2020-08-12 09:26:36
3	Faculty of Sociology and Community Development	<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;">មហាវិទ្យាល័យសង្គមសាស្ត្រ និងអភិវឌ្ឍន៍សហគមន៍</h1>\n<h1 style="text-align: center;">Faculty of Sociology and Community Development</h1>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2><strong>១. ទស្សនៈវិស័យ</strong></h2>\n<p>មហាវិទ្យាល័យសង្គមសាស្ត្រ និងអភិវឌ្ឍន៍សហគមន៍នៃសកលវិទ្យាល័យមានជ័យ ផ្តល់ជូននូវចំណេះដឹង​ ប្រកបដោយគុណភាព សីលធម៌ វិជ្ជាជីវៈ ពេញលេញដើម្បីឆ្ពោះទៅជំនាញឯកទេសនិងរួមចំណែក្នុងការអភិវឌ្ឍសង្គមជាតិ។</p>\n<p>&nbsp;</p>\n<h2><strong>២. បេសកកម្ម</strong></h2>\n<p>ដើម្បីសម្រេចបាននូវចក្ខុវិស័យរបស់ខ្លួន មហាវិទ្យាល័យសង្គមសាស្ត្រ និងអភិវឌ្ឍន៍សហគមន៍​នឹងសម្រេចបាន</p>\n<p>នូវបេសកកម្មដូខខាងក្រោម៖</p>\n<p>ក. បង្កើនចំណេះដឹង ជំនាញ ក្នុងភាពជាអ្នកដឹកនាំ និងការអភិវឌ្ឍ</p>\n<p>ខ. ផ្តល់នូវស្តង់ដាវិជ្ជាជីវៈ ដោយឈរលើក្រមសីលធម៌នៃការវប្រកួតប្រជែង</p>\n<p>គ. ជម្រុញនិងលើកទឹកចិត្តដល់និស្សិត អោយមានការស្រាវជ្រាវ ចូលរួមវិភាគ ការប៉ាន់ប្រមាណលើផលប៉ះពាល់</p>\n<p>និងទស្សនៈកិច្ចសិក្សា​។</p>\n<p>&nbsp;</p>\n<h2><strong>៣. រចនាសម្ព័ន្ធ</strong></h2>\n<p><strong>&nbsp;</strong></p>\n<p><strong>&nbsp;</strong></p>\n<h2><strong>៤. មតិស្វាគមន៍របស់ព្រឹទ្ធបុរស</strong></h2>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2><strong>៥. ដេប៉ាតឺម៉ង់មាន៖</strong></h2>\n<p><strong>ក. អភិវឌ្ឍន៍សហគមន៍</strong></p>\n<p><strong>ខ. សង្គមវិជ្ជា</strong></p>\n<p><strong>គ.សេដ្ឋកិច្ច</strong></p>	2020-01-09 00:21:26	2020-02-17 08:07:00
7	International Relation Office	<p style="text-align: center;">&nbsp;</p>\n<p style="text-align: center;">&nbsp;</p>\n<p style="text-align: center;"><img src="https://api.mcu.edu.kh/storage/5e43bdeb8e23e-1581497835.jpg" alt="" width="140" height="" /></p>\n<p style="text-align: center;">&nbsp;</p>\n<p style="text-align: center;">&nbsp;</p>\n<h2 style="text-align: left;"><strong>Mr. Chhit Thy</strong></h2>\n<p style="text-align: left;">Director of International Relation Office &nbsp;</p>\n<p style="text-align: left;">Mean Chey University</p>\n<p style="text-align: left;">H/P: (855) 12 696037 / (855 93474729 )&nbsp;</p>\n<p><span style="color: #626262;"><span style="font-family: Times New Roman, serif;">Email: </span></span><span style="color: #000080;"><span style="font-family: Times New Roman, serif;"><u><a href="mailto:chhitthy@gmail.com">chhitthy@gmail.com</a></u></span></span></p>	2020-01-09 00:33:31	2020-02-12 09:04:29
1	Faculty of Arts, Humanities, and Language	<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;">មហាវិទ្យាល័យសិល្បៈមនុស្សសាស្ត្រនិងភាសា</h1>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2 style="text-align: center;">ទស្សនៈវិស័យ</h2>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; មហាវិទ្យាល័យសិល្បៈមនុស្សសាស្ត្រនិងភាសានៃសាកលវិទ្យាល័យមានជ័យនឹងអភិវឌ្ឍខ្លួនទៅជាមហាវិទ្យាល័យនៅភាគពាយព្យនៃប្រទេសកម្ពុជាដោយផ្តោតជាពិសេសលើគុណភាពសមត្ថភាពការងារនិងសីលធម៌សង្គមខ្ពស់ដើម្បីចូលរួមចំណែកក្នុងការអភិវឌ្ឍជាតិ។</p>\n<h2 style="text-align: center;">&nbsp;</h2>\n<h2 style="text-align: center;">បេសកកម្ម</h2>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ដើម្បីសម្រេចបាននូវចក្ខុវិស័យរបស់ខ្លួន មហាវិទ្យាល័យសិល្បៈមនុស្សសាស្ត្រនិងភាសាត្រូវតែប្រកាន់ខ្ជាប់នូវបេសកកម្មដូចខាងក្រោម។</p>\n<p><strong>ក)</strong> ពង្រឹងសីលធម៌ កាតព្វកិច្ច និងទំនួលខុសត្រូវសង្គមរបស់និស្សិតដើម្បីធ្វើឱ្យពួកគេក្លាយជាពលរដ្ឋល្អ ជាផ្លែផ្កាដ៏មានប្រយោជន៍ល្អរបស់សង្គម។</p>\n<p><strong>ខ)</strong> លើកទឹកចិត្តនិស្សិតឱ្យអភិរក្សនិងលើកកម្ពស់វប្បធម៌ជាតិ។គ) បង្កើនចំណេះដឹង ជំនាញ និងការអនុវត្តរបស់និស្សិតលើជំនាញភាសាដើម្បីឱ្យពួកគេអាចប្រកួតប្រជែងដោយជោគជ័យនៅក្នុងទីផ្សារការងារ។ឃ) ជំរុញការសិក្សាការងារ ទស្សនកិច្ចសិក្សា និងស្រាវជ្រាវរបស់និស្សិត។</p>\n<h2 style="text-align: center;">&nbsp;</h2>\n<h2 style="text-align: center;">&nbsp;</h2>\n<hr />\n<p>&nbsp;</p>\n<h2 style="text-align: center;">&nbsp;</h2>\n<h2 style="text-align: center;"><strong>Vision</strong></h2>\n<p>&nbsp;</p>\n<p style="text-align: center;">The Faculty of Arts, Humanities, and Languages of Mean Chey University will develop itself into the faculty in the north-west part of Cambodia by particularly focusing on quality, labor capability and high social morality so as to make contribution to national development.</p>\n<p>&nbsp;</p>\n<h2 style="text-align: center;"><strong>Mission</strong></h2>\n<p>&nbsp;</p>\n<p style="text-align: center;">To reach the vision set, the Faculty of Arts Humanities and Languages has to adhere to the mission statement as follow.</p>\n<p style="text-align: center;">Instill social morality, obligation, and responsibility into students to shape them into good and productive citizens.</p>\n<p style="text-align: center;">Encourage students to conserve and promote national culture.</p>\n<p style="text-align: center;">Build up students&rsquo; knowledge, skills and practices in languages so that they can compete successfully in labor market.</p>\n<p style="text-align: center;">Promote students&rsquo; work studies, field visits and researches</p>\n<p style="text-align: center;">&nbsp;</p>\n<p style="text-align: center;">&nbsp;</p>\n<hr />\n<p style="text-align: center;">&nbsp;</p>\n<h2 style="text-align: center;"><strong>Dean&rsquo;s Welcoming Message</strong></h2>\n<p><strong><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e41177606a82-1581324150.jpg" alt="" width="260" /></strong></p>\n<p>&nbsp;</p>\n<p style="text-align: center;">មហាវិទ្យាល័យសិល្បៈមនុស្សសាស្ត្រនិងភាសានៃសាកលវិទ្យាល័យមានជ័យ សូមស្វាគមន៍!&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; មហាវិទ្យាល័យសិល្បៈ មនុស្សសាស្ត្រនិងភាសាផ្តល់ជូននូវកម្មវិធីអប់រំភាសាដ៏ឆ្នើម ដែលត្រូវបានរៀប​ចំឡើងដើម្បីបំពេញនូវរបៀបរស់នៅនិងតម្រូវការផ្សេងៗគ្នារបស់ជំនាញវិជ្ជាជីវៈនិស្សិតនាពេលបច្ចុប្បន្ននិងអនាគត។ កម្មវិធីបរិញ្ញាបត្រដែលរួមមាន បរិញ្ញបត្រអក្សរសាស្ត្រខ្មែរ បរិញ្ញបត្រភាសាអង់គ្លេស បរិញ្ញបត្រភាសាកូរ៉េ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;បរិញ្ញបត្រភាសាចិន និងបរិញ្ញបត្រភាសាភាសាថៃមិនត្រឹមតែផ្តល់ឱ្យនិស្សិតនូវចំណេះដឹងនិងជំនាញផ្នែកភាសាយ៉ាងជ្រាលជ្រៅប៉ុណ្ណោះទេ​ ប៉ុន្តែថែមទាំងផ្តល់នូវជំនាញទំនាក់ទំនង ជំនាញរិះគិត ការយល់ដឹងពីបរិបទក្នុងស្រុកនិងសកល វប្បធម៌នៃបរិយាប័ន បំនិនព័ត៌មានវិទ្យាមូលដ្ឋានដែលជាតម្រូវការចាំបាច់បំផុតមួយរបស់និយោជកនៃអង្គភាពនានា។</p>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; លើសពីនេះទៀត និស្សិតត្រូវបានតម្រូវអោយចូលរួមក្នុងការរៀនសូត្រស៊ីជម្រៅតាមរយៈការស៊ើបអង្កេត និងដោះស្រាយបញ្ហាដែលទាក់ទងនឹងការអប់រំវប្បធម៌និងភាសា ដែលអាចប្រែក្លាយនិស្សិតជំនាញភាសាជាអ្នកដោះស្រាយបញ្ហា និងអ្នកសិក្សាឯករាជ្យសម្រាប់អនាគតពេញមួយជីវិតរបស់ពួកគេ។ ពួកគេនឹងត្រូវចុះធ្វើការងារជាមួយសហគមន៍ដើម្បីរៀនសូត្រពីសហគមន៍ក្នុងស្រុក និងក្រៅប្រទេសតាមរយៈការរៀនសូត្រនិងផ្លាស់ប្តូរសហគមន៍។ ដូច្នេះពួកគេនឹងរៀនកាន់តែស៊ីជម្រៅអំពីការបង្រៀន ការរៀនសូត្រ ការប្រើប្រាស់ភាសា និងបំណិនជីវិត។</p>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ជាពិសេស គ្រូបង្រៀនរបស់យើងមានជំនាញវិជ្ជាជីវៈនិងបានបញ្ចប់ការសិក្សាពីសាកលវិទ្យាល័យល្បី ៗ ទាំងក្នុងស្រុកនិងបរទេស។ គ្រូបង្រៀនរបស់យើងពិតជាគាំទ្រនិងយកចិត្តទុកដាក់ក្នុងការជួយនិស្សិតឱ្យក្លាយជាអ្នកសិក្សាដែលមានឆន្ទៈខ្ពស់។ សំខាន់ជាងគេបំផុត និស្សិតនឹងរៀនជាមួយលោកគ្រូ អ្នកគ្រូបរទេសជនទាំងអស់ ជាពិសេសក្នុងថ្នាក់រៀនភាសាកូរ៉េ ភាសាចិន និងភាសាថៃ។ យើងប្តេជ្ញាក្នុងការផ្តល់ជូននិស្សិតនូវឧត្តមភាពនិងភាពជោគជ័យនៃការសិក្សារបស់ពួកគេ។</p>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ប្រសិនបើ លោកអ្នកមានចម្ងល់ ឬសំនួរទាក់ទងនឹងកម្មវិធីរបស់យើង សូមទាក់ទងមកការិយាល័យមហាវិទ្យាល័យរបស់&nbsp;&nbsp; យើង។ &nbsp;សូមអរគុណចំពោះការចាប់អារម្មណ៍របស់លោកអ្នកចំពោះមហាវិទ្យាល័យសិល្បៈ មនុស្សសាស្ត្រ និងភាសានៃសាកលវិទ្យាល័យមានជ័យ។</p>\n<p>&nbsp;</p>\n<p><strong><em>លោក ផុន សុវិន</em></strong></p>\n<p><strong><em>ព្រឹទ្ធបុរសស្តីទីមហាវិទ្យាល័យសិល្បៈ មនុស្សនិងភាសា</em></strong></p>\n<p><strong><em>ទូរស័ព្ទលេខៈ (៨៥៥) ៩២ ៣៦៨ ០៦៦/ (៨៥៥) ៩៦ ៦៦៦ ២៦២៦</em></strong></p>\n<p>Email: <a href="mailto:sokwinphon@yahoo.com">sokwinphon@yahoo.com</a></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p style="text-align: center;">Welcome to the Faculty of Arts, Humanities and Languages, Mean Chey University.</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp;The Faculty offers outstanding language educational programs designed to meet students&rsquo; diverse lifestyles and demands of today&rsquo;s and future professions.&nbsp; Our five Bachelor&rsquo;s Degree programs in Khmer Literature, English Language, Korean Language, Chinese Language and Thai Language not only equip the students with profound linguistic knowledge and skills, but also communication, critical thinking, local and global understanding, culture of inclusivity and basic information literacy which are some of the most sought-after by employers. &nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp;Further, the students are required to engage in deep learning by investigating and solving issues related to culture and language education so that students will become the problem solvers and independent learners for their lifelong future. They will be tasked in the communities to learn from the local and international ones through community learning and exchange so that they will practically learn deeper about language teaching, learning and using and life skills.</p>\n<p>&nbsp; &nbsp; Our lecturers are professional and graduated from famous local and overseas universities. They are all really supportive and encouraging helping the students become enthusiastic learners. Most importantly, students will learn with all native speakers especially in the field of Korean, Chinese, and Thai Language. &nbsp;We are committed to the students&rsquo; academic excellence and success.</p>\n<p>&nbsp; &nbsp; I invite you to explore our programs and to contact our faculty office if you may have any enquiries. Thank you for your interest in the Faculty of Arts, Humanities and Languages, Mean Chey University.</p>\n<p>&nbsp;</p>\n<p><em><strong>Mr. PHON Sokwin</strong></em></p>\n<p><em><strong>Acting Dean</strong></em></p>\n<p><em><strong>Faculty of Arts, Humanities and Languages,</strong></em></p>\n<p><em><strong>Mean Chey University</strong></em></p>\n<p><em><strong>H/P: (855) 92 368 066/ (855) 96 666 2626</strong></em></p>\n<p>Email: <a href="mailto:sokwinphon@yahoo.com">sokwinphon@yahoo.com</a></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	2020-01-09 00:19:15	2020-02-13 07:59:28
13	Dormitory and Sport Center	<h4>1. Structure</h4>\n<p><img src="https://api.mcu.edu.kh/storage/5e25190376ee1-1579489539.jpg" alt="" width="100%" /></p>\n<h2>&nbsp;</h2>\n<h2>&nbsp;</h2>\n<h2><span style="font-family: Lohit Devanagari;"><span lang="km-KH"><span style="color: #2c2c2c;"><span style="font-family: content;"><strong>វ៉ាន់ ស៊ុនឌី </strong></span></span></span><span style="font-family: Calibri, sans-serif;"><strong>/ VANN SUNDY</strong></span></span></h2>\n<p>Head of Center</p>\n<p>Sport and Dormitory</p>\n<p>H/P: Tel 015 86 83 86</p>\n<p><span style="color: #626262;"><span style="font-family: Times New Roman, serif;">Email: </span></span><span style="color: #000080;"><span style="font-family: Times New Roman, serif;"><u><a href="mailto:vannsundi@gmail.com">vannsundi@gmail.com</a></u></span></span></p>\n<p><span style="color: #626262;"><span style="font-family: Times New Roman, serif;">Email: </span></span><span style="color: #000080;"><span style="font-family: Times New Roman, serif;"><u><a href="mailto:sundy@mcu.edu.kh">sundy@mcu.edu.kh</a></u></span></span></p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp;</p>\n<p><span style="color: #2c2c2c;"><span style="font-family: Calibri, sans-serif;"><strong>OUERM CHOMNAN</strong></span></span></p>\n<p>Head of Male Dorm</p>\n<p>Tel: 093 564670</p>\n<p>&nbsp;</p>\n<p><span style="color: #2c2c2c;"><span style="font-family: Calibri, sans-serif;"><strong>HEY KIMHOR</strong></span></span></p>\n<p>Head of Female Dorm</p>\n<p>Meanchey University</p>\n<p>Tel: 096 3606960</p>\n<p>E-mail: heykimhor98@gmail.com</p>	2020-01-09 00:35:40	2020-03-05 05:34:44
16	Foundation Year	<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;"><strong>ដេប៉ាតឺម៉ង់ថ្នាក់ឆ្នាំសិក្សាមូលដ្ឋាន</strong></h1>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h1 style="text-align: left;"><span style="color: #339966;">Schedule of Foundation Year</span></h1>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2 style="text-align: center;"><span style="color: #ff0000;">Room B2</span></h2>\n<p>&nbsp;</p>\n<h3><strong>Department</strong>: Agriculture &amp; Agronomy &amp; Veterinary</h3>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e61f8f4aa492-1583479028.jpg" alt="" width="100%" height="" /></p>\n<p><em><a href="https://drive.google.com/file/d/1Zz52lBvFFg9K12Pp2pihOTDsYsX2L0cp/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h3><strong>Department</strong>: Information and Technology</h3>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e61fa1e74df0-1583479326.jpg" alt="" width="100%" height="" /></p>\n<p><em><a href="https://drive.google.com/file/d/1cfcSb_G71DicnLYBSjAbmgo-ZOv3SfNp/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h3><strong>Department</strong>: Management&nbsp; &amp; Finance-Banking&nbsp; &amp; Accounting</h3>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e61fb04bae5a-1583479556.jpg" alt="" width="100%" height="" /></p>\n<p><em><a href="https://drive.google.com/file/d/19D9YjWAFFOnTSYudtCb91YI2TFNeDNw6/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2 style="text-align: center;"><span style="color: #ff0000;">Room C1+2</span></h2>\n<p>&nbsp;</p>\n<h3><span style="color: #000000;"><strong>Department</strong>: Agricultural Machinery</span></h3>\n<p>&nbsp;</p>\n<p><span style="color: #000000;"><img src="https://api.mcu.edu.kh/storage/5e61fc303fd05-1583479856.jpg" alt="" width="100%" height="" /></span></p>\n<p><span style="color: #000000;"><a href="https://drive.google.com/file/d/1tIO0WP9JkLjTAaYaqPkMnNilDP76q2TM/view?usp=sharing" target="_blank" rel="noopener">Download</a></span></p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h3><strong>Department</strong>: Comunity Development</h3>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e61fcba0247b-1583479994.jpg" alt="" width="100%" height="" /></p>\n<p><a href="https://drive.google.com/file/d/1itIBr_bUfaSjDWfnHuKusTwU38v0e9S3/view?usp=sharing" target="_blank" rel="noopener">Download</a></p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h3><strong>Department</strong>: Engish Language</h3>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e61fd377b3df-1583480119.jpg" alt="" width="100%" height="" /></p>\n<p><a href="https://drive.google.com/file/d/1FH1oX6CRABrZuelz3Y4jr5eTTuiDVaIw/view?usp=sharing" target="_blank" rel="noopener">Download</a></p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h3><strong>Department</strong>: Korean Language</h3>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e61fd7f0ae60-1583480191.jpg" alt="" width="100%" height="" /></p>\n<p><a href="https://drive.google.com/file/d/1V0kQkR7yT4sIGcJ1D6R1_U3s-DV-eU9R/view?usp=sharing" target="_blank" rel="noopener">Download</a></p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h3><strong>Department</strong>: Khmer Literature</h3>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e61febb1e41f-1583480507.jpg" alt="" width="100%" height="" /></p>\n<p><a href="https://drive.google.com/file/d/15YRyOsB3PjGdZJBTSCLbjDKeudF2F28-/view?usp=sharing" target="_blank" rel="noopener">Download</a></p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h3><strong>Department</strong>: Chinese Language</h3>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e61feaa5c8d6-1583480490.jpg" alt="" width="100%" height="" /></p>\n<p><a href="https://drive.google.com/file/d/1P-ezxhwltdk5SrRpjMMM74StQXYg4ldR/view?usp=sharing" target="_blank" rel="noopener">Download</a></p>\n<p>&nbsp;</p>	2020-03-05 05:36:25	2020-03-06 07:52:49
15	Administration Office	<p><img src="https://api.mcu.edu.kh/storage/5e3d1e5b0dbd0-1581063771.jpg" alt="" width="100%" /></p>	2020-02-07 08:23:02	2020-02-07 08:23:02
4	Faculty of Business Management and Tourism	<p style="text-align: center;">&nbsp;</p>\n<h1 style="text-align: center;">&nbsp;</h1>\n<h3 style="text-align: center;"><span style="color: #339966;"><strong>មហាវិទ្យាល័យ គ្រប់គ្រងពាណិជ្ជកម្ម និងទេសចរណ៍</strong></span></h3>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e65e1405486a-1583735104.jpg" alt="" width="100%" /></p>\n<h2 style="text-align: center;">&nbsp;</h2>\n<h2 style="text-align: center;">&nbsp;</h2>\n<h2 style="text-align: center;"><span style="color: #339966;">Dean&rsquo;s Welcoming Message</span></h2>\n<p>&nbsp;</p>\n<p style="text-align: center;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #808080;"> &nbsp; From&nbsp; 2007 to 2019, I worked as a dean of the Faculty of Business Management and Tourism, Mean Chey University. I am responsible for curriculum development, Human Resources management, students affairs, and relation affairs and I also complete other internal tasks in the university I had various trainings such as in Developing and Strengthening Operational Policy and Youth&rsquo;s Activities, Training of Trainers for Foreign Volunteers, Curriculum Development&nbsp; for Specific Purposes, research, administration, and technology funded by Erasmus+ program.</span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2 style="text-align: center;">&nbsp;</h2>\n<h2 style="text-align: center;"><span style="color: #339966;">Vision</span></h2>\n<p>&nbsp;</p>\n<p style="text-align: center;">Students will be fully qualified with professional ethnics, knowledge, skills and competencies for the current and future job markets.</p>\n<p style="text-align: center;">&nbsp;</p>\n<h2 style="text-align: center;"><span style="color: #339966;">Mission</span></h2>\n<p>&nbsp;</p>\n<p>1.&nbsp; To provide quality and effective courses to all students of all specializations</p>\n<p>2.&nbsp; To research and develop theories and practices, aiming at contributively analyzing social challenges faced by current business administration.</p>\n<p>3.&nbsp; To provide students with creative abilities so that they can contribute to the rehabilitation and the development of the country in accordance</p>\n<p>&nbsp; &nbsp; &nbsp;with government policy.</p>\n<p>4.&nbsp; To contribute to national development by producing truly professional human resources.</p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h2><span style="color: #339966;">Structure</span></h2>\n<p>&nbsp;</p>\n<h3>Mr. Ngo Channorak</h3>\n<p>Vice dean</p>\n<p>Faculty of Business Management and Tourism,</p>\n<p>Mean Chey University</p>\n<p>H/P: (855) 78 85 86 87/ (855) 87 85 86 87</p>\n<p><span style="color: #339966;">Email:<a href="mailto:mcuchannorak@gmail.com">mcuchannorak@gmail.com</a></span></p>\n<p>&nbsp;</p>\n<h3>Mr. Pich Veasna</h3>\n<p>Vice dean</p>\n<p>Faculty of Business Management and Tourism,</p>\n<p>Mean Chey University</p>\n<p>H/P: (855)</p>\n<p><span style="color: #339966;">Email:</span> Note Available</p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h2 style="text-align: center;">&nbsp;</h2>\n<p>&nbsp;</p>	2020-01-09 00:21:58	2020-03-09 06:27:24
\.


--
-- Data for Name: abouts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.abouts (id, title, excerpt, content, created_at, updated_at) FROM stdin;
9	Founder	Founder	<h2>&nbsp;</h2>\n<h2 style="text-align: center;"><strong><span style="font-family: Khmer OS Content;"><span lang="km-KH">ស្ថាបនិក សាកលវិទ្យាល័យមានជ័យ</span></span></strong></h2>\n<h4 style="text-align: center;"><strong>The Mean Chey University Founder</strong></h4>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<center></center><center></center><center><img src="https://api.mcu.edu.kh/storage/5e3c1fc92edc3-1580998601.jpg" alt="" width="70%" /></center>\n<h2>&nbsp;</h2>\n<h2>&nbsp;</h2>\n<h2><span style="font-family: Khmer OS Content;"><span lang="km-KH">&nbsp; &nbsp; ឯកឧត្ដម នាយឧត្តមសេនីយ៍ កែ គឹមយ៉ាន ឧបនាយករដ្ឋមន្ត្រី ប្រធានអាជ្ញាធរជាតិប្រយុទ្ធប្រឆាំងគ្រឿងញៀន និងលោកជំទាវ ម៉ៅ ម៉ាល័យ ជាស្ថាបនិក សាកលវិទ្យាល័យមានជ័យ។</span></span></h2>\n<p>&nbsp;</p>\n<h2>&nbsp; &nbsp; His Excellency Ke Kimyan, Deputy Prime Minister and Chairman of National Authority for Combatting Drugs and Lokchumteav Mao Malai are the founders of Mean Chey University</h2>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<hr />\n<h4 style="text-align: center;">Get in touch with use by&nbsp;</h4>\n<p>&nbsp;</p>\n<h6 style="text-align: center;">Facebook Page: <a title="Go to Facebook page" href="https://web.facebook.com/mcu.edu.kh/" target="_blank" rel="noopener">MCU MeanChey University</a>&nbsp; &nbsp;</h6>\n<h6 style="text-align: center;">YouTube Channel: <a title="YouTube" href="https://www.youtube.com/channel/UCs9PeMaTI75W6PvGz7_HOSg?view_as=subscriber" target="_blank" rel="noopener">Mean Chey University</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h6>\n<h6 style="text-align: center;"><span style="color: #626262;" data-darkreader-inline-color=""><span style="font-family: Times New Roman, serif;">Email: </span></span><span style="color: #000080;" data-darkreader-inline-color=""><span style="font-family: Times New Roman, serif;"><u><a href="mailto:contact@mcu.edu.kh">contact@mcu.edu.kh</a></u></span></span></h6>\n<p>&nbsp;</p>\n<h6 style="text-align: center;"><a href="http://mcu.edu.kh/contact">Go to our contact detail</a></h6>\n<p>&nbsp;</p>	2020-01-09 00:30:28	2020-03-09 06:56:54
12	Organization Structure	Organization Structure	<p>Organization Structure</p>\n<p>&nbsp;</p>\n<p><iframe style="border: 0;" tabindex="0" src="https://www.google.com/maps/embed?pb=!4v1585205268258!6m8!1m7!1sCAoSLEFGMVFpcFBJSm9fRjdwNUlCM2g0LWRFVmtYREhOcS1BWnhVTkFualpvaTBL!2m2!1d13.5800459!2d102.9290765!3f176.12792462852948!4f-5.442252959502611!5f0.4000000000000002" width="100%" height="650" frameborder="0" allowfullscreen="allowfullscreen" aria-hidden="false"></iframe></p>	2020-01-09 00:31:32	2020-03-26 06:56:00
10	History	History	<p>&nbsp;</p>\n<h3 style="text-align: center;"><strong>ប្រវត្តិសាស្រ្តរបស់សាកលវិទ្យាល័យមានជ័យ</strong></h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN"><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e250b067dc00-1579485958.jpg" alt="" width="80%" /></span></span></span></span></p>\n<p>&nbsp;</p>\n<p><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">&nbsp; &nbsp;<strong>English Below...</strong></span></span></span></span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">​​&nbsp; &nbsp; បន្ទាប់ពីរបបប្រល័យពូជសាសន៍ ៣ឆ្នាំ ៨ខែ និង២០ថ្ងៃត្រូវបានបញ្ចប់នាថ្ងៃ៧ មករា ១៩៧៩ ប្រទេសកម្ពុជា បាននឹងកំពុងស្តារ និងកសាងពីចំណុចសូន្យរហូតដល់រីកចម្រើន អភិវឌ្ឍន៍ស្ទើរគ្រប់វិស័យ ក្រោមការដឹកនាំដ៏ឈ្លាសវៃ និងប្រកប ដោយគតិបណ្ឌិត របស់សម្តេចអគ្គមហាទាំង៣ ​គឺ <strong>សម្តេចអគ្គមហាធម្មពោធិសាល</strong> ជា ស៊ីម </span></span></span><span style="font-family: Content;"><span style="font-size: medium;">, </span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN"><strong>សម្តេចអគ្គមហាពញាចក្រីហេង</strong> សំរិន </span></span></span><span style="font-family: Content;"><span style="font-size: medium;">, </span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">និង <strong>សម្តេចអគ្គមហាសេនាបតីតេជោ</strong> ហ៊ុន សែន ។ </span></span></span></span></p>\n<p>&nbsp;</p>\n<p><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">&nbsp; &nbsp; នយោបាយឈ្នះ</span></span></span><span style="font-family: Content;"><span style="font-size: medium;">-</span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">ឈ្នះរបស់<strong>សម្តេចអគ្គមហាសេនាបតីតេជោ</strong> ហ៊ុន សែន បាននាំមកនូវ សុខសន្តិភាព សេរីភាព ប្រជាធិបតេយ្យ និងការអភិវឌ្ឍន៍ពិតៗ ។ លើសពីនេះទៅទៀត យុទ្ធសាស្រ្តចតុកោណរបស់រាជរដ្ឋាភិបាលកម្ពុជា ដែលមាន<strong>សម្តេចតេជោ</strong>ជាប្រមុខ បានធ្វើឲ្យហេដ្ឋារចនាសម្ព័ន្ធផ្លូវថ្នល់ ស្ពាន ទឹកស្អាត ចរន្តអគ្គិសនី ប្រឡាយទឹក ធារាសាស្ត្រ សាលារៀន មន្ទីរពេទ្យ វត្តអារាម ត្រូវបានជួសជុល និងកសាងឡើងព្រោងព្រាតគ្រប់ទីកន្លែង ក្នុងគោលបំណងអភិវឌ្ឍធនធានមនុស្ស និងជួយកាត់បន្ថយភាពក្រីក្ររបស់ប្រជាពលរដ្ឋ ។ </span></span></span></span></p>\n<p>&nbsp;</p>\n<p><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">&nbsp; &nbsp; ដើម្បីចូលរួមគាំទ្រ និងអនុវត្តតាមយុទ្ធសាស្រ្តចតុកោណរបស់រាជរដ្ឋាភិបាល ក្រសួងអប់រំ យុវជន និងកីឡា បានដាក់ចេញនូវគោលនយោបាយ &ldquo;<strong>ការអប់រំសម្រាប់ទាំងអស់គ្នា ទាំងអស់គ្នាដើម្បីការអប់រំ</strong>&rdquo; ក្នុងន័យលើកកម្ពស់គុណភាព ប្រសិទ្ធភាព និងប្រសិទ្ធផលនៃវិស័យអប់រំ ហើយផែនការយុទ្ធសាស្រ្តវិស័យអប់រំឆ្នាំ២០០៦</span></span></span><span style="font-family: Content;"><span style="font-size: medium;">-</span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">២០១០ បានកំណត់ចេញនូវនយោបាយអាទិភាពសំខាន់ៗបី ៖ </span></span></span></span></p>\n<p><span style="color: #000000;"> <span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">១</span></span></span><span style="font-family: Content;"><span style="font-size: medium;">)-</span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">ធានាលទ្ធភាពទទួលបានសេវាអប់រំប្រកបដោយសមធម៌ </span></span></span><span style="font-family: Content;"><span style="font-size: medium;">, </span></span></span></p>\n<p><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">២</span></span></span><span style="font-family: Content;"><span style="font-size: medium;">)-</span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">លើកកម្ពស់គុណភាព និងប្រសិទ្ធភាពសេវាអប់រំ </span></span></span><span style="font-family: Content;"><span style="font-size: medium;">, </span></span></span></p>\n<p><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">៣</span></span></span><span style="font-family: Content;"><span style="font-size: medium;">)-​</span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">ការអភិវឌ្ឍស្ថាប័ន និងកសាងសមត្ថភាពមន្រ្តីអប់រំសម្រាប់វិមជ្ឈការ ។ </span></span></span></span></p>\n<p>&nbsp;</p>\n<p><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">&nbsp; &nbsp; &nbsp;សាកលវិទ្យាល័យមានជ័យ ជាសមិទ្ធផលប្រវត្តិសាស្រ្ត </span></span></span><span style="font-family: Content;"><span style="font-size: medium;">,</span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">កើតចេញពីចក្ខុវិស័យដ៏ឈ្លាសវៃ និងប៉ិនប្រសប់របស់រាជរដ្ឋាភិបាលកម្ពុជា ដែលមានសម្តេចអគ្គមហាទាំង៣ ជាពិសេស សម្តេច<strong>អគ្គមហាសេនាបតីតេជោ</strong> ហ៊ុន សែន ដែលជានិច្ចកាលយកចិត្តទុកដាក់ក្នុងការបណ្តុះបណ្តាលធនធានមនុស្ស ។ ឯកឧត្តម <strong>នាយឧត្តមសេនីយ៍</strong> កែ គឹមយ៉ាន ឧបនាយករដ្ឋមន្រ្តី</span></span></span><span style="font-family: Content;"><span style="font-size: medium;">, </span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">ប្រធានអាជ្ញាធរជាតិប្រយុទ្ធប្រឆាំងគ្រឿងញៀន និង<strong>លោកជំទាវឧកញ៉ា</strong> ម៉ៅ ម៉ាល័យ ជាស្ថាបនិកដ៏ឆ្នើម ដែលបានដឹកនាំផ្តួចផ្តើមបង្កើតសាកលចិទ្យាល័យមានជ័យឡើងដោយមានការចូលរួមពីអាជ្ញាធរដែនដីខេត្ត កងកម្លាំងប្រដាប់អាវុធ មន្រ្តីរាជការ សប្បុរសជនក្នុង និងក្រៅប្រទេស និងប្រជាពលរដ្ឋក្នុងខេត្ត​ ក្នុងគោលបំណងប្រែក្លាយតំបន់ដែលធ្លាប់ជាសមរភូមិពោរពេញដោយគ្រាប់មីន និងការបង្ហូរឈាមជាមួយពួកឧទ្ទាមខ្មែរក្រហម ឲ្យក្លាយទៅជាថ្នាលបណ្តុះបណ្តាលធនធានមនុស្សប្រកប ដោយគុណភាព ប្រសិទ្ធភាព ជម្រុញលើកទឹកចិត្តដល់យុវជនជំនាន់ក្រោយៗឲ្យបានរៀនសូត្រ និងបញ្ចប់ការសិក្សានៅឧត្តមសិក្សា និងជួយរួមចំណែកកាត់បន្ថយភាពក្រីក្ររបស់ប្រជាពលរដ្ឋ ស្របតាមយុទ្ធសាស្រ្តចតុកោណរបស់រាជរដ្ឋាភិបាល ដែលជាកត្តាដ៏សំខាន់ក្នុងការអភិវឌ្ឍន៍ប្រទេសជាតិ។</span></span></span></span></p>\n<p>&nbsp;</p>\n<p><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">&nbsp; &nbsp; &nbsp;សាកលវិទ្យាល័យមានជ័យ ជាគ្រឹះស្ថានឧត្តមសិក្សាសាធារណ</span></span></span><span style="font-family: Content;"><span style="font-size: medium;">: </span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">លាតសន្ធឹងលើផ្ទៃដី២៣</span></span></span><span style="font-family: Content;"><span style="font-size: medium;">,</span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">៥ ហិចតា ស្ថិតនៅតាមដងផ្លូវជាតិលេខ៥ ចន្លោះពីទីរួមខេត្តបន្ទាយមានជ័យទៅក្រុងប៉ោយប៉ែត </span></span></span><span style="font-family: Content;"><span style="font-size: medium;">(</span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">ប្រមាណ៦គម</span></span></span><span style="font-family: Content;"><span style="font-size: medium;">. </span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">ពីទីរួមខេត្ត</span></span></span><span style="font-family: Content;"><span style="font-size: medium;">) </span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">ក្នុងភូមិបាណយ សង្កាត់ទឹកថ្លា ក្រុងសិរីសោភ័ណ ខេត្តបន្ទាយមានជ័យ </span></span></span><span style="font-family: Content;"><span style="font-size: medium;">, </span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">ត្រូវបានអនុញ្ញាតឲ្យបង្កើតឡើងដោយអនុក្រឹត្យលេខ ១២ អនក្រ</span></span></span><span style="font-family: Content;"><span style="font-size: medium;">.</span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">បក ចុះថ្ងៃទី២១ ខែកុម្ភៈ ឆ្នាំ២០០៧ </span></span></span><span style="font-family: Content;"><span style="font-size: medium;">,</span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">មានតួនាទីបណ្តុះបណ្តាលធនធានមនុស្ស ស្រាវជ្រាវ វប្បធម៌ វិទ្យាសាស្រ្ត និងបច្ចេកទេស និងលើកស្ទួយ អត្តសញ្ញាណជាតិ </span></span></span><span style="font-family: Content;"><span style="font-size: medium;">,​</span></span><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">បណ្តុះបណ្តាលកម្រិត បរិញ្ញាបត្រជាន់ខ្ពស់ បរិញ្ញាបត្រ និងបរិញ្ញាបត្ររង តាមកម្មវិធីសិក្សា ដែលមានការឯកភាពពីក្រសួងអប់រំ យុវជន និងកីឡា ។</span></span></span></span></p>\n<p>&nbsp;</p>\n<p><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">&nbsp; &nbsp; &nbsp;សាកលវិទ្យាល័យមានជ័យ បានបើកបវេសនកាលឆ្នាំសិក្សាដំបូង នាថ្ងៃទី១៧ ខែមីនា​​ ឆ្នាំ២០០៨ ក្រោមអធិបតីភាព <strong>សម្តេចក្រឡាហោម</strong> ស ខេង ឧបនាយករដ្ឋមន្រ្តី និងជារដ្ឋមន្រ្តីក្រសួងមហាផ្ទៃ និងសម្ពោធដាក់ឲ្យប្រើប្រាស់ជាផ្លូវការនាថ្ងៃទី៤ ខែមេសា​ ឆ្នាំ២០០៨ ក្រោមអធិបតីភាពដ៏ខ្ពង់ខ្ពស់ សម្តេចអគ្គមហាសេនាបតីតេជោ ហ៊ុន​ សែន នាយករដ្ឋមន្រ្តីនៃព្រះរាជាណាចក្រកម្ពុជា និង<strong>សម្តេចគតិព្រឹទ្ធបណ្ឌិត</strong> ប៊ុន រ៉ានី ដែលមានមហាវិទ្យាល័យ៥ គឺ </span></span></span><span style="font-family: Content;"><span style="font-size: x-large;"><span style="font-size: medium;">: </span></span><span style="font-size: medium;"><span lang="hi-IN">មហាវិទ្យាល័យសិល្បៈ មនុស្សសាស្រ្តនិងភាសា </span></span><span style="font-size: x-large;"><span style="font-size: medium;">, </span></span><span style="font-size: medium;"><span lang="hi-IN">មហាវិទ្យាល័យវិទ្យាសាស្រ្តនិងបច្ចេកវិទ្យា </span></span><span style="font-size: x-large;"><span style="font-size: medium;">, </span></span><span style="font-size: medium;"><span lang="hi-IN">មហាវិទ្យាល័យសង្គមសាស្រ្តនិងអភិវឌ្ឍន៍សហគមន៍ </span></span><span style="font-size: x-large;"><span style="font-size: medium;">,</span></span><span style="font-size: medium;"><span lang="hi-IN">មហាវិទ្យាល័យគ្រប់គ្រងពាណិជ្ជកម្មនិងទេសចរណ៍ និងមហាវិទ្យាល័យ កសិកម្ម និងកែច្នៃអាហារ ។ </span></span></span></span></p>\n<p>&nbsp;</p>\n<p align="left"><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN"><strong>ឯកឧត្តម</strong>​ តូច​ ជឿន ត្រូវបានតែងតាំងជាផ្លូវការ ជាសាកលវិទ្យាធិការ ដោយព្រះរាជក្រឹត្យ លេខនស</span></span></span><span style="font-family: Content;"><span style="font-size: medium;">/</span><span style="font-size: medium;"><span lang="hi-IN">រកត</span></span><span style="font-size: medium;">/</span><span style="font-size: medium;"><span lang="hi-IN">០៦០៨</span></span><span style="font-size: medium;">/​ </span><span style="font-size: medium;"><span lang="hi-IN">៨០៧ ចុះថ្ងៃទី២៨ ខែមីនា ឆ្នាំ២០០៨ ។ </span></span></span></span></p>\n<p align="left">&nbsp;</p>\n<p align="left"><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN"><strong>&nbsp; &nbsp; &nbsp;ឯកឧត្តម</strong>​ សំ ង៉ា ត្រូវបានតែងតាំងជាផ្លូវការ ជាសាកលវិទ្យាធិការ ដោយព្រះរាជក្រឹត្យលេខ នស</span></span></span><span style="font-family: Content;"><span style="font-size: medium;">/</span><span style="font-size: medium;"><span lang="hi-IN">រកត</span></span><span style="font-size: medium;">/ </span><span style="font-size: medium;"><span lang="hi-IN">០៧១១</span></span><span style="font-size: medium;">/​ </span><span style="font-size: medium;"><span lang="hi-IN">៦៥៥ ចុះថ្ងៃទី១១ ខែកក្កដា ឆ្នាំ២០១១ ជំនួស </span></span><strong>ឯកឧត្តម</strong> តូច ជឿន ដែលត្រូវបានទទួលភារកិច្ចថ្មីនៅក្រសួងអប់រំ យុវជន និងកីឡា ។ </span></span></p>\n<p align="left">&nbsp;</p>\n<p align="left"><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">&nbsp; &nbsp; &nbsp;សាកលវិទ្យាល័យមានជ័យ ត្រូវបានសម្រេចឲ្យបង្កើតដេប៉ាតឺម៉ង់ថ្នាក់ឆ្នាំសិក្សាមូលដ្ឋាន ដោយប្រកាសលេខ ១០២៧ អយក</span></span><span style="font-size: x-large;"><span style="font-size: medium;">. </span></span><span style="font-size: medium;"><span lang="hi-IN">ចុះថ្ងៃទី២៥ ខែមិថុនា ឆ្នាំ២០០៨ របស់ក្រសួងអប់រំ​ យុវជន និងកីឡា បានទទួល </span></span><span style="font-size: medium;"><strong>វិញ្ញាបនបត្រទទួលស្គាល់គុណភាពអប់រំ</strong></span><span style="font-size: medium;"> ពេញសិទ្ធិ លើការបណ្តុះបណ្តាលថ្នាក់ឆ្នាំសិក្សាមូលដ្ឋាន ២០០៨</span></span><span style="font-family: Content;"><span style="font-size: x-large;"><span style="font-size: medium;">-</span></span><span style="font-size: medium;"><span lang="hi-IN">២០០៩ លេខ គ</span></span><span style="font-size: x-large;"><span style="font-size: medium;">.</span></span><span style="font-size: medium;"><span lang="hi-IN">ទ</span></span><span style="font-size: x-large;"><span style="font-size: medium;">.</span></span><span style="font-size: medium;"><span lang="hi-IN">ក ០១១០០៩០៥ ចេញដោយគណៈកម្មាធិការទទួលស្គាល់គុណភាពអប់រំនៃកម្ពុជា</span></span><span style="font-size: x-large;"><span style="font-size: medium;">, </span></span><span style="font-size: medium;"><span lang="hi-IN">ត្រូវបានអនុញ្ញាតឲ្យបើកបណ្តុះ បណ្តាលថ្នាក់បរិញ្ញាបត្រជាន់ខ្ពស់ដោយប្រកសលេខ៦០១ អយក</span></span><span style="font-size: x-large;"><span style="font-size: medium;">.</span></span><span style="font-size: medium;"><span lang="hi-IN">ប្រក ចុះថ្ងៃទី០៥ ខែមីនា ឆ្នាំ២០០៩ ស្តីពីការបើក បណ្តុះបណ្តាលបរិញ្ញាបត្រជាន់ខ្ពស់នៅសាកលវិទ្យាល័យមានជ័យ។ តួនាទី ភារកិច្ច របស់មន្រ្តី និងរចនាសម្ព័ន្ធរបស់សាកលវិទ្យាល័យមានជ័យ ត្រូវបានសម្រេចដោយប្រកាសលេខ១០២៨ អយក</span></span><span style="font-size: x-large;"><span style="font-size: medium;">. </span></span><span style="font-size: medium;"><span lang="hi-IN">ចុះថ្ងៃទី២៥ ខែមិថុនា​ ឆ្នាំ២០១១ របស់ក្រសួងអប់រំ យុវជន និងកីឡា។</span></span></span></span></p>\n<p align="left">&nbsp;</p>\n<p><strong>&nbsp; &nbsp; &nbsp;Located in Banteay Meanchey, a rural province of Cambodia, Mean Chey University was founded in 2007 to rehabilitate and develop the human resources in the ex-bloody battle field region in the northwest of the country. Aligning with Cambodia&rsquo;s rectangular strategy, we have been working to provide equitable access to higher education, providing students with knowledge and skills responsive to labour market and the advancement of fourth industrial revolution.&nbsp; Within our university, we have planned to create a new Center of Excellence in an expertise of entrepreneurship, innovation and tourism with a strong support from our new university board and the Ministry of Education, Youth and Sports. The university will play a vital role in creating university&ndash;industry linkage for special economic zones development in the northwestern of Cambodia.</strong></p>\n<p>&nbsp;</p>\n<p><strong>&nbsp; &nbsp; &nbsp;Adding to research knowledge and skills, we educate students to value social harmony so as to preserve national culture of Cambodia. Furthermore, to keep pace with globalisation, we have been increasing and strengthening our research and innovation culture and effectively increasing national and international cooperation. We have been working with local and international organisations and educational institutions in the areas of capacity building, student and staff exchanges, cultural exchanges, joint programmes and joint research. We have been working closely in affiliation with eight public universities in Cambodia and other originations such as Korea International Cooperation Agency (KOICA), Japan International Cooperation Agency (JICA), Confucius (China), and several universities in Thailand, China, South Korea and USA.</strong></p>\n<p>&nbsp;</p>\n<p align="left"><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">Mean Chey University has 143 administrative and public teaching staffs. The university consists of five faculties, </span></span></span></span></p>\n<p align="left"><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">(i)&nbsp; &nbsp; The Faculty of Business Management</span></span></span></span></p>\n<p align="left"><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">(ii)&nbsp; &nbsp;T</span></span></span></span><span style="font-family: Content;"><span lang="hi-IN">he Faculty of Arts, </span></span><span style="font-family: Content;"><span lang="hi-IN">Humanities and Languages</span></span></p>\n<p align="left"><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">(iii)&nbsp; The Faculty of Science and Technology</span></span></span></span></p>\n<p align="left"><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">(iv)&nbsp; The Faculty of Agriculture and Food Processing</span></span></span></span></p>\n<p align="left"><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">(v)&nbsp; &nbsp;The Faculty of Sociology and Community Development</span></span></span></span></p>	2020-01-09 00:30:40	2020-03-09 06:19:34
14	Rector's Message	Rector's Message	<h1>&nbsp;</h1>\n<h1>&nbsp;</h1>\n<h2 style="text-align: center;"><strong>សារ របស់ឯកឧត្តមសាកលវិទ្យាធិការ&nbsp;</strong></h2>\n<p>&nbsp;</p>\n<p><strong><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e636b3d24a90-1583573821.jpg" alt="" width="70%" /><br /></strong></p>\n<p>&nbsp;</p>\n<h3><span style="color: #000000;"><span style="font-family: Khmer OS Content;"><span lang="km-KH">​<span style="font-size: medium;"><span lang="hi-IN">​​&nbsp; &nbsp; &nbsp; ការរីកចម្រើនដល់ចំណុចកំពូលនៃវិទ្យាសាស្រ្ត និងបច្ចេកវិទ្យានាសតវត្សទី២១ និងសាកលភាវូបនីយកម្ម បង្ហាញឲ្យឃើញច្បាស់ថា សមត្ថភាព ចំណេះដឹង និងជំនាញរបស់មនុស្សពិតជាវិវត្ត រីកចម្រើនឥតឈប់ឈរ ដែលអាចកំណត់ជោគវាសនាអនាគតខ្លួន សង្គមជាតិ ពិភពលោកទាំងមូល និងជាពិសេសធ្វើជាម្ចាស់នៃធម្មជាតិបាន ។ សក្តានុពលនៃសមត្ថភាព ដែលអ្នកដឹកនាំ អ្នកវិទ្យាសាស្រ្ត អ្នកបច្ចេកទេស កវី អ្នកនិពន្ធ អ្នកជំនួញ ...កំពុងមាន និងប្រើប្រាស់ទាំងអស់នៅលើសកលលោក គឺពិតជាបានមកដោយសារការសិក្សា អប់រំ ស្រាវជ្រាវ និងការអនុវត្តផ្ទាល់ ដែលទាមទារឲ្យមានការចូលរួម និងយកចិត្តទុកដាក់ខ្ពស់ពីអ្នកសិក្សា និងអ្នកជាប់ពាក់ព័ន្ធទាំងអស់ ស្របតាមទិសស្លោក &ldquo; <strong><em>ការអប់រំសម្រាប់ទាំងអស់គ្នា ទាំងអស់គ្នាដើម្បីការអប់រំ</em></strong> &rdquo;&nbsp; ។</span></span></span></span></span></h3>\n<h3>&nbsp;</h3>\n<h3><span style="color: #000000;"><span style="font-family: Khmer OS Content;"><span lang="km-KH">​<span style="font-size: medium;"><span lang="hi-IN">​&nbsp;&nbsp;&nbsp;&nbsp; ក្នុងនាមថ្នាក់ដឹកនាំ សាស្រ្តាចារ្យ បុគ្គលិក សាកលវិទ្យាល័យមានជ័យទាំងអស់ និងខ្លួនខ្ញុំផ្ទាល់ សូមប្តេជ្ញាថា នឹងខិតខំប្រឹងប្រែង ធ្វើឲ្យបានសម្រេចនូវចក្ខុវិស័យនៃផែនការ៥ឆ្នាំ ២០១១-២០១៦ របស់សាកលវិទ្យាល័យ ដើម្បីធានាបាននូវប្រសិទ្ធភាព និងគុណភាពក្នុងការបង្រៀន និងរៀន , ការបំពេញការងារប្រកបដោយឆន្ទះ មនសិការវិជ្ជាជីវៈ&nbsp; និងជំរុញលើកទឹកចិត្តការអភិវឌ្ឍការស្រាវជ្រាវរបស់សាស្រ្តាចារ្យ និងនិស្សិត ដើម្បីបង្កើនសមត្ថភាព ជំនាញ បទពិសោធ សីលធម៌ ប្រកបដោយឧត្តមភាព ជាពិសេស ការកែប្រែនិងអភិវឌ្ឍកម្មវិធីសិក្សា ឲ្យស្របតាមស្តង់ដារ ជាតិ តំបន់ និងអន្តរជាតិ និងតម្រូវការទីផ្សារការងារ ។ បន្ថែមពីនេះ សាកលវិទ្យាល័យមានជ័យ ក៏បានកំណត់ក្នុងបេសកកម្ម លើការលើកកម្ពស់ និងថែរក្សាវប្បធម៌ជាតិ ការបង្កើនសេវាសាធារណៈ&nbsp; ឯកជន និងសហគមន៍ និងការធ្វើសហប្រតិបត្តិការជាមួយដៃគូក្នុងស្រុកនិងក្រៅស្រុក ក្នុងន័យផ្លាស់ប្តូរកម្មវិធីសិក្សា បច្ចេកវិទ្យា ការស្រាវជ្រាវ របស់និស្សិត សាស្រ្តាចារ្យ &nbsp;ផ្លាស់ប្តូរវប្បធម៌ បង្កើនទំនាក់ទំនងមិត្តភាព សុខសន្តិភាព និងសុខដុមរមនីយកម្ម ។</span></span></span></span></span></h3>\n<h3>&nbsp;</h3>\n<h3><span style="color: #000000;"><span style="font-family: Khmer OS Content;"><span lang="km-KH">​<span style="font-size: medium;"><span lang="hi-IN">​&nbsp; &nbsp; &nbsp; ដូចនេះសូម ឯកឧត្តម លោកជំទាវ លោក លោកស្រីជាមាតាបិតា អាណាព្យាបាលនិស្សិត និង ប្អូនៗនិស្សិតទាំងពីរភេទ&nbsp; ផ្តល់ទំនុកចិត្តដល់សាកលវិទ្យាល័យមានជ័យ ថាពិតជានឹងផ្តល់សេវាបណ្តុះបណ្តាល ចំណេះដឹង ជំនាញ បទពិសោធន៌ និងការអប់រំ ប្រកបដោយប្រសិទ្ធភាព គុណភាព និងឧត្តមភាព នៅគ្រប់កម្រិត ដល់និស្សិតទាំងអស់ដែលបានចូលមកសិក្សា និងបញ្ចប់ការសិក្សាដោយជោគជ័យ ។</span></span></span></span></span></h3>\n<h3><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: medium;"><span lang="hi-IN">សូមគោរពជូននូវពុទ្ធពរទាំង៤ប្រការ គឺ អាយុ វណ្ណៈ សុខៈ ពលៈ កុំបីឃ្លៀងឃ្លាតឡើយ ។​</span></span></span></span></h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h3><strong>សូមអរគុណ !</strong></h3>\n<p>&nbsp;</p>\n<p><strong>&nbsp;</strong></p>\n<p>&nbsp;</p>\n<div class="mce-toc">&nbsp;</div>	2020-02-11 07:29:31	2020-03-09 06:10:24
11	Vision, Mission​ and Goal	Vision, Mission​ and Goal	<h1>&nbsp;</h1>\n<h1><img src="https://api.mcu.edu.kh/storage/5e42660440d67-1581409796.jpg" alt="" width="100%" /></h1>\n<p>&nbsp;</p>\n<hr />\n<h1><!-- pagebreak --></h1>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h1><span style="color: #4caf50;"><span style="font-family: Content;"><span style="font-size: 5rem;"><span lang="hi-IN"><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e4107d9b1884-1581320153.jpg" alt="" width="170" /></span></span></span></span></h1>\n<center>\n<p><span style="color: #4caf50;"><span style="font-family: Content;"><span style="font-size: 5rem;"><span lang="hi-IN">Vision</span></span></span></span></p>\n</center>\n<p>&nbsp;</p>\n<center>\n<p><span style="color: #000000;"><span style="font-family: Content;"><span style="font-size: 2rem;"><span lang="hi-IN">&nbsp; ​&nbsp;&nbsp;&nbsp; &nbsp;Mean Chey University will become a leading university in quality human resources training and in contribution to national development.</span></span></span></span></p>\n<h1>&nbsp;</h1>\n<p>&nbsp;</p>\n<center>\n<p>&nbsp;</p>\n<h1><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e41079209f6c-1581320082.jpg" alt="" width="170" height="" /></h1>\n<p><span style="color: #4caf50;"><span style="font-family: Content;"><span style="font-size: 5rem;"><span lang="hi-IN">Mission</span></span></span></span></p>\n</center>\n<p>&nbsp;</p>\n<h2>&nbsp; Offering knowledge and skills responsive to labor market</h2>\n<h2>&nbsp; Offering education, morality to turn students&nbsp; into good citizens&nbsp;</h2>\n<h2>&nbsp; Promoting protection and development of national culture</h2>\n<h2>&nbsp; Encouraging research and development&nbsp;</h2>\n<h2>&nbsp; Expand public, private and community services&nbsp;</h2>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<center>\n<p><span style="color: #4caf50;"><span style="font-family: Content;"><span style="font-size: 5rem;"><span lang="hi-IN"><img src="https://api.mcu.edu.kh/storage/5e41080becc79-1581320203.jpg" alt="" width="170" /></span></span></span></span></p>\n<p><span style="color: #4caf50;"><span style="font-family: Content;"><span style="font-size: 5rem;"><span lang="hi-IN">Goal</span></span></span></span></p>\n</center>\n<p>&nbsp;</p>\n<h2>Turning a bloody battle field into a quality human resources training center.</h2>\n<h2>Giving opportunities to students in the north-west part of Cambodia to undergo higher education, without leaving their villages and spending much money on travelling, food, and accommodation.</h2>\n<h2>Contributing to the national poverty reduction of the people, complying with the dimension in the rectangular strategies of the Royal Government of Cambodia</h2>\n<h2>From the date of commencement, M. C.U has always been paid attention by the head of the government, Ministry of Education, Youth and Sport, local authorities, people, and other stakeholders.</h2>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n</center>	2020-01-09 00:31:18	2020-02-11 08:32:46
13	Board of MCU	Board of MCU	<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><strong><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e4a511cea07e-1581928732.jpg" alt="" width="50%" /></strong></p>\n<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;">ឯកឧត្តម <strong>ស សុខា</strong></h1>\n<p>&nbsp;</p>\n<h3 style="text-align: center;">រដ្ឋលេខាធិការក្រសួងអប់រំ យុវជន និងកីឡា អនុប្រធានសហភាពសហព័ន្ធយុវជនកម្ពុជាទទួលបន្ទុកខេត្តបន្ទាយមានជ័យ បាត់ដំបង ព្រៃវែង , ប្រធានក្រុមប្រឹក្សាភិបាល</h3>\n<h3 style="text-align: center;"><strong>សាកលវិទ្យាល័យមានជ័យ</strong></h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2 style="text-align: center;"><strong>H.E Sar Sokha</strong></h2>\n<h3 style="text-align: center;"><strong>Secretary of State of Ministry of Education Youth and Sport , and Vice director of Union of Youth Federation of Cambodia takes charge of helping Banteay Mean Chey , Battambang, Prey Veng province, and also the chairman of board of Meanchey university.</strong></h3>\n<p>&nbsp;</p>\n<h1 style="text-align: center;">&nbsp;</h1>\n<p style="text-align: center;">&weierp;&weierp;&weierp;&weierp;&weierp;&weierp;</p>\n<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;"><strong>Structure</strong></h1>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><strong><img src="https://api.mcu.edu.kh/storage/5e6b2bba44620-1584081850.jpg" alt="" width="100%" /></strong></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	2020-01-09 00:31:46	2020-03-13 06:47:55
\.


--
-- Data for Name: aoc_names; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.aoc_names (id, name, created_at, updated_at) FROM stdin;
1	Faculty of Arts, Humanities, and Language	2020-01-08 23:51:20	2020-01-08 23:51:20
2	Faculty of Science and Technology	2020-01-08 23:51:40	2020-01-08 23:51:40
3	Faculty of Sociology and Community Development	2020-01-08 23:52:14	2020-01-08 23:52:14
4	Faculty of Business Management and Tourism	2020-01-08 23:52:46	2020-01-08 23:52:46
5	Faculty of Agriculture and Food Processing	2020-01-08 23:53:08	2020-01-08 23:53:08
6	Research and Development Office	2020-01-08 23:56:51	2020-01-08 23:56:51
7	International Relation Office	2020-01-08 23:57:05	2020-01-08 23:57:05
8	IQA Office	2020-01-08 23:57:52	2020-01-08 23:57:52
9	ICT	2020-01-08 23:57:56	2020-01-08 23:57:56
10	Account Office	2020-01-08 23:58:04	2020-01-08 23:58:04
13	Dormitory and Sport Center	2020-01-08 23:59:24	2020-01-08 23:59:24
14	Students Association	2020-01-08 23:59:48	2020-01-08 23:59:48
15	Founder	2020-01-09 00:15:48	2020-01-09 00:15:48
16	History	2020-01-09 00:16:00	2020-01-09 00:16:00
17	Vision, Mission and Goal	2020-01-09 00:16:58	2020-01-09 00:16:58
18	Organization Structure	2020-01-09 00:17:32	2020-01-09 00:17:32
19	Board of MCU	2020-01-09 00:17:44	2020-01-09 00:17:44
20	Academic Affairs Office	2020-01-20 03:49:20	2020-01-20 03:49:20
21	Administration Office	2020-02-07 08:21:52	2020-02-07 08:21:52
22	Rector's Speech	2020-02-11 07:28:20	2020-02-11 07:28:20
23	Foundation Year	2020-03-05 05:33:04	2020-03-05 05:33:04
\.


--
-- Data for Name: banners; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.banners (id, title, banner, status, created_at, updated_at) FROM stdin;
8	.	https://api.mcu.edu.kh/storage/5ed8cbabb9617-1591266219.jpg	t	2020-06-04 10:23:45	2020-06-04 10:23:51
5	Welcome To Mean Chey University	https://api.mcu.edu.kh/storage/5e6358c87ba7f-1583569096.jpg	f	2020-03-07 08:18:37	2020-04-28 10:05:11
4	Mean Chey University, Graduate School	https://api.mcu.edu.kh/storage/5e4a0413d69f8-1581909011.jpg	f	2020-02-17 03:11:11	2020-02-17 03:11:17
1	Graduate School	https://api.mcu.edu.kh/storage/5e160eba254c8-1578503866.jpg	f	2020-01-08 17:17:50	2020-02-06 15:59:57
6	សេចក្ដីជូនដំណឹង	https://api.mcu.edu.kh/storage/5e6f3c22cb451-1584348194.jpg	f	2020-03-16 08:43:48	2020-03-16 11:22:53
\.


--
-- Data for Name: collaborations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.collaborations (id, logo, org_name, description, created_at, updated_at, url) FROM stdin;
1	https://api.mcu.edu.kh/storage/5e4b95cb9ca05-1582011851.jpg	RAMBHAI BARNI RAJABHAT University	student exchange and academic visit twice \nFrom: Thailand	2020-02-18 07:39:34	2020-02-18 07:44:15	http://www.mcu.edu.kh/
2	https://api.mcu.edu.kh/storage/5e4b95e16d95b-1582011873.jpg	Ubon Ratchathani University	student exchange, Cultural Exchange  and academic visit twice\nFrom: Thailand	2020-02-18 07:45:10	2020-02-18 07:45:10	http://www.mcu.edu.kh/
3	https://api.mcu.edu.kh/storage/5e4b96994ddbe-1582012057.jpg	Rajamangala University of Technology Thanyaburi	student exchange, Cultural Exchange  and academic visit several times\nFrom: Thailand	2020-02-18 07:48:10	2020-02-18 07:48:10	http://www.mcu.edu.kh/
4	https://api.mcu.edu.kh/storage/5e4b97c97509c-1582012361.jpg	Prince  of  Songla  University	Cultural  exchange,  \nFrom: Thailand	2020-02-18 07:53:43	2020-02-18 07:53:43	http://www.mcu.edu.kh/
5	https://api.mcu.edu.kh/storage/5e4b982fcd9b6-1582012463.jpg	Silla  University	student exchange, Cultural Exchange  and academic visit several times\nFrom: Korea	2020-02-18 07:54:46	2020-02-18 07:54:46	http://www.mcu.edu.kh/
6	https://api.mcu.edu.kh/storage/5e4b9974f3894-1582012788.jpg	Korea International Cooperation  Agency	Korea International Cooperation  Agency  \nFrom: Korea	2020-02-18 08:00:32	2020-02-18 08:00:32	http://www.mcu.edu.kh/
7	https://api.mcu.edu.kh/storage/5e4b99cbad381-1582012875.jpg	National University of  Mongolia	From: Mongolia	2020-02-18 08:01:44	2020-02-18 08:01:44	http://www.mcu.edu.kh/
8	https://api.mcu.edu.kh/storage/5e4b9a6a497a9-1582013034.jpg	Yunnan Vocational and Technical College of Agriculture ( Yunnan , People’s Republic of China	From: China	2020-02-18 08:04:34	2020-02-18 08:04:34	http://www.mcu.edu.kh/
9	https://api.mcu.edu.kh/storage/5e4b9b2ab2bea-1582013226.jpg	International Peace leadership College (IPLC, Philippine )	From: Philippine	2020-02-18 08:07:27	2020-02-18 08:07:27	http://www.mcu.edu.kh/
10	https://api.mcu.edu.kh/storage/5e4b9b74e2be3-1582013300.jpg	Chonnam National University	From: Korea	2020-02-18 08:08:36	2020-02-18 08:08:36	http://www.mcu.edu.kh/
12	https://api.mcu.edu.kh/storage/5e4b9ca5cf2d1-1582013605.jpg	Japan International Cooperation Agency	From: Japan	2020-02-18 08:13:30	2020-02-18 08:13:30	http://www.mcu.edu.kh/
13	https://api.mcu.edu.kh/storage/5e4b9ccbdfadc-1582013643.jpg	BURAPHA University	From: Thailand	2020-02-18 08:14:18	2020-02-18 08:14:18	http://www.mcu.edu.kh/
14	https://api.mcu.edu.kh/storage/5e4b9d070255f-1582013703.jpg	SANGMYUNG University	From: Korea	2020-02-18 08:15:18	2020-02-18 08:15:18	http://www.mcu.edu.kh/
15	https://api.mcu.edu.kh/storage/5e4b9d36ed0bc-1582013750.jpg	Sun Moon University	From: Korea	2020-02-18 08:16:02	2020-02-18 08:16:02	http://www.mcu.edu.kh/
11	https://api.mcu.edu.kh/storage/5e4b9dceb4996-1582013902.jpg	Confucius Institute of Royal Academy of Cambodia	From: Cambodia	2020-02-18 08:10:23	2020-02-18 08:18:27	http://www.mcu.edu.kh/
16	https://api.mcu.edu.kh/storage/5e4cdd1a03154-1582095642.jpg	KUBUTA	Internship and providing agricultural equipment	2020-02-19 07:01:06	2020-02-19 07:01:06	http://www.mcu.edu.kh/
17	https://api.mcu.edu.kh/storage/5e4cdda3e68ae-1582095779.jpg	Surin Rajabhat University	Student exchange, \nJoin workshop,\nand Conference.\nFrom: Thailand	2020-02-19 07:03:28	2020-02-19 07:04:04	http://www.mcu.edu.kh/
18	https://api.mcu.edu.kh/storage/5e4cde636da74-1582095971.jpg	Pibul Songram Rajabhat University	Student exchange,\nJoin workshop,\nand Conference ,\nTraining Course on IT and Agriculture. From: Thailand	2020-02-19 07:07:03	2020-02-19 07:07:03	http://www.mcu.edu.kh/
19	https://api.mcu.edu.kh/storage/5e4cdf0bb8180-1582096139.jpg	Tian Jin University	Cultural  exchange,\n, Student exchange\n, Join workshop\nand Conference \n Training Course on IT and Agriculture\nFrom: Chines	2020-02-19 07:09:53	2020-02-19 07:09:53	http://www.mcu.edu.kh/
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: galleries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.galleries (id, thumb, title, created_at, updated_at) FROM stdin;
1	https://api.mcu.edu.kh/storage/5e160e4c8a321-1578503756.jpg	corporation	2020-01-08 17:16:55	2020-01-08 17:16:55
9	https://api.mcu.edu.kh/storage/5e5cc15e309b0-1583137118.jpg	Final Exam Semester 1 of Mean chey University	2020-03-02 08:20:09	2020-03-02 08:20:09
10	https://api.mcu.edu.kh/storage/5e5cc9bb8a04f-1583139259.jpg	Mean Chey University Campus	2020-03-02 09:14:55	2020-03-02 09:14:55
11	https://api.mcu.edu.kh/storage/5e5ccec663178-1583140550.jpg	Barcamp Banteay Meanchey, Mean Chey University	2020-03-02 09:16:16	2020-03-02 09:16:16
12	https://api.mcu.edu.kh/storage/5e5cd2b534bb5-1583141557.jpg	MCU Sport	2020-03-02 09:32:53	2020-03-02 09:32:53
13	https://api.mcu.edu.kh/storage/5e621f13c3016-1583488787.jpg	RBRU Student Exchange at Thailand	2020-03-06 10:02:21	2020-03-06 10:02:21
14	https://api.mcu.edu.kh/storage/5e621fe2212a7-1583488994.jpg	The Champion ofFBMT MCU CUP 2019	2020-03-06 10:03:45	2020-03-06 10:03:45
15	https://api.mcu.edu.kh/storage/5e622029a4cdc-1583489065.jpg	RBRU International X-change Camp 2019 at Thailand	2020-03-06 10:05:20	2020-03-06 10:05:20
16	https://api.mcu.edu.kh/storage/5e6220ae29eb1-1583489198.jpg	UniKL Student Exchange 2019 at Malaysia	2020-03-06 10:07:43	2020-03-06 10:07:43
17	https://api.mcu.edu.kh/storage/5e62212e95d48-1583489326.jpg	Students Exchange from RBRU, Thailand	2020-03-06 10:09:29	2020-03-06 10:09:29
18	https://api.mcu.edu.kh/storage/5e62219a05cb6-1583489434.jpg	FBMT Party Activities	2020-03-06 10:10:51	2020-03-06 10:10:51
19	https://api.mcu.edu.kh/storage/5e622202b4cc5-1583489538.jpg	MCU New Year Party	2020-03-06 10:12:43	2020-03-06 10:12:43
6	https://api.mcu.edu.kh/storage/5e49fcb604057-1581907126.jpg	Quality Assurance and Curriculum Design and Evaluation	2020-02-17 02:39:13	2020-03-08 09:24:36
\.


--
-- Data for Name: gallery_albums; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.gallery_albums (id, gallery_id, path, created_at, updated_at) FROM stdin;
1	1	https://api.mcu.edu.kh/storage/5e160e811f7ac-1578503809.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
2	1	https://api.mcu.edu.kh/storage/5e160e80143ac-1578503808.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
3	1	https://api.mcu.edu.kh/storage/5e160e7fca7ca-1578503807.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
4	1	https://api.mcu.edu.kh/storage/5e160e7db0e2c-1578503805.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
5	1	https://api.mcu.edu.kh/storage/5e160e7e24e95-1578503806.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
6	1	https://api.mcu.edu.kh/storage/5e160e7b79c5d-1578503803.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
7	1	https://api.mcu.edu.kh/storage/5e160e7b89a0d-1578503803.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
8	1	https://api.mcu.edu.kh/storage/5e160e7a6e558-1578503802.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
9	1	https://api.mcu.edu.kh/storage/5e160e7a14025-1578503802.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
10	1	https://api.mcu.edu.kh/storage/5e160e78a332d-1578503800.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
11	1	https://api.mcu.edu.kh/storage/5e160e785b75c-1578503800.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
12	1	https://api.mcu.edu.kh/storage/5e160e7750322-1578503799.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
13	1	https://api.mcu.edu.kh/storage/5e160e761b231-1578503798.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
14	1	https://api.mcu.edu.kh/storage/5e160e75cc5b3-1578503797.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
15	1	https://api.mcu.edu.kh/storage/5e160e7553f64-1578503797.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
16	1	https://api.mcu.edu.kh/storage/5e160e74dd37a-1578503796.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
17	1	https://api.mcu.edu.kh/storage/5e160e72d66c3-1578503794.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
18	1	https://api.mcu.edu.kh/storage/5e160e72aa8b0-1578503794.jpg	2020-01-08 17:16:55	2020-01-08 17:16:55
27	6	https://api.mcu.edu.kh/storage/5e49fcaf52b62-1581907119.jpg	2020-02-17 02:39:13	2020-02-17 02:39:13
28	6	https://api.mcu.edu.kh/storage/5e49fcae93385-1581907118.jpg	2020-02-17 02:39:13	2020-02-17 02:39:13
29	6	https://api.mcu.edu.kh/storage/5e49fcae26a9d-1581907118.jpg	2020-02-17 02:39:13	2020-02-17 02:39:13
30	6	https://api.mcu.edu.kh/storage/5e49fcadddfd8-1581907117.jpg	2020-02-17 02:39:13	2020-02-17 02:39:13
44	9	https://api.mcu.edu.kh/storage/5e5cc195774ba-1583137173.jpg	2020-03-02 08:20:09	2020-03-02 08:20:09
45	9	https://api.mcu.edu.kh/storage/5e5cc194df843-1583137172.jpg	2020-03-02 08:20:09	2020-03-02 08:20:09
46	9	https://api.mcu.edu.kh/storage/5e5cc19420ba1-1583137172.jpg	2020-03-02 08:20:09	2020-03-02 08:20:09
47	9	https://api.mcu.edu.kh/storage/5e5cc193acf6b-1583137171.jpg	2020-03-02 08:20:09	2020-03-02 08:20:09
48	9	https://api.mcu.edu.kh/storage/5e5cc1932eda5-1583137171.jpg	2020-03-02 08:20:09	2020-03-02 08:20:09
49	9	https://api.mcu.edu.kh/storage/5e5cc19200054-1583137170.jpg	2020-03-02 08:20:09	2020-03-02 08:20:09
50	9	https://api.mcu.edu.kh/storage/5e5cc191ec81b-1583137169.jpg	2020-03-02 08:20:09	2020-03-02 08:20:09
51	9	https://api.mcu.edu.kh/storage/5e5cc19178318-1583137169.jpg	2020-03-02 08:20:09	2020-03-02 08:20:09
52	9	https://api.mcu.edu.kh/storage/5e5cc19093e99-1583137168.jpg	2020-03-02 08:20:09	2020-03-02 08:20:09
53	9	https://api.mcu.edu.kh/storage/5e5cc19089e6c-1583137168.jpg	2020-03-02 08:20:09	2020-03-02 08:20:09
54	10	https://api.mcu.edu.kh/storage/5e5cce8839da1-1583140488.jpg	2020-03-02 09:14:55	2020-03-02 09:14:55
55	10	https://api.mcu.edu.kh/storage/5e5cce3dec3b2-1583140413.jpg	2020-03-02 09:14:55	2020-03-02 09:14:55
56	10	https://api.mcu.edu.kh/storage/5e5ccd786eb8f-1583140216.jpg	2020-03-02 09:14:55	2020-03-02 09:14:55
57	10	https://api.mcu.edu.kh/storage/5e5ccd55b8ada-1583140181.jpg	2020-03-02 09:14:55	2020-03-02 09:14:55
58	10	https://api.mcu.edu.kh/storage/5e5ccd241b417-1583140132.jpg	2020-03-02 09:14:55	2020-03-02 09:14:55
59	10	https://api.mcu.edu.kh/storage/5e5ccd23b46b4-1583140131.jpg	2020-03-02 09:14:55	2020-03-02 09:14:55
60	10	https://api.mcu.edu.kh/storage/5e5ccd235d88c-1583140131.jpg	2020-03-02 09:14:55	2020-03-02 09:14:55
61	10	https://api.mcu.edu.kh/storage/5e5ccd226a585-1583140130.jpg	2020-03-02 09:14:55	2020-03-02 09:14:55
62	10	https://api.mcu.edu.kh/storage/5e5ccd220d214-1583140130.jpg	2020-03-02 09:14:55	2020-03-02 09:14:55
63	10	https://api.mcu.edu.kh/storage/5e5cca51811ff-1583139409.jpg	2020-03-02 09:14:55	2020-03-02 09:14:55
64	10	https://api.mcu.edu.kh/storage/5e5cca4c45124-1583139404.jpg	2020-03-02 09:14:55	2020-03-02 09:14:55
65	10	https://api.mcu.edu.kh/storage/5e5cca46642d1-1583139398.jpg	2020-03-02 09:14:55	2020-03-02 09:14:55
66	10	https://api.mcu.edu.kh/storage/5e5cca3fce015-1583139391.jpg	2020-03-02 09:14:55	2020-03-02 09:14:55
67	10	https://api.mcu.edu.kh/storage/5e5cca39c08b3-1583139385.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
68	10	https://api.mcu.edu.kh/storage/5e5cc9e553cbd-1583139301.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
69	10	https://api.mcu.edu.kh/storage/5e5cc9e514615-1583139301.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
70	10	https://api.mcu.edu.kh/storage/5e5cc9e48b9ee-1583139300.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
71	10	https://api.mcu.edu.kh/storage/5e5cc9e45dde6-1583139300.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
72	10	https://api.mcu.edu.kh/storage/5e5cc9e38e820-1583139299.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
73	10	https://api.mcu.edu.kh/storage/5e5cc9e3806bc-1583139299.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
74	10	https://api.mcu.edu.kh/storage/5e5cc9e3027c2-1583139299.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
75	10	https://api.mcu.edu.kh/storage/5e5cc9e2822cc-1583139298.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
76	10	https://api.mcu.edu.kh/storage/5e5cc9e1c34ea-1583139297.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
77	10	https://api.mcu.edu.kh/storage/5e5cc9e1a25bb-1583139297.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
78	10	https://api.mcu.edu.kh/storage/5e5cc9e1257a0-1583139297.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
79	10	https://api.mcu.edu.kh/storage/5e5cc9e098559-1583139296.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
80	10	https://api.mcu.edu.kh/storage/5e5cc9e05c9ab-1583139296.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
81	10	https://api.mcu.edu.kh/storage/5e5cc9dfc2538-1583139295.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
82	10	https://api.mcu.edu.kh/storage/5e5cc9df8919a-1583139295.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
83	10	https://api.mcu.edu.kh/storage/5e5cc9ded16d4-1583139294.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
84	10	https://api.mcu.edu.kh/storage/5e5cc9deb17f2-1583139294.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
85	10	https://api.mcu.edu.kh/storage/5e5cc9ddb4727-1583139293.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
86	10	https://api.mcu.edu.kh/storage/5e5cc9dd85551-1583139293.jpg	2020-03-02 09:14:56	2020-03-02 09:14:56
87	11	https://api.mcu.edu.kh/storage/5e5cced7b1ae3-1583140567.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
88	11	https://api.mcu.edu.kh/storage/5e5cced748de5-1583140567.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
89	11	https://api.mcu.edu.kh/storage/5e5cced6c3a4d-1583140566.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
90	11	https://api.mcu.edu.kh/storage/5e5cced67d80c-1583140566.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
91	11	https://api.mcu.edu.kh/storage/5e5cced5be501-1583140565.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
92	11	https://api.mcu.edu.kh/storage/5e5cced53ef56-1583140565.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
93	11	https://api.mcu.edu.kh/storage/5e5cced4b9dab-1583140564.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
94	11	https://api.mcu.edu.kh/storage/5e5cced404557-1583140564.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
95	11	https://api.mcu.edu.kh/storage/5e5cced3a16b4-1583140563.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
96	11	https://api.mcu.edu.kh/storage/5e5cced34f0e8-1583140563.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
97	11	https://api.mcu.edu.kh/storage/5e5cced2ae21a-1583140562.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
98	11	https://api.mcu.edu.kh/storage/5e5cced258d13-1583140562.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
99	11	https://api.mcu.edu.kh/storage/5e5cced1e8349-1583140561.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
100	11	https://api.mcu.edu.kh/storage/5e5cced131376-1583140561.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
101	11	https://api.mcu.edu.kh/storage/5e5cced0d6b99-1583140560.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
102	11	https://api.mcu.edu.kh/storage/5e5cced07b5b3-1583140560.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
103	11	https://api.mcu.edu.kh/storage/5e5ccecfd58ce-1583140559.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
104	11	https://api.mcu.edu.kh/storage/5e5ccecfc1d31-1583140559.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
105	11	https://api.mcu.edu.kh/storage/5e5cceced3e0a-1583140558.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
106	11	https://api.mcu.edu.kh/storage/5e5cceced3b48-1583140558.jpg	2020-03-02 09:16:16	2020-03-02 09:16:16
107	12	https://api.mcu.edu.kh/storage/5e5cd2c384f4a-1583141571.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
108	12	https://api.mcu.edu.kh/storage/5e5cd2c2cf94b-1583141570.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
109	12	https://api.mcu.edu.kh/storage/5e5cd2c2c78c2-1583141570.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
110	12	https://api.mcu.edu.kh/storage/5e5cd2c25d2c9-1583141570.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
111	12	https://api.mcu.edu.kh/storage/5e5cd2c220112-1583141570.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
112	12	https://api.mcu.edu.kh/storage/5e5cd2c1ec9d4-1583141569.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
113	12	https://api.mcu.edu.kh/storage/5e5cd2c14738a-1583141569.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
114	12	https://api.mcu.edu.kh/storage/5e5cd2c13d479-1583141569.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
115	12	https://api.mcu.edu.kh/storage/5e5cd2c0719a4-1583141568.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
116	12	https://api.mcu.edu.kh/storage/5e5cd2c042468-1583141568.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
117	12	https://api.mcu.edu.kh/storage/5e5cd2bfcbc0c-1583141567.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
118	12	https://api.mcu.edu.kh/storage/5e5cd2bf8ba9e-1583141567.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
119	12	https://api.mcu.edu.kh/storage/5e5cd2bf05cff-1583141567.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
120	12	https://api.mcu.edu.kh/storage/5e5cd2bee275e-1583141566.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
121	12	https://api.mcu.edu.kh/storage/5e5cd2be5ccee-1583141566.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
122	12	https://api.mcu.edu.kh/storage/5e5cd2be496a8-1583141566.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
123	12	https://api.mcu.edu.kh/storage/5e5cd2bd89e00-1583141565.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
124	12	https://api.mcu.edu.kh/storage/5e5cd2bd5b263-1583141565.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
125	12	https://api.mcu.edu.kh/storage/5e5cd2bcd2dde-1583141564.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
126	12	https://api.mcu.edu.kh/storage/5e5cd2bcac75d-1583141564.jpg	2020-03-02 09:32:53	2020-03-02 09:32:53
127	13	https://api.mcu.edu.kh/storage/5e621ee86c291-1583488744.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
128	13	https://api.mcu.edu.kh/storage/5e621ee859432-1583488744.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
129	13	https://api.mcu.edu.kh/storage/5e621ee7f0f72-1583488743.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
130	13	https://api.mcu.edu.kh/storage/5e621ee7d0878-1583488743.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
131	13	https://api.mcu.edu.kh/storage/5e621ee79e3d4-1583488743.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
132	13	https://api.mcu.edu.kh/storage/5e621ee77bd45-1583488743.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
133	13	https://api.mcu.edu.kh/storage/5e621ee73ccd4-1583488743.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
134	13	https://api.mcu.edu.kh/storage/5e621ee6a8fa6-1583488742.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
135	13	https://api.mcu.edu.kh/storage/5e621ee69d121-1583488742.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
136	13	https://api.mcu.edu.kh/storage/5e621ee645a54-1583488742.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
137	13	https://api.mcu.edu.kh/storage/5e621ee610b03-1583488742.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
138	13	https://api.mcu.edu.kh/storage/5e621ee5d866e-1583488741.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
139	13	https://api.mcu.edu.kh/storage/5e621ee585724-1583488741.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
140	13	https://api.mcu.edu.kh/storage/5e621ee54506f-1583488741.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
141	13	https://api.mcu.edu.kh/storage/5e621ee4e2272-1583488740.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
142	13	https://api.mcu.edu.kh/storage/5e621ee4e307a-1583488740.jpg	2020-03-06 10:02:21	2020-03-06 10:02:21
143	14	https://api.mcu.edu.kh/storage/5e621fe253798-1583488994.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
144	14	https://api.mcu.edu.kh/storage/5e621fe1c4504-1583488993.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
145	14	https://api.mcu.edu.kh/storage/5e621fe1b9098-1583488993.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
146	14	https://api.mcu.edu.kh/storage/5e621fe13aae2-1583488993.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
147	14	https://api.mcu.edu.kh/storage/5e621fe133f51-1583488993.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
148	14	https://api.mcu.edu.kh/storage/5e621fe0a2cf9-1583488992.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
149	14	https://api.mcu.edu.kh/storage/5e621fe09bd65-1583488992.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
150	14	https://api.mcu.edu.kh/storage/5e621fe013b60-1583488992.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
151	14	https://api.mcu.edu.kh/storage/5e621fe013159-1583488992.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
152	14	https://api.mcu.edu.kh/storage/5e621fdf81106-1583488991.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
153	14	https://api.mcu.edu.kh/storage/5e621fdf7ca48-1583488991.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
154	14	https://api.mcu.edu.kh/storage/5e621fdf292bb-1583488991.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
155	14	https://api.mcu.edu.kh/storage/5e621fdeed669-1583488990.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
156	14	https://api.mcu.edu.kh/storage/5e621fde94ad6-1583488990.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
157	14	https://api.mcu.edu.kh/storage/5e621fde5e79c-1583488990.jpg	2020-03-06 10:03:45	2020-03-06 10:03:45
158	15	https://api.mcu.edu.kh/storage/5e62202243217-1583489058.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
159	15	https://api.mcu.edu.kh/storage/5e622021ed4f9-1583489057.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
160	15	https://api.mcu.edu.kh/storage/5e622021df17c-1583489057.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
161	15	https://api.mcu.edu.kh/storage/5e62202156eda-1583489057.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
162	15	https://api.mcu.edu.kh/storage/5e62202156ce1-1583489057.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
163	15	https://api.mcu.edu.kh/storage/5e622020b5702-1583489056.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
164	15	https://api.mcu.edu.kh/storage/5e622020b1051-1583489056.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
165	15	https://api.mcu.edu.kh/storage/5e6220205e347-1583489056.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
166	15	https://api.mcu.edu.kh/storage/5e62202025792-1583489056.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
167	15	https://api.mcu.edu.kh/storage/5e62202002c17-1583489056.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
168	15	https://api.mcu.edu.kh/storage/5e62201f8a3f3-1583489055.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
169	15	https://api.mcu.edu.kh/storage/5e62201f6bb60-1583489055.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
170	15	https://api.mcu.edu.kh/storage/5e62201f31048-1583489055.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
171	15	https://api.mcu.edu.kh/storage/5e62201e9d3f1-1583489054.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
172	15	https://api.mcu.edu.kh/storage/5e62201e97756-1583489054.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
173	15	https://api.mcu.edu.kh/storage/5e62201e16c62-1583489054.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
174	15	https://api.mcu.edu.kh/storage/5e62201e0f298-1583489054.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
175	15	https://api.mcu.edu.kh/storage/5e62201db72d4-1583489053.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
176	15	https://api.mcu.edu.kh/storage/5e62201d7be7f-1583489053.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
177	15	https://api.mcu.edu.kh/storage/5e62201d2edf0-1583489053.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
178	15	https://api.mcu.edu.kh/storage/5e62201cae0cd-1583489052.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
179	15	https://api.mcu.edu.kh/storage/5e62201c9add8-1583489052.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
180	15	https://api.mcu.edu.kh/storage/5e62201c21d51-1583489052.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
181	15	https://api.mcu.edu.kh/storage/5e62201c12254-1583489052.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
182	15	https://api.mcu.edu.kh/storage/5e62201b85cf1-1583489051.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
183	15	https://api.mcu.edu.kh/storage/5e62201b7d17e-1583489051.jpg	2020-03-06 10:05:20	2020-03-06 10:05:20
184	15	https://api.mcu.edu.kh/storage/5e62201aea5e0-1583489050.jpg	2020-03-06 10:05:21	2020-03-06 10:05:21
185	15	https://api.mcu.edu.kh/storage/5e62201ae61c5-1583489050.jpg	2020-03-06 10:05:21	2020-03-06 10:05:21
186	15	https://api.mcu.edu.kh/storage/5e62201a924cd-1583489050.jpg	2020-03-06 10:05:21	2020-03-06 10:05:21
187	15	https://api.mcu.edu.kh/storage/5e62201a60ec5-1583489050.jpg	2020-03-06 10:05:21	2020-03-06 10:05:21
188	15	https://api.mcu.edu.kh/storage/5e622019cca44-1583489049.jpg	2020-03-06 10:05:21	2020-03-06 10:05:21
189	15	https://api.mcu.edu.kh/storage/5e622019ca72a-1583489049.jpg	2020-03-06 10:05:21	2020-03-06 10:05:21
190	16	https://api.mcu.edu.kh/storage/5e6220a5b2791-1583489189.jpg	2020-03-06 10:07:43	2020-03-06 10:07:43
191	16	https://api.mcu.edu.kh/storage/5e6220a56bdfe-1583489189.jpg	2020-03-06 10:07:43	2020-03-06 10:07:43
192	16	https://api.mcu.edu.kh/storage/5e6220a526a89-1583489189.jpg	2020-03-06 10:07:43	2020-03-06 10:07:43
193	16	https://api.mcu.edu.kh/storage/5e6220a4cef5d-1583489188.jpg	2020-03-06 10:07:43	2020-03-06 10:07:43
194	16	https://api.mcu.edu.kh/storage/5e6220a48ec3f-1583489188.jpg	2020-03-06 10:07:43	2020-03-06 10:07:43
195	16	https://api.mcu.edu.kh/storage/5e6220a4120a9-1583489188.jpg	2020-03-06 10:07:43	2020-03-06 10:07:43
196	16	https://api.mcu.edu.kh/storage/5e6220a4081f4-1583489188.jpg	2020-03-06 10:07:43	2020-03-06 10:07:43
197	16	https://api.mcu.edu.kh/storage/5e6220a3916f7-1583489187.jpg	2020-03-06 10:07:43	2020-03-06 10:07:43
198	16	https://api.mcu.edu.kh/storage/5e6220a35bcb9-1583489187.jpg	2020-03-06 10:07:43	2020-03-06 10:07:43
199	16	https://api.mcu.edu.kh/storage/5e6220a307b9a-1583489187.jpg	2020-03-06 10:07:43	2020-03-06 10:07:43
200	16	https://api.mcu.edu.kh/storage/5e6220a30546c-1583489187.jpg	2020-03-06 10:07:43	2020-03-06 10:07:43
201	17	https://api.mcu.edu.kh/storage/5e622128c12d2-1583489320.jpg	2020-03-06 10:09:29	2020-03-06 10:09:29
202	17	https://api.mcu.edu.kh/storage/5e622128bf5f6-1583489320.jpg	2020-03-06 10:09:29	2020-03-06 10:09:29
203	17	https://api.mcu.edu.kh/storage/5e62212868bed-1583489320.jpg	2020-03-06 10:09:29	2020-03-06 10:09:29
204	17	https://api.mcu.edu.kh/storage/5e6221283908d-1583489320.jpg	2020-03-06 10:09:29	2020-03-06 10:09:29
205	17	https://api.mcu.edu.kh/storage/5e622127d5648-1583489319.jpg	2020-03-06 10:09:29	2020-03-06 10:09:29
206	17	https://api.mcu.edu.kh/storage/5e622127a4138-1583489319.jpg	2020-03-06 10:09:29	2020-03-06 10:09:29
207	17	https://api.mcu.edu.kh/storage/5e6221274e518-1583489319.jpg	2020-03-06 10:09:29	2020-03-06 10:09:29
208	17	https://api.mcu.edu.kh/storage/5e6221271c26f-1583489319.jpg	2020-03-06 10:09:29	2020-03-06 10:09:29
209	17	https://api.mcu.edu.kh/storage/5e62212684e80-1583489318.jpg	2020-03-06 10:09:29	2020-03-06 10:09:29
210	17	https://api.mcu.edu.kh/storage/5e62212684ed3-1583489318.jpg	2020-03-06 10:09:29	2020-03-06 10:09:29
211	18	https://api.mcu.edu.kh/storage/5e622194ac794-1583489428.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
212	18	https://api.mcu.edu.kh/storage/5e6221943b89c-1583489428.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
213	18	https://api.mcu.edu.kh/storage/5e6221942306c-1583489428.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
214	18	https://api.mcu.edu.kh/storage/5e622193c4c5d-1583489427.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
215	18	https://api.mcu.edu.kh/storage/5e6221939ab39-1583489427.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
216	18	https://api.mcu.edu.kh/storage/5e6221932ea8f-1583489427.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
217	18	https://api.mcu.edu.kh/storage/5e6221932f1e1-1583489427.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
218	18	https://api.mcu.edu.kh/storage/5e622192ce385-1583489426.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
219	18	https://api.mcu.edu.kh/storage/5e622192b0b90-1583489426.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
220	18	https://api.mcu.edu.kh/storage/5e622192779f5-1583489426.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
221	18	https://api.mcu.edu.kh/storage/5e6221922628e-1583489426.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
222	18	https://api.mcu.edu.kh/storage/5e622191e0fe8-1583489425.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
223	18	https://api.mcu.edu.kh/storage/5e622191619d4-1583489425.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
224	18	https://api.mcu.edu.kh/storage/5e62219146dbd-1583489425.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
225	18	https://api.mcu.edu.kh/storage/5e6221910cb41-1583489425.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
226	18	https://api.mcu.edu.kh/storage/5e622190e3385-1583489424.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
227	18	https://api.mcu.edu.kh/storage/5e62219085f5a-1583489424.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
228	18	https://api.mcu.edu.kh/storage/5e6221907d2c4-1583489424.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
229	18	https://api.mcu.edu.kh/storage/5e62218fd6354-1583489423.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
230	18	https://api.mcu.edu.kh/storage/5e62218fd2152-1583489423.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
231	18	https://api.mcu.edu.kh/storage/5e62218f817d0-1583489423.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
232	18	https://api.mcu.edu.kh/storage/5e62218f7ee92-1583489423.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
233	18	https://api.mcu.edu.kh/storage/5e62218f297a8-1583489423.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
234	18	https://api.mcu.edu.kh/storage/5e62218ee6623-1583489422.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
235	18	https://api.mcu.edu.kh/storage/5e62218e7c41a-1583489422.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
236	18	https://api.mcu.edu.kh/storage/5e62218e63e57-1583489422.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
237	18	https://api.mcu.edu.kh/storage/5e62218e1380c-1583489422.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
238	18	https://api.mcu.edu.kh/storage/5e62218dd6c6e-1583489421.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
239	18	https://api.mcu.edu.kh/storage/5e62218d9f16a-1583489421.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
240	18	https://api.mcu.edu.kh/storage/5e62218d6a457-1583489421.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
241	18	https://api.mcu.edu.kh/storage/5e62218cd0bd1-1583489420.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
242	18	https://api.mcu.edu.kh/storage/5e62218cd0b44-1583489420.jpg	2020-03-06 10:10:51	2020-03-06 10:10:51
243	19	https://api.mcu.edu.kh/storage/5e6221fb9d158-1583489531.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
244	19	https://api.mcu.edu.kh/storage/5e6221fb2f120-1583489531.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
245	19	https://api.mcu.edu.kh/storage/5e6221fab615e-1583489530.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
246	19	https://api.mcu.edu.kh/storage/5e6221fa603fa-1583489530.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
247	19	https://api.mcu.edu.kh/storage/5e6221fa5fbc7-1583489530.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
248	19	https://api.mcu.edu.kh/storage/5e6221ead523b-1583489514.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
249	19	https://api.mcu.edu.kh/storage/5e6221ea56be8-1583489514.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
250	19	https://api.mcu.edu.kh/storage/5e6221ea3ec7b-1583489514.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
251	19	https://api.mcu.edu.kh/storage/5e6221e9bc114-1583489513.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
252	19	https://api.mcu.edu.kh/storage/5e6221e99700e-1583489513.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
253	19	https://api.mcu.edu.kh/storage/5e6221e927d1a-1583489513.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
254	19	https://api.mcu.edu.kh/storage/5e6221e904c0d-1583489513.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
255	19	https://api.mcu.edu.kh/storage/5e6221e886a51-1583489512.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
256	19	https://api.mcu.edu.kh/storage/5e6221e854e26-1583489512.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
257	19	https://api.mcu.edu.kh/storage/5e6221e7d8819-1583489511.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
258	19	https://api.mcu.edu.kh/storage/5e6221e7a1408-1583489511.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
259	19	https://api.mcu.edu.kh/storage/5e6221e7281ff-1583489511.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
260	19	https://api.mcu.edu.kh/storage/5e6221e6ca380-1583489510.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
261	19	https://api.mcu.edu.kh/storage/5e6221e549d0e-1583489509.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
262	19	https://api.mcu.edu.kh/storage/5e6221e551054-1583489509.jpg	2020-03-06 10:12:43	2020-03-06 10:12:43
\.


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.majors (id, a_o_c_id, major, content, curriculum, schedule, created_at, updated_at) FROM stdin;
13	5	Agro-Machinery	<h1 style="text-align: left;"><span style="color: #339966;">Agro-Machinery</span></h1>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: left;"><span style="color: #339966;">Agro-Machinery</span></h1>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: left;"><span style="color: #339966;">Agro-Machinery</span></h1>\n<h1 style="text-align: center;">Semester ll</h1>\n<p>&nbsp;</p>\n<h3>Year1 &amp; Year2</h3>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e634abd5e138-1583565501.jpg" alt="" width="100%" /></p>\n<p><a href="https://drive.google.com/file/d/1StKi4XrcwAHdEk8Yf5RR5Od4J1km8ntu/view?usp=sharing" target="_blank" rel="noopener">Download</a></p>	2020-02-10 08:00:19	2020-03-07 07:18:29
11	4	Marketing	<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: center;">Not Available</h1>	2020-02-10 07:59:00	2020-03-05 06:12:53
12	5	Agronomy	<h1 style="text-align: left;"><span style="color: #339966;">Agronomy</span></h1>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: left;"><span style="color: #339966;">Agronomy</span></h1>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: left;"><span style="color: #339966;">Agronomy</span></h1>\n<h1 style="text-align: center;">Semester ll</h1>\n<p>&nbsp;</p>\n<h3>Year 1 &amp; Year 2</h3>\n<p>&nbsp;</p>\n<h4><em><a href="https://drive.google.com/file/d/1-vz6ZfJ526CDQsVolf-fdHqUAGvW6-gW/view?usp=sharing" target="_blank" rel="noopener"><img src="https://api.mcu.edu.kh/storage/5e6349b61689d-1583565238.jpg" alt="" width="100%" /></a></em></h4>\n<h4><em><a href="https://drive.google.com/file/d/1-vz6ZfJ526CDQsVolf-fdHqUAGvW6-gW/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>	2020-02-10 08:00:07	2020-03-07 07:14:52
8	1	English Language	<h1 style="text-align: left;"><span style="color: #339966;">English Language<br /><br /></span></h1>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: left;"><span style="color: #339966;">English Language</span></h1>\n<p>&nbsp;</p>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: left;"><span style="color: #339966;">English Language</span></h1>\n<p>&nbsp;</p>\n<h1 style="text-align: center;"><span style="color: #339966;">Semester ll</span></h1>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2>Year1</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e60857e50894-1583383934.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1dvFEpfqeXwA5R6F_lJBziByOj5t2c9Ho/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year2</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6085eb3c7ec-1583384043.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1HW2KTstYfQ6w2cyqCTHg-kF1Y1ZQs4LY/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year3</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e60867f7727b-1583384191.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1cpnje60Q9d39pSt8KU8g6H8-jbaA-7SV/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year4</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6086eb55179-1583384299.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1lZu-dR44hDAANYGRNcms54AU3NzGYrG8/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;"><span style="color: #339966;">General Student</span></h1>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2>Year 1</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e608750702cf-1583384400.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1XyhqkC_TGf9lhI5RzlYjGMbPvapXpdHv/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year 2 &amp; 3</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e60879be6c81-1583384475.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/189Qd0cIG1YSOmZrmv0_3xc5HG46vt_eu/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>	2020-02-10 07:55:32	2020-03-05 05:17:33
14	5	Veterinary	<h1 style="text-align: left;"><span style="color: #339966;">Veterinary</span></h1>\n<h1 style="text-align: center;">Not Available&nbsp;</h1>\n<p>&nbsp;</p>	<h1 style="text-align: left;"><span style="color: #339966;">Veterinary</span></h1>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: left;"><span style="color: #339966;">Veterinary</span></h1>\n<h1 style="text-align: center;">Semester ll</h1>\n<p>&nbsp;</p>\n<h3>Year 1 &amp; Year 2</h3>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e634a1de72ea-1583565341.jpg" alt="" width="100%" /></p>\n<h4><em><a href="https://drive.google.com/file/d/15dIG1NSvKygNUp9i5a6tdl5vkrEuzYi1/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<h1 style="text-align: center;">&nbsp;</h1>	2020-02-10 08:00:29	2020-03-07 07:20:16
5	5	Agro-industry	<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;"><strong>ដេប៉ាដឺម៉ង់​ កសិឧស្សាហកម្ម</strong></h1>\n<h1 style="text-align: center;">Department of Agro-industry</h1>\n<h1>&nbsp;</h1>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h1>រច្ចនាសម្ព័ន្ធដេប៉ាដឺម៉ង / Structure</h1>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e4a44d78b7d2-1581925591.jpg" alt="" width="100%" /></p>\n<h1>&nbsp;</h1>\n<h1>&nbsp;</h1>\n<h1>&nbsp;</h1>\n<h1>&nbsp;</h1>\n<h1>ពិពណ៌នាមុខវិជ្ជា​</h1>\n<p>&nbsp;</p>\n<h2><strong>១</strong><strong>. </strong><strong>គីមីអាហារ​</strong><strong> (</strong><strong>Food Chemistry)</strong></h2>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; សមាសធាតុផ្សំ​នៅក្នុង​អាហារ​ លក្ខណៈ​នៃ​សមាសធាតុ​ផ្សំ​ ប្រតិកម្ម​គីមីនិង​ជីវៈ​ដែល​វា​ប្រព្រឹត្ត​ទៅ​ បម្រែបម្រួល​ក្នុង​អំឡុង​ពេល​កែច្នៃ ស្តុកទុក​ មុខងារ​និង​តួនាទី​នៃ​សមាសធាតុ​ទាំង​នេះ​នៅក្នុង​អាហារ​។</p>\n<p>&nbsp;</p>\n<h2><strong>២. បច្ចេកវិទ្យា​ផលិតផល​ទឹកដោះ​គោ​ (</strong><strong>Dairy Product Technology)</strong></h2>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; លក្ខណៈ​នៃ​ទឹកដោះគោ​ សារធាតុ​ចិញ្ចឹម មីក្រូ​ជីវៈវិទ្យា​នៃ​ទឹក​ដោះគោ​​&nbsp; ដំណើរការ​កែច្នៃផលិតផល​ទឹកដោះគោ​ វិធីសាស្ត្រ​រក្សាទុក​ដោយ​កម្តៅ​ ការ៉េម​ ទឹកដោះគោ​ជូរ​ ផលិតផល​ខ្លាញ់​ពី​ទឹក​ដោះគោ​ ម្សៅទឹកដោះគោ​ ផលិតផល​ទឹក​ដោះគោ​បន្ទុំ​។</p>\n<p>&nbsp;</p>\n<h2><strong>៣. ការ​ត្រួតពិនិត្យ​គុណភាព​អាហារ​និង​ផលិតផល​កសិកម្ម​ (</strong><strong>Quality Control of Agri-Food Product)</strong></h2>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; គោលការណ៍​នៃ​ការ​ត្រួតពិនិត្យ​គុណភាព​ តួនាទី ការគ្រប់គ្រង​ ការ​ធានាគុណភាព​ ការ​រៀបចំគម្រោង ឧបករណ៍ត្រួតពិនិត្យគុណភាព​ទាំង៧​ ប្រព័ន្ធ​គ្រប់​គ្រងគុណភាព​ ស្តង់​ដា​ផលិតផល​អាហារ​ វិធីសាស្ត្រ​អនុវត្តន៍​ល្អ​ ការ​អនុវត្តផលិតកម្ម​ល្អ កសិកម្ម​ល្អ​ ប្រព័ន្ធ​វិភាគគ្រោះថ្នាក់​និង​ចំណុច​ត្រួតពិនិត្យ​ចាំបាច់​បំផុត​។​</p>\n<h2>&nbsp;</h2>\n<h2><strong>៤. ការវិភាគ​អាហារ​ (</strong><strong>Food Analysis)</strong></h2>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; វិធីសាស្ត្រ​ជ្រើសរើសសំណាក ការការពារសំណាកនិង​រក្សាទុក​ ឧបករណ៍សម្រាប់​វិភាគ​ សមាសធាតុគីមីនិង​អង្គធាតុ​ប្រតិករ​ គោលការ​ណ៍​និង​វិធីសាស្ត្រ​វិភាគ​អាហារ​ ការ​គណនានិងរៀបចំ​ទិន្នន័យ​ពិសោធន៍​។</p>\n<h2>&nbsp;</h2>\n<h2><strong>៥. វិធីសាស្ត្រ​រក្សាទុក​អាហារ​ (</strong><strong>Food Preservation)</strong></h2>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; កត្តាដែល​ធ្វើអោយអាហារខូច​ ប្រព្រឹត្តិកម្ម​កម្តៅ​ pasteurization sterilization ការគណនា​រយៈពេល​និង​សីតុណ្ហភាព​សម្លាប់​អតិសុខុមប្រាណ (D value &amp; Z value) ការ​ដកយក​ជាតិទឹក​ ការ​រក្សាទុក​នៅ​សីតុណ្ហភាព​ត្រជាក់ ការ​បន្ទុំ​ បច្ចេកវិទ្យា​ទំនើប ដែនអគ្គិសនី សម្ពាធខ្ពស់​ កាំរស្មី​ ការវេចខ្ចប់​ដោយ​គ្រប់គ្រង​ធាតុអាកាស​ ។</p>\n<h2>&nbsp;</h2>\n<h2><strong>៦. សំបកវេចខ្ចប់​អាហារ (</strong><strong>Food Packaging)</strong></h2>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; តួនាទី​នៃ​សំបក​វេចខ្ចប់​អាហារ​ ការ​រចនា​សំបកវេចខ្ចប់​ ស្តង់ដា​នៃការដាក់​ស្លាកសញ្ញាអាហារ លក្ខណៈនៃ​សំបកវេចខ្ចប់​ សំបកវេចខ្ចប់​ប្រភេទ​ក្រដាស ដបកែវ​ ជ័រប្លាស្ទិច​ និង​លោហៈ។</p>\n<h2>&nbsp;</h2>\n<h2><strong>៧.</strong><strong>&nbsp; </strong><strong>Industrial Feasibility Study and Firm Creation</strong></h2>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Industrial Feasibility Study and Firm Creation គឺជាមុខវិជ្ជាមួយដែលសិក្សាពីភាពដែលអាចធ្វើទៅបាននៃការច្នៃប្រឌិតដើម្បីក្លាយខ្លួនជាម្ចាស់លើខ្លូនឯងតាមរយៈការបង្កើតមុខរបរថ្មី ដោយឈរលើគោលការណ៍វិភាគពីទីផ្សារ យល់ដឹងពីប្រភេទជំនួញ ការរៀបចំគម្រោងផែនការ​ បង្កើត និងជ្រើសរើសផលិតផលថ្មីសម្រាប់ចូលទីផ្សារ។</p>\n<p>&nbsp;</p>\n<h2><strong>៨.​ Brewing Engineering </strong></h2>\n<p>ស្រាបៀរគឺជាភេជ្ជៈមួយប្រភេទដែលគេពេញនិយមទទួលទាន ដែលភាគច្រើនវាត្រូវបានគេយកមកដើម្បីទទួលទានក្នុងកម្មវិធីផ្សេងៗ ឬការជួបជុំគ្នាដើម្បីបង្កើនភាពស្និតស្នាល និងញ៉ាំងកម្មវិធីឲ្យកាន់តែមានភាពរីករាយ។ វាក៏ជាភេជ្ជៈមួយប្រភេទដែលមានគុណប្រយោជន៍ចំពោះសុខភាព និងអាចជួយកាត់បន្តយជាតិខ្លាញ់ និងជួយការពារជម្ងឺ Breath Cancer ផងដែរ។ នៅក្នុងមេរៀននេះយើងនិងធ្វើការសិក្សាលំអិតពីវិធីសាស្រ្តក្នុងការកែច្នៃ និងផ្តោតសំខាន់លើការការប្រើប្រាស់វត្ថុធាតុដើម និងការធ្វើ Treatment និងការទាញយកមកប្រើវិញ និង Cleaning ដើម្បីទទួលបាននូវផលិតផលសម្រេចដែលមានគុណភាព។</p>\n<p>&nbsp;</p>\n<h2><strong>៩.​ Bakery Technology</strong></h2>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>សព្វ​ថ្ងៃនៅលើពិភពលោក​កំពុង​មានការកើន​ឡើង​នៃ​ចំនួន​​ប្រជាជនក៏ដូច ជាមាន ការកើនឡើងនូវតម្រូវការប្រចាំថ្ងៃច្រើនឡើងៗ។ ក្នុងនោះ​ដែរ​​​​ចំណី​អា​ហារ​ជា​តម្រូវ​​​ការមួយ ដ៏ចាំបាច់ ដែលមនុស្សម្នាក់ៗមិនអាចខ្វះបាន។ ​តែជីវិតរស់​នៅ​​ប្រចាំ​​​​​​ថ្ងៃ​​​​របស់​មនុស្ស​​​​ម្នាក់ៗ កាន់តែមាន ភាពមមាញឹកដែលធ្វើអោយមាននូវការរៀបចំប្រភេទអាហារ ​ដើម្បី​សម្រួល​​​​ដល់​ជីវភាពរបស់ពួកគេ ក្នុងនោះ ផលិតផលនំដុតក៏ដើរតួនាទីសំខាន់ផង​ដែរ។</p>\n<p>&nbsp;</p>\n<h2><strong>១០. បច្ចេទេសវិទ្យាផលិតស្រាបៀរ( Brewing technology)</strong></h2>\n<p>&nbsp;</p>\n<p>បច្ចេទេសផលិតផែសជ្ជៈនេះគឺផ្ដោតសំខាន់ទៅលើវត្ថុធាតុដើមនិងដំណើរផលិតសម្រាប់ភេសជ្ជៈដែលមានជាតិអាល់កុល។បន្ថែមពនេះទៅទៀតគឺការសិក្សាលើការផលិតអេតាណុលរបស់មីក្រូអតិសុខុមប្រាណដើម្បីទទួលបានផេសជ្ជៈដែលមានជាំតិអាល់កុល ។</p>\n<p>&nbsp;</p>\n<h2><strong>១១. បច្ចេកវិទ្យាក្រោយពេលប្រមូលផលធញ្ញជាតិ</strong></h2>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; មេរៀននេះផ្តោតសំខាន់ទៅលើធញ្ញជាតិដែលជាអាហារស្បៀងដ៏សំខាន់លើពិភពលោក ហើយក្នុងនេះដែរក៏បង្ហាញពីប្រភេទធញ្ញជាតិសំខាន់ៗ លក្ខខណ្ឌសមស្របសម្រាប់ការលូតលាស់ លក្ខណៈពិសេសរបស់វាដែលអាចធន់ទ្រាំជាមួយទឹក ឬកំដៅ ហើយជាពិសេសនោះគឺផ្តោតទៅលើការប្រមូលផល និងបច្ចេកទេសក្នុងការថែរក្សាការពារវាដើម្បីធានាបានគុណភាពខ្ពស់នៅពេលបរិភោគ និងរក្សាបានយូរដែលធានាបាននូវសន្តិសុខស្បៀង ហើយនិងរក្សាអត្រាដំណុះសម្រាប់ការដាំដុះនៅពេលបន្តបន្ទាប់ទៀត។</p>\n<p>&nbsp;</p>\n<h2><strong>១២. Agribusiness Management</strong></h2>\n<p>&nbsp;</p>\n<p>Agribusiness management is the course that related to agriculture and agriculture products for import and export to consumers. This course it is focus on how to manage in Agribusiness efficiency involved in Agribusiness management: scope, functions, and tasks, Agribusiness management: organization and context, Marketing management for agribusiness, Financial management for agribusiness, Operations management for agribusiness, Human resource management for agribusiness This class will be an 7-week course.</p>\n<p>&nbsp;</p>\n<h2><strong>&nbsp;១៣. English in Agriculture</strong></h2>\n<p>&nbsp;</p>\n<p>English in agriculture is focus on the Key Word Vocabulary and technical world in field of agriculture and insert with Grammar, exercise of all student practice and understanding of the lesson. In this course we will cover introduction English in agriculture, Lowland Rice Cultivation, upland farming, monoculture, polyculture, forests, fishermen, irrigation, complementary foods, the soil, aquaculture, farmer of the world, integrated pest management, the changing focus of agriculture research. This class will be an 15-week course.</p>\n<p>&nbsp;</p>\n<h2><strong>១៥.​​ Post-harvest of Meat&nbsp;</strong></h2>\n<p>&nbsp;</p>\n<p>សាច់គឺជាផលិតផលសាច់ដែលមានតម្លៃបំផុត ហើយវាជាជម្រើសប្រើប្រាស់របស់មនុស្សជាច្រើន​ ដែលមាចប្រភពប្រូតអ៊ីនដំបូងនៃសាច់សត្វ។ សាច់ខ្លាញ់និងផ្នែកផ្សេងទៀតនៃសាច់ដែលបានប្រើជាវត្ថុធាតុដើម សម្រាប់ផលិតនៃផលិតផលសាច់កែឆ្នៃត្រូវបានទាញយកពីសត្វពាហន:ដូចជាជ្រូក គោ&nbsp; ក្របី និងបក្សីជាដើម។ ជាទូទៅសាច់ត្រូវបានផ្សំឡើងពី ទឹក&nbsp; ខ្លាញ់ ប្រូតេអ៊ីន និង​សមាសធាតុនៃការបូនអ៊ីដ្រាដ។ តម្លៃអាហារូបបត្ថម្ភនៃសាច់សត្វគឺទាក់ទងទៅនឹងបរិមាណគុណភាពប្រតេអ៊ីនខ្ពស់។</p>	<h1 style="text-align: left;"><span style="color: #339966;">Agro-industry</span></h1>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: left;"><span style="color: #339966;">Agro-industry</span></h1>\n<h1 style="text-align: center;">Semester ll</h1>\n<p>&nbsp;</p>\n<h3>Year1 &amp; Year2</h3>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e634a77a4f15-1583565431.jpg" alt="" width="100%" /></p>\n<p><a href="https://drive.google.com/file/d/1MtgpJSnab9ZPyzA3MwdpI6oOZTnHv3DG/view?usp=sharing" target="_blank" rel="noopener">Download</a></p>	2020-01-09 00:26:06	2020-03-07 07:17:21
3	3	Community Development	<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;">Available Soon...!</h1>	2020-01-09 00:21:26	2020-03-05 07:12:06
1	1	Khmer Literature	<h1 style="text-align: left;"><span style="color: #339966;">Khmer Literature</span></h1>\n<p>&nbsp;</p>\n<h1 style="text-align: center;"><span style="color: #339966;">Not Available</span></h1>	<h1 style="text-align: left;"><span style="color: #339966;">Khmer Literature</span></h1>\n<p>&nbsp;</p>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: left;"><span style="color: #339966;">Khmer Literature</span></h1>\n<p>&nbsp;</p>\n<h1 style="text-align: center;">Semester ll</h1>\n<p>&nbsp;</p>\n<h2>Year1</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e608085da80c-1583382661.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/15qQ6YR-R_NRiqytismLoht1ppwKUw_N1/view?usp=sharing" target="_blank" rel="noopener">Download for Year1</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year2</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6080e2b424f-1583382754.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1WWgUJnOsT2OA4zpSjS-c-384eIECQfIf/view?usp=sharing" target="_blank" rel="noopener">Download for year2</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year3</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e60813860ee8-1583382840.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/17jyxt7fhKkff2lOUG22oU36tMmsUadqi/view?usp=sharing" target="_blank" rel="noopener">Download for year3</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year4</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e608182d5182-1583382914.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1AAFcJLbhXY0xMTZn7N5Ooes8mJHaauqj/view?usp=sharing" target="_blank" rel="noopener">Download for year4</a></em></h4>	2020-01-09 00:19:15	2020-03-05 05:16:15
10	1	Chinese Language	<h1 style="text-align: left;"><span style="color: #339966;">Chinese Language</span></h1>\n<p>&nbsp;</p>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: left;"><span style="color: #339966;">Chinese Language</span></h1>\n<p>&nbsp;</p>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: left;"><span style="color: #339966;">Chinese Language</span></h1>\n<p>&nbsp;</p>\n<h1 style="text-align: center;"><span style="color: #339966;">Semester ll</span></h1>\n<h2>&nbsp;</h2>\n<h2>Year1</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e60896b141a6-1583384939.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1sfXn7IUX4NVtMvEEXrIze8hau7Jbzd9_/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year2</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6089d0e1ee0-1583385040.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/17jboXwixtjsm20ajDovB7MAH1KjX3BIA/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h2 style="text-align: center;"><span style="color: #339966;">Short Course</span></h2>\n<p>&nbsp;</p>\n<p><span style="color: #339966;"><img src="https://api.mcu.edu.kh/storage/5e608a18b85e9-1583385112.jpg" alt="" width="100%" height="" /></span></p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h2 style="text-align: center;"><span style="color: #339966;">HSKK Training Course</span></h2>\n<p><span style="color: #339966;"><img src="https://api.mcu.edu.kh/storage/5e608a772eadc-1583385207.jpg" alt="" width="100%" height="" /></span></p>\n<p>&nbsp;</p>\n<h4><em><span style="color: #339966;"><a href="https://drive.google.com/file/d/1oy2AkzoeutaozlQlR0ejdXH5UxwRfGsx/view?usp=sharing" target="_blank" rel="noopener">Download</a></span></em></h4>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	2020-02-10 07:56:07	2020-03-05 05:18:01
9	1	Korean Language	<h1 style="text-align: left;"><span style="color: #339966;">Korean Language</span></h1>\n<p>&nbsp;</p>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: left;"><span style="color: #339966;">Korean Language</span></h1>\n<p>&nbsp;</p>\n<h1 style="text-align: center;">Not Available</h1>	<h1 style="text-align: left;"><span style="color: #339966;">Korean Language</span></h1>\n<p>&nbsp;</p>\n<h1 style="text-align: center;">Semester ll</h1>\n<h2>&nbsp;</h2>\n<h2>Year1</h2>\n<h3>&nbsp;</h3>\n<p><img src="https://api.mcu.edu.kh/storage/5e605fc24d9d9-1583374274.jpg?1583374274420" alt="" width="100%" height="" /></p>\n<h4><em><a title="Go To google Drive" href="https://drive.google.com/file/d/1He2PeHagF8EoDiNX-qvreyRwTZWv60FC/view?usp=sharing" target="_blank" rel="noopener">Download JPG For Year1</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year2</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6061fcaf8a4-1583374844.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1b3331894PGcPCks7hs0kcqASkI2qhlCN/view?usp=sharing" target="_blank" rel="noopener">Download JPG For Year2</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year3</h2>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e606297799a0-1583374999.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1oA5cIVn_5EUgy0flefYh-JCa0_QOeLfO/view?usp=sharing" target="_blank" rel="noopener">Download JPG For Year3</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year4</h2>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e6062fa139f9-1583375098.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1kyOoJ3gV_lkfmRK0iAniO6rrkdGWt1-n/view?usp=sharing" target="_blank" rel="noopener">Dowload JPG for Year4</a></em></h4>	2020-02-10 07:55:46	2020-03-05 05:18:53
6	4	Banking	<h1 style="text-align: left;"><span style="color: #339966;">Baking</span></h1>\n<h1 style="text-align: center;">Introduction</h1>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ការសិក្សាជំនាញហិរញ្ញវត្ថុ និងធនាគារជាមុខវិជ្ជាមួយដែលមានការពេញនិយមនៅលើទីផ្សារការងារក្នុងប្រទេសកម្ពុជាយើងនាពេលបច្ចុប្បន្ន ។ ការធ្វើសមាហរណកម្មលើវិស័យមួយចំនូននៅក្នុងតំបន់ក៏ដូចជាទូទាំងពិភពលោក ជាយន្តការសាកលវូបនីយកម្មដែលពោរពេញដោយការប្រកួតប្រជែងលើគ្រប់វិស័យ ដើម្បីជំរុញការអភិវឌ្ឍប្រទេសឈានឆ្ពោះទៅរកភាពរីកចម្រើនប្រកបដោយកិត្យានុភាព ។</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; រួមចំណែកជាមួយរាជរដ្ឋាភិបាលលើវិស័យអប់រំជាមធ្យោបាយដ៏សំខាន់ ក្នុងការកាត់បន្ថយភាពក្រីក្ររបស់ប្រជាពលរដ្ឋ និងជួយជ្រោមជ្រែងផ្តល់ឱកាសដល់និស្សិតក្នុងការសិក្សា មហាវិទ្យាល័យគ្រប់គ្រងពាណិជ្ជកម្ម និងទេសចរណ៍នៃសាកលវិទ្យាល័យមានជ័យ បាននឹងកំពុងខិតខំយកចិត្តទុកដាក់ក្នុងការបណ្តុះបណ្តាលនិស្សិត ដោយសំរិតសំរាំងសាស្រ្តាចារ្យប្រកបដោយបទពិសោធន៍ក្នុងការបង្រៀន និងមានទេពកោសល្យខ្ពស់ក្នុងការផ្ទេរចំណេះដឹងដល់និស្សិត ជំរុញការលើកកម្ពស់គុណភាពនិស្សិតឲ្យទទួលបានជំនាញ ចំណេះដឹង ចំណេះធ្វើ បំនិនជីវិតពិតប្រាកដ សម្រាប់បច្ចុប្បន្ននិងអនាគតផងដែរ។&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	<h1 style="text-align: left;"><span style="color: #339966;">Baking</span></h1>\n<h1 style="text-align: center;"><span style="color: #339966;">Curriculum</span></h1>\n<p>&nbsp;</p>\n<h2>Year1</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6212a999328-1583485609.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h2>Year2</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6212cdf0b22-1583485645.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h2>Year3</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6212de32a2f-1583485662.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h2>Year4</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6212ecbe454-1583485676.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	<h1 style="text-align: left;"><span style="color: #339966;">Baking</span></h1>\n<h1 style="text-align: center;">Semester ll</h1>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2>Year2</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6095a5d8ebe-1583388069.jpg" alt="" width="100%" height="" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1zx305Fzh3znacNcHhtggInS6Edok9biM/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year3</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6096144d5e0-1583388180.jpg" alt="" width="100%" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1NBH5xvcwCpm2U8be1aybw8HwEJ8aD5PM/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year4</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e60964bdbd7a-1583388235.jpg" alt="" width="100%" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1K2Y6QXns6K58RPekeXQmm54CzzC9s9-R/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>	2020-02-04 07:46:12	2020-03-06 09:08:12
15	4	Management	<h1 style="text-align: left;"><span style="color: #339966;">Management</span></h1>\n<h1 style="text-align: center;">Introduction</h1>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ការសិក្សាជំនាញគ្រប់គ្រង ជាមុខវិជ្ជាមួយដែលមានការពេញនិយមនៅលើទីផ្សារការងារក្នុងប្រទេសកម្ពុជាយើងនាពេលបច្ចុប្បន្ន។ ការធ្វើសមាហរណកម្មលើវិស័យមួយចំនួននៅក្នុងតំបន់ក៏ដូចជាទូទាំងពិភពលោក ជាយន្តការសាកលវូបនីយកម្មមួយដែលពោរពេញដោយការប្រកួតប្រជែងលើគ្រប់វិស័យដើម្បីជំរុញការអភិវឌ្ឍប្រទេស ឈានឆ្ពោះទៅរកភាពរីកចំរើនប្រកបដោយកិត្យានុភាព ។ រួមចំណែកជាមួយរាជរដ្ឋាភិបាលលើវិស័យអប់រំ ជាមធ្យោបាយមួយដ៏សំខាន់ក្នុងការកាត់បន្ថយភាពក្រីក្ររបស់ប្រជាពលរដ្ឋ និង ជួយជ្រោមជ្រែងផ្តល់ឱកាសដល់និស្សិតក្នុងការសិក្សានោះមហាវិទ្យាល័យមានជ័យបាននឹងកំពុងខិតខំយកចិត្តទុកដាក់ក្នុងការបណ្តុះបណ្តាលនិស្សិតដោយការសំរិតសំរាំងសាស្រ្តាចារ្យប្រកបដោយបទពិសោធន៍ក្នុងការបង្រៀន និងមានទេពកោសល្យខ្ពស់ក្នុងការផ្ទេរចំណេះដឹងដល់និស្សិត ជំរុញការលើកកម្ពស់គុណភាពសិក្សារបស់ពួកគេឲ្យទទួលបានពិតប្រាកដនូវជំនាញ ចំណេះធ្វើ បំនិនជីវិត សម្រាប់បច្ចុប្បន្ននិងធអនាគតផងដែរ។</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	<h1 style="text-align: left;"><span style="color: #339966;">Management</span></h1>\n<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;"><span style="color: #339966;">Curriculum</span></h1>\n<h2>&nbsp;</h2>\n<h2>Year1</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e620ca10acfa-1583484065.jpg" alt="" width="100%" /></p>\n<h2>Year2</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e620cb30519a-1583484083.jpg" alt="" width="100%" /></p>\n<h2>Year3</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e620cc4cd75a-1583484100.jpg" alt="" width="100%" /></p>\n<h2>Year4</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e620cd2c0ecf-1583484114.jpg" alt="" width="100%" /></p>	<h1 style="text-align: left;"><span style="color: #339966;">Management</span></h1>\n<h1 style="text-align: center;">Semester ll</h1>\n<p>&nbsp;</p>\n<h2>Year2</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6098e1c7afb-1583388897.jpg" alt="" width="100%" /></p>\n<p><em><a href="https://drive.google.com/file/d/1Rnp-SA90DLcgI0huIQ-f_CtSHzl9cez_/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></p>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year3</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e609914e5274-1583388948.jpg" alt="" width="100%" /></p>\n<p><a href="https://drive.google.com/file/d/1iCTuGZYueu7QXbJcQ5SK8jYsSVSqalTd/view?usp=sharing" target="_blank" rel="noopener">Download</a></p>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year4</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e60993ddbad7-1583388989.jpg" alt="" width="100%" /></p>\n<p><a href="https://drive.google.com/file/d/12zouOp2Jr_3i2aQTuDyaz2B0TBq1B9qg/view?usp=sharing" target="_blank" rel="noopener">Download</a></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	2020-03-05 06:12:29	2020-03-06 08:44:39
4	4	Accounting	<h1><span style="color: #339966;">Accounting</span></h1>\n<h1 style="text-align: center;">Introduction</h1>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ការសិក្សាជំនាញគណនេយ្យ ជាមុខវិជ្ជានួយដែលមានការពេញនិយមនៅលើទីផ្សារការងារក្នុងប្រទេសកម្ពុជាយើងនាពេលបច្ចុប្បន្ន ។ ការធ្វើសមាហរណកម្មលើវិស័យមួយ ចំនួននៅក្នុងតំបន់ក៏ដូចជាទូទាំងពិភពលោកជាយន្តការសាកលភាវូបនីយកម្មមួយ ដែលពោរពេញដោយការប្រកួតប្រជែងលើគ្រប់វិស័យ ដើម្បីជំរុញការអភិវឌ្ឍប្រទេសឈានឆ្ពោះទៅរកភាពរីកចម្រើនប្រកបដោយកិត្យានុភាព ។&nbsp; រួមចំណែកជាមួយរាជរដ្ឋាភិបាលលើវិស័យអប់រំជាមធ្យោបាយមួយដ៏សំខាន់ក្នុងការកាត់បន្ថយភាពក្រីក្ររបស់ប្រជាពលរដ្ឋ និងជួយជ្រោមជ្រែងផ្តល់ឱកាសដល់និស្សិតក្នុងការសិក្សា មហាវិទ្យាល័យគ្រប់គ្រងពាណិជ្ជកម្ម និងទេសចរណ៍ នៃសាកលវិទ្យាល័យមានជ័យ បាននឹងកំពុងខិតចំយកចិត្តទុកក្នុងការបណ្តុះបណ្តាលនិស្សិត ដោយសំរិតសំរាំងសាស្រ្តាចារ្យប្រកបដោយបទពិសោធន៍ក្នុងការបង្រៀន និងមានទេពកោសល្យខ្ពស់ក្នុងការផ្ទេរចំណេះដឹងដល់និស្សិត ជំរុញការលើកកំពស់គុណភាពសិក្សារបស់ពួកគេឲ្យទទួលបានពិតប្រាកដនូវជំនាញ ចំណេះដឹង ចំណេះធ្វើ បំនិនជីវិត សម្រាប់បច្ចុប្បន្ននិងអនាគតផងដែរ។</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	<h1><span style="color: #339966;">Accounting</span></h1>\n<p>&nbsp;</p>\n<h1 style="text-align: center;"><span style="color: #339966;">Curriculum</span></h1>\n<p>&nbsp;</p>\n<h2>Year1</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6215a2ea9d6-1583486370.jpg" alt="" width="100%" /></p>\n<h2>&nbsp;</h2>\n<h2>Year2</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6215b7036d6-1583486391.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h2>Year3</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6215c65479c-1583486406.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h2>Year4</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6215d472c70-1583486420.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	<h1><span style="color: #339966;">Accounting</span></h1>\n<h1 style="text-align: center;">Semester ll</h1>\n<p>&nbsp;</p>\n<h2>Year2</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e60971a26fda-1583388442.jpg" alt="" width="100%" /></p>\n<p><em><a href="https://drive.google.com/file/d/1AIjgb1IupsTQY3tz2PKPEMb9-9c2dFxo/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></p>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year3</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e6097486c106-1583388488.jpg" alt="" width="100%" /></p>\n<p><em><a href="https://drive.google.com/file/d/1H7-pd8zBjbVQ7FeHTx5aJVSNFltaNMKQ/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></p>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year4</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e60978bda7f9-1583388555.jpg" alt="" width="100%" /></p>\n<p><a href="https://drive.google.com/file/d/1jZn792z2L22BcobS0a0YuUmJE_MWuCyU/view?usp=sharing" target="_blank" rel="noopener"><em>Download</em></a></p>\n<p>&nbsp;</p>	2020-01-09 00:21:58	2020-03-06 09:20:33
2	2	Information Technology	<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;"><span style="color: #339966;"><strong>ព័ត៌មានទាក់ទងនឹងការសិក្សាតាមមុខជំនាញ</strong></span></h1>\n<p>&nbsp;</p>\n<p><strong><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e41142cc1123-1581323308.jpg" alt="" width="100%" /></strong></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2><strong>ថ្នាក់​បរិញ្ញាបត្រ​ ព័ត៌មានវិទ្យា</strong></h2>\n<p>&nbsp;</p>\n<p>&nbsp;​&nbsp; &nbsp; &nbsp;សេចក្ដីផ្ដើមៈ បច្ចុប្បន្នវិស័យវិទ្យាសាស្ត្រកំពុងតែរីកចម្រើន​យ៉ាង​ខ្លាំង ​នៅ​​ក្នុង​សាកលលោក យើងនេះ។ ផ្នែកព័ត៌មានវិទ្យាក៏កំពុងតែមានការរីក​ចម្រើន​យ៉ាងខ្លាំងផងដែរ ដែលមាន​តួនាទីយ៉ាងសំខាងក្នុងការជួយសម្រួល​ក្នុង​ដំណើរ​ការអភិឌ្ឍន៍លើគ្រប់វិស័យទាំងអស់ ឱ្យមានការលូតលាស់​យ៉ាង​ឆាប់រហ័ស​ដែលបច្ចុប្បន្ននេះគេតែងនិយាយថាជាសម័យកុំព្យូទ័រ​(សម័យព័ត៌មានវិទ្យា)</p>\n<p>&nbsp;</p>\n<p>This course outlines the fundamentals of artificial intelligence and expert systems. Students discuss the core issues in A.I. applications, knowledge representation schemes, search techniques and techniques for constructing an expert system. At the end of the module, a mini case study provides students with an opportunity to gain hands-on experience in building an expert system.</p>\n<p>&nbsp;</p>\n<h3><strong>Client &ndash; Server Computer Year IV</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students learn technical skills in implementing a client/server computing solution. The course focuses on the major components of a client/server computing environment, including graphical PC front-end development tools, back-end relational DBMS server, and the connectivity middle ware.</p>\n<p>&nbsp;</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Solving practical problems, students learn good programming and algorithm analysis skills, allowing them to develop programs with maximum efficiency.</p>\n<h3>&nbsp;</h3>\n<h3><strong>Database Systems I &amp; II Year II.</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students learn how to create an entity relational model (ERM) for an enterprise and convert ERD to a relational data model. They study database security, integrity, recovery, backup, database concurrency and distributed database management systems (DBMS) and participate in sessions on interactive and embedded SQL.</p>\n<p>&nbsp;</p>\n<h3><strong>C&nbsp; C++ Programming Language I &amp;II Year II,</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; In this course, students examine the C++ general purpose programming language and object-oriented programming (OOP). Topics include C++ procedure, programming enhancements to C, data abstraction, classes, objects, information hiding, inheritance, virtual function, dynamic binding, polymorphism and Standard Template Library operations.</p>\n<p>&nbsp;</p>\n<h3><strong>Operating Systems I &amp; II Year II</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This course examines the basic function and organization of operating systems. Topics include process management (CPU processing, process ) Structural issues and&nbsp; operational challenges of client/server applications are also discussed. At the end of the module, students are required to implement a client/server system using at least one advance technique such as ODBC, RPS, or embedded SQL.</p>\n<p>&nbsp;</p>\n<h3><strong>&nbsp;Project Management Year IV</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This course teaches students about IT project management, covering the process of planning, organizing, implementing and completing a project. Students focus on four core functions in project management: scope, time, cost and quality management. Students also build their knowledge of Microsoft Excel, Microsoft Project and Project Kick Start software.</p>\n<p>&nbsp;</p>\n<h3><strong>Computer Networks I &amp; II Year</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students learn about the installation, communication protocols, management and security of local and wide area networks, including PC, LAN, MAN, WAN, Intranet and operating systems and Web and E-mail Servers.</p>\n<p>&nbsp;</p>\n<h3><strong>Visual Basic Programming I &amp; II Year III</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students gain skills in coordinating programming, analysis and design of applications. Topics include visual basic concepts (IDE), standard controls, control structures, variables, user-defined types, Visual Basic procedures, built-in functions, filing, and database programming (SQL, DAO, ADO).</p>\n<p>&nbsp;</p>\n<h3><strong>Internet Programming HTML I &amp; II Year III</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students learn Hyper-Text Mark-Up Language (HTML), an integral part of the Word Wide Web. They learn to outline frames, define titles, create tags, forms, headings, and tables, insert line breaks, images and multimedia effects, and link Web pages. Students learn how HTML is as much an</p>\n<p>&nbsp;</p>\n<h1>&nbsp;</h1>\n<h1 style="text-align: center;"><strong>GENERAL EDUCATION</strong></h1>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h3><strong>English Language Years II-III</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; As most textbooks and research books in Cambodia are written in English or French, foreign language acquisition is essential for professors and students alike. The development of students&rsquo; knowledge base and research skills across all disciplines at the Royal University of Phnom Penh is an outstanding goal of this foreign language program.</p>\n<p>&nbsp;</p>\n<h3><strong>Computers for Accounting I &amp; II Year III</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; In this course, students learn accounting theory and practice using Quick Books spreadsheets to process general ledgers, accounts receivable, accounts payable, inventory control, payroll and other balances.</p>\n<p>&nbsp;</p>\n<h3><strong>Statistics I &amp; II&nbsp; Year II</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This course examines basic concepts in probability and statistical inference theories. Students learn to use software packages including S-plus and SPSS to &nbsp;Perform many statistical calculations. Students also learn to analyze engineering and other scientific data. Topics covered include probability, probability distribution theory, point estimation, confidence interval estimation, sampling theory, hypothesis testing, chi-square analysis, introduction to model building and ANOVA for design experiments.</p>\n<p>&nbsp;</p>\n<h3><strong>Data Communications I &amp; II Year II</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students learn fundamental concepts and techniques in data communication and networking. These include link protocols, link components and types of data communication systems such as voice-band, base and, broadband, data transmission, terminal handling and data switching.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h3><strong>Data Structures &amp; Algorithms I &amp; II&nbsp; Year III</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; As computers become faster and faster, the need for programs that can handle large amounts of input becomes more acute. In this course, students look at methods of organizing large amounts of data through algorithms and analysis. By studying and Solving practical problems, students learn good programming and algorithm analysis skills, allowing them to develop programs with maximum efficiency.</p>\n<p>&nbsp;</p>\n<h3><strong>Database Systems I &amp; II&nbsp; Year II</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students learn how to create an entity relational model (ERM) for an enterprise and convert ERD to a relational data model. They Study database security, integrity, recovery, backup, database concurrency and distributed database management systems (DBMS), and participate in sessions on interactive and embedded SQL.</p>\n<p>&nbsp;</p>\n<h3><strong>Operating Systems I &amp; II&nbsp; Year II</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This course examines the basic function and organization of operating systems. Topics include process management (CPU processing, process synchronization and deadlocks), storage management (memory management, virtual memory, file-system interface and implementation, and secondary storage structure), protection and security.</p>\n<p>&nbsp;</p>\n<h3><strong>Microprocessors I &amp; II&nbsp; Year II</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; In this course, students examine the inside workings of personal computers. Topics include block diagrams and programming models of microprocessors, registers, addressing &nbsp;Microprocessors, Arithmetic Logic Units (ALU), Control Logic (CL) and the use of internal data bases. Students also write a small program in assembly language in order to understand the power of low level programming language.</p>\n<p>&nbsp;</p>\n<h3><strong>Computer Networks I</strong></h3>\n<h3><strong>Computer Networks II</strong></h3>\n<p>&nbsp;</p>\n<h3><strong>Visual Basic Programming I &amp; II&nbsp; Year III</strong></h3>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students gain skills in coordinating programming, analysis and design of applications. Topics include visual basic concepts (IDE), standard controls, control structures, variables, user-defined types, Visual Basic procedures, built-in functions, filing, and database programming (SQL, DAO, ADO).</p>\n<p>&nbsp;</p>\n<h3><strong>Internet Programming HTML I</strong></h3>\n<h3><strong>Internet Programming HTML II</strong></h3>\n<h3>&nbsp;</h3>\n<h3><strong>Year III, Semesters I &amp; II</strong></h3>\n<p>&nbsp; &nbsp; Students learn Hyper-Text Mark-Up Language (HTML), an integral part of the World Wide Web. They learn to outline frames, define titles, create tags, forms, headings, and tables, insert line breaks, images and multimedia effects, and link Web pages. Students learn how HTML is as much an organizational tool as it is a design tool to assist readers of the Web.</p>\n<p>&nbsp;</p>\n<h3><strong>Information System Analysis and Design I</strong></h3>\n<h3><strong>Information System Analysis and Design II</strong></h3>\n<h3>&nbsp;</h3>\n<h3><strong>Year III, Semester I &amp; II</strong></h3>\n<p>&nbsp; &nbsp; This course surveys concepts in information systems analysis and design. Students explore computer-based information systems and learn techniques and tools to develop software systems. Topics covered include system development</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; Lifecycles, requirement analyses, system design, system implementation, post-implementation stages, software quality assurance and managing the development process.</p>\n<p>&nbsp;</p>\n<h3><strong>Computer Graphics I</strong></h3>\n<h3><strong>Computer Graphics II</strong></h3>\n<h3>&nbsp;</h3>\n<h3><strong>Year III, Semesters I &amp; II</strong></h3>\n<p>&nbsp; &nbsp; Students learn basic graphics theory and applications such as interactive computer graphics, hardware, 2D transformations, graphics kernel systems, raster algorithms, the generation of curves, and CAD (or Coral Draw).</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h1 style="text-align: center;"><strong>MAJOR COURSES</strong></h1>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h3><strong>Java Programming I</strong></h3>\n<h3><strong>Java Programming II</strong></h3>\n<h3>&nbsp;</h3>\n<h3><strong>Year IV, Semesters I &amp; II</strong></h3>\n<p>&nbsp; &nbsp; Students learn how to program Java applications and Java applets. Students are provided with an overview of Java, then focus on data types, operators, control statements, classes, methods, inheritance, packages and interfaces, console I/O classes, networking and multimedia, animations, collaborative computing, portability and mini- applications that run on Web pages. Students also learn to deign interfaces with Abstract Windows Toolkit (AWT) controls and Swing Application Programming interfaces (API), and to connect a database with Java Database Connectivity. Finally, students learn about JavaServer Pages, with which they can run and perform on Web pages using Java.</p>\n<p>&nbsp;</p>\n<h3><strong>Internet Programming I</strong></h3>\n<h3><strong>Internet Programming II</strong></h3>\n<h3>&nbsp;</h3>\n<h3><strong>Year IV, Semesters I &amp; II</strong></h3>\n<p>&nbsp; &nbsp; This course trains system engineers to analyze, design, implement and manage web-based applications. Students learn about internetworking, the general structure of ASP (Active Server Pages), collaborating with database systems, file object systems, messaging systems, server security and performance, client environments, application development outlines and individual Web system creation. Students are also acquainted with HTML, &nbsp;Including tags necessary for writing web pages, and JavaScript.</p>\n<p>&nbsp;</p>\n<h3><strong>Object-Oriented Programming I</strong></h3>\n<h3><strong>Object-Oriented Programming II</strong></h3>\n<h3>&nbsp;</h3>\n<h3><strong>Year IV, Semesters I &amp; II</strong></h3>\n<p>&nbsp; &nbsp; In this course, students examine the concepts and techniques involved in Object-Oriented Programming (OOP) using C++. Key topics include ADT specifications, functions, classes, inheritance, storage management and libraries.</p>\n<p>&nbsp;</p>\n<h3><strong>Media I&amp;II</strong></h3>\n<p>&nbsp;</p>\n<p>In this course, students learn basic design advertising sport</p>\n<p>&nbsp;</p>\n<h3><strong>Unix Systems Management</strong></h3>\n<h3>&nbsp;</h3>\n<h3><strong>Year IV, Semesters I</strong></h3>\n<p>&nbsp; &nbsp; Students learn about UNIX file systems, including components of UNIX OS, important commands in the VI editor, logging in and out of systems, and managing commands including passwords, dates and identifications.</p>\n<p>&nbsp;</p>\n<h3><strong>Software Engineering</strong></h3>\n<h3>&nbsp;</h3>\n<h3><strong>Year IV, Semesters I</strong></h3>\n<p>&nbsp; &nbsp; This course teaches students the basic concepts of software engineering, including software project management metrics, measuring effort for software projects, analysis concepts and principles, analysis modeling and software testing techniques.</p>\n<p>&nbsp;</p>\n<h3><strong>Management of Information Systems I</strong></h3>\n<h3><strong>Management of Information Systems II</strong></h3>\n<h3>&nbsp;</h3>\n<h3><strong>Year IV, Semesters I &amp; II</strong></h3>\n<p>&nbsp; &nbsp; Examines techniques and tools for developing software systems. Topics include system development lifecycles, requirement analyses, system design, system implementation, stages after implementation, software quality assurance and managing the development process.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h3><strong>Client &ndash; Server Computer</strong></h3>\n<h3>&nbsp;</h3>\n<h3><strong>Year IV, Semester II</strong></h3>\n<p>&nbsp; &nbsp; Students learn technical skills in implementing a client/server computing solution. The course focuses on the major components of a client/server computing environment , including graphical PC front-end development tools, back-end relational DBMS server, and the connectivity middleware.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; Structural issues and operational challenges of client/server applications are also discussed. At the end of the model, students are required to implement a client/server system using at least one advanced technique such as ODBC, RPS, or embedded SQL.</p>\n<p>&nbsp;</p>\n<h3><strong>Project Management</strong></h3>\n<h3>&nbsp;</h3>\n<h3><strong>Year IV, Semester II</strong></h3>\n<p>&nbsp; &nbsp; This course teaches students about IT project management, covering the process of planning, organizing, implementing and completing a project. Students focus on four core functions in project management : scope, time, cost and quality management. Students also build their knowledge of Microsoft Excel, Microsoft Project and Project Kick Start software.</p>\n<p>&nbsp;</p>	<p>&nbsp;</p>\n<h1 style="text-align: center;"><span style="color: #339966;">Curriculum</span></h1>\n<p>&nbsp;</p>\n<h2>Year2</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e450cea99c7e-1581583594.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h2>Year3</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e450fcf61b14-1581584335.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2>Year4</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e450fe92edda-1581584361.jpg" alt="" width="100%" height="" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	<h1 style="text-align: center;">&nbsp;</h1>\n<h1 style="text-align: center;"><span style="color: #339966;">Semester ll</span></h1>\n<p>&nbsp;</p>\n<h2>Year2</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e60ae182e1dc-1583394328.jpg" alt="" width="100%" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1Nwe9AAfENBr_Trauwd9BNCbu0m-Iocgu/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year3</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e60ae4c38d5c-1583394380.jpg" alt="" width="100%" /></p>\n<h4><em><a href="https://drive.google.com/file/d/12r6HsnlP2Du12yplV034iR9FOc6BB78d/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>\n<hr />\n<h2>&nbsp;</h2>\n<h2>Year4</h2>\n<p><img src="https://api.mcu.edu.kh/storage/5e60af24a7b11-1583394596.jpg" alt="" width="100%" /></p>\n<h4><em><a href="https://drive.google.com/file/d/1nxGBDsCyBFRZDs0Ja9cBLY8vsWIrBiW4/view?usp=sharing" target="_blank" rel="noopener">Download</a></em></h4>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	2020-01-09 00:20:01	2020-03-06 09:44:59
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.migrations (id, migration, batch) FROM stdin;
71	2014_10_12_000000_create_users_table	1
72	2014_10_12_100000_create_password_resets_table	1
73	2016_06_01_000001_create_oauth_auth_codes_table	1
74	2016_06_01_000002_create_oauth_access_tokens_table	1
75	2016_06_01_000003_create_oauth_refresh_tokens_table	1
76	2016_06_01_000004_create_oauth_clients_table	1
77	2016_06_01_000005_create_oauth_personal_access_clients_table	1
78	2019_08_19_000000_create_failed_jobs_table	1
79	2019_11_23_033701_create_news_table	1
80	2019_11_23_134120_create_a_o_c_s_table	1
81	2019_11_23_134141_create_majors_table	1
82	2019_11_24_002711_create_aoc_names_table	1
83	2019_11_24_122718_create_videos_table	1
84	2019_11_25_134333_create_galleries_table	1
85	2019_11_25_134419_create_gallery_albums_table	1
86	2019_11_26_114424_create_abouts_table	1
87	2019_12_06_142801_create_collaborations_table	1
88	2019_12_06_142816_create_projects_table	1
89	2019_12_07_033854_create_banners_table	1
90	2020_04_05_124354_add_url_to_projects	2
91	2020_04_05_124723_add_url_to_collaborations	2
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.news (id, user_id, category, thumb, title, content, is_active, is_publish, created_at, updated_at) FROM stdin;
2	1	Dormitory and Sport Center	https://api.mcu.edu.kh/storage/5e250e116c914-1579486737.jpg	ការប្រកួតបាល់ទាត់ពានរង្វាន់សាកលវិទ្យាល័យមានជ័យឆ្នាំ២០១៩ (MCU CUP 2019)	<p><span style="font-family: Khmer OS Content;"><span lang="km-KH"><img src="https://api.mcu.edu.kh/storage/5e250ddaf22ff-1579486682.jpg" alt="" width="100%" /></span></span></p>\n<p>&nbsp;</p>\n<p><span style="font-family: Khmer OS Content;"><span lang="km-KH">មជ្ឈមណ្ឌលកីឡា និងអន្តេវាសិកដ្ឋាន បានរៀបចំការប្រកួតបាល់ទាត់ពានរង្វាន់សាកលវិទ្យាល័យមានជ័យ ដែលបានប្រព្រឹត្តចាប់ពីថ្ងៃទី១៦ ខែមិថុនា ឆ្នាំ២០១៩ ដល់ថ្ងៃទី២២ ខែកក្កដា ឆ្នាំ២០១៩ ក្រោមអធិបតីភាពឯកឧត្តម សំ ង៉ា សាកលវិទ្យាធិការ នៃសាកលវិទ្យាល័យមានជ័យ នៅទីលានបាល់ទាត់សាកលវិទ្យាល័យមានជ័យ។ កម្មវិធីខាងលើបានទទួលការឧបត្ថម្ភគាំទ្រថវិកា ក៏ដូចជាសម្ភារៈកីឡាបន្ថែមដោយ លោកជំទាវម៉ៅម៉ាល័យ ឯកឧត្តមសាកលវិទ្យាធិការ លោកគ្រូ អ្នកគ្រូ និងសប្បុរសជនផងដែរ ។ការប្រកួតបានដំណើរការអស់រយៈពេលបួនសប្តាហ៍ ដែលមានការចូលរួមដោយក្រុមបាល់ទាត់តំណាងមកពីមហាវិទ្យាល័យទាំងប្រាំរបស់សាកលវិទ្យាល័យមានជ័យ ហើយក្រុមគ្រងជើងឯក បានទៅលើ ក្រុមបាល់ទាត់មកពីមហាវិទ្យាល័យគ្រប់គ្រងពាណិជ្ជកម្ម និងទេសចរណ៍ ខណៈដែលក្រុមបាល់ទាត់មហាវិទ្យាល័យវិទ្យាសាស្រ្ត និងបច្ចេកវិទ្យាទទួលបានជើងឯករង។</span></span></p>\n<p>&nbsp;</p>\n<p><span style="font-family: Khmer OS Content;"><span lang="km-KH"><img src="https://api.mcu.edu.kh/storage/5e250dfdbaada-1579486717.jpg" alt="" width="100%" /></span></span></p>\n<p>&nbsp;</p>	t	t	2020-01-20 02:19:01	2020-01-20 02:19:13
3	1	Dormitory and Sport Center	https://api.mcu.edu.kh/storage/5e250e91e9644-1579486865.jpg	កម្មវិធីជួបជុំសមាជិកនិស្សិតស្នាក់នៅអន្តេវាសិកដ្ឋាននិស្សិតប្រុស-ស្រី កាលពីថ្ងៃទី១៦ ខែកុម្ភៈ ឆ្នាំ២០១៩	<p><span style="font-family: Lohit Devanagari;"><span lang="km-KH"><span style="font-family: Khmer OS Content;"><img src="https://api.mcu.edu.kh/storage/5e250eaa5248d-1579486890.jpg" alt="" width="100%" /></span></span></span></p>\n<p>&nbsp;</p>\n<p><span style="font-family: Lohit Devanagari;"><span lang="km-KH"><span style="font-family: Khmer OS Content;">អន្តេវាសិកដ្ឋាន បានរៀបចំកម្មវិធីជួបជុំសមាជិកនិស្សិតស្នាក់នៅអន្តេវាសិកដ្ឋាននិស្សិតប្រុស</span></span></span><span style="font-family: Khmer OS Content;">-</span><span style="font-family: Lohit Devanagari;"><span lang="km-KH"><span style="font-family: Khmer OS Content;">ស្រី កាលពីថ្ងៃទី១៦ ខែកុម្ភៈ ឆ្នាំ២០១៩ នៅអន្តេវាសិកដ្ឋាននារីនៃសាកលវិទ្យាល័យមានជ័យ ដើម្បីរឹតចំណងសាមគ្គីភាពក្នុងចំណោមនិស្សិតប្រុស និងស្រី ចែកលិខិតបញ្ជាក់ជូនដល់ក្រុមការងារអន្តេប្រុស</span></span></span><span style="font-family: Khmer OS Content;">-</span><span style="font-family: Lohit Devanagari;"><span lang="km-KH"><span style="font-family: Khmer OS Content;">ស្រី ក៏ដូចជាការស្វាមគន៍និស្សិតថ្មីផងដែរ។ </span></span></span></p>\n<p><span style="font-family: Amiko;">The Center of dormitory organized the Party held on 16th February, 2019 in order to strengthen the connection in among all students, to celebrate and deliver the certificates to both dormitory&rsquo;s team works, and as well as to welcome new generation.</span></p>\n<p>&nbsp;</p>\n<p><span style="font-family: Amiko;"><img src="https://api.mcu.edu.kh/storage/5e250edb4fb1f-1579486939.jpg" alt="" width="100%" /></span></p>	t	t	2020-01-20 02:22:31	2020-01-20 02:22:45
4	1	Board of MCU	https://api.mcu.edu.kh/storage/5e3775bc41021-1580692924.jpg	Curriculum Development training course at National Mongolian Mean Chey University	<h2>&nbsp;</h2>\n<p><code></code></p>\n<h2><span style="font-weight: 400;">លោក ជុំ សុវណ្ណគន្ធារស ព្រឹទ្ធបុរសរងមហាវិទ្យាល័យសង្គមសាស្ត្រនិងអភិវឌ្ឍន៍សហគមន៍នៃសាកលវិទ្យាល័យមានជ័យ និងលោក សូត្រ វណ្ណ: គ្រូបង្រៀនកម្រិតឧត្តមបានចូលរួមវគ្គបណ្តុះបណ្តាលអភិវឌ្ឍន៍កម្មវិធីសិក្សា <strong>Curriculum Development</strong> ជំនាញរដ្ឋបាលសាធារណ:នៅសាកលវិទ្យាល័យជាតិម៉ុងហ្គោលីដើម្បីត្រៀមបើកនិងគ្រប់គ្រងថ្នាក់បរិញ្ញាបត្ររដ្ឋបាលសាធារណ:នៅសាកលវិទ្យាល័យមានជ័យក្រោមការជួយជ្រោមជ្រែងពី<strong> GIZ</strong> អាល្លឺម៉ង់ក្នុងកម្មវិធីពង្រឹងអភិបាលកិច្ចថ្នាក់ក្រោមជាតិនៅខេត្តឧត្តរមានជ័យ សៀមរាប និងបន្ទាយមានជ័យ។</span></h2>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><strong>English Below....</strong></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2><img src="https://api.mcu.edu.kh/storage/5e3775d2c42e1-1580692946.jpg" alt="" width="100%" /></h2>\n<p>&nbsp;</p>\n<p><br /><br /><span style="font-weight: 400;">Faculty of Social Science and Community development, Mean Chey University, Cambodia will open the Bachelor Degree of the management of public administration in 2021 after Mr. Chum Sovannkunthearos, the vice dean , and Mr. Soth Vannak , the lecturer completed Curriculum Development training course at National Mongolian University.GIZ, which is responsible for strengthening of good governance at Oddor Mean Chey Province will support this course as well.</span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e377592585f7-1580692882.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	t	t	2020-02-03 01:22:41	2020-02-10 08:59:34
5	1	ICT	https://api.mcu.edu.kh/storage/5e49fc5b368c0-1581907035.jpg	Delegation from Mean Chey University attend a training on “Quality Assurance and Curriculum Design and Evaluation” under project for SICA at Romania.	<h2>&nbsp; &nbsp; គណៈប្រតិភូសាកលវិទ្យាល័យមានជ័យចូលរួមវគ្គបណ្តុះបណ្តាលស្តីពីការធានាគុណភាព ការអភិវឌ្ឍន៍ និងការវាយតម្លៃកម្មវិធីសិក្សា ក្រោមគម្រោងពង្រឹងគុណភាពនៃគ្រឹះស្ថានឧត្តមសិក្សាកម្ពុជា &ldquo;SICA&rdquo; នៅ ប្រទេសរ៉ូម៉ានី</h2>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>English Below...</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; ទីក្រុងស៊ីប៊ីយូ ប្រទេសរ៉ូម៉ានី កាលពីថ្ងៃទី០៨ ដល់ ថ្ងៃទី១៥ កុម្ភៈ ឆ្នាំ២០២០ ឯកឧត្ដម សំ ង៉ា សាកលវិទ្យាធិការសាកលវិទ្យាល័យមានជ័យ បានដឹកនាំក្រុមប្រតិភូគម្រោងរបស់សាកលវិទ្យាល័យលើផ្នែកពង្រឹងគុណភាពនៃគ្រឹះស្ថានឧត្តមសិក្សាកម្ពុជា &ldquo;SICA&rdquo; ចូលរួមវគ្គបណ្តុះបណ្តាលស្តីពីការធានាគុណភាព ការអភិវឌ្ឍន៍ និងការវាយតម្លៃកម្មវិធីសិក្សា នៅសាកលវិទ្យាល័យលូឆាន់ប្លាកា ស៊ីប៊ីយូ ប្រទេសរ៉ូម៉ានី</p>\n<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e49fb6e84c24-1581906798.jpg" alt="" width="90%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2><a title="Go To Gallery" href="http://mcu.edu.kh/gallery/6/quality-assurance-and-curriculum-design-and-evaluation" target="_blank" rel="noopener">More Images...</a></h2>\n<p>&nbsp;</p>\n<h2>Delegation from Mean Chey University attend a training on &ldquo;Quality Assurance and Curriculum Design and Evaluation&rdquo; under project for SICA at Romania.</h2>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Sibiu, Romania From the 10th to the 13th of February, 2020, His Excellency Sam Nga, Rector of Mean Chey University, led a delegation of the university team project for Strengthening Quality Assurance In Cambodian Higher Education (SICA) to attend a training on &ldquo;Quality Assurance and Curriculum Design and Evaluation&rdquo; at Lucian Blaga University of Sibiu, Romania.</p>\n<p>&nbsp;</p>\n<p>17/02/2020</p>	t	t	2020-02-17 02:36:12	2020-02-17 03:13:09
1	1	ICT	https://api.mcu.edu.kh/storage/5e1d817b8e2d3-1578991995.jpg	Test Here Title	<p>អត្ថបទ TEst</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e1d8193f284e-1578992019.jpg" alt="" width="100%" height="" /></p>\n<table style="border-collapse: collapse; width: 100%; height: 54px;" border="1">\n<tbody>\n<tr style="height: 18px;">\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n</tr>\n<tr style="height: 18px;">\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n</tr>\n<tr style="height: 18px;">\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n<td style="width: 10%; height: 18px;">&nbsp;</td>\n</tr>\n</tbody>\n</table>	f	f	2020-01-14 08:54:10	2020-02-04 07:42:30
6	1	ICT	https://api.mcu.edu.kh/storage/5e5cb6cb74320-1583134411.jpg	សិក្ខាសាលាផ្សព្វផ្សាយ "ច្បាប់ស្តីគណនេយ្យ និង សវនកម្ម"	<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e5cb64aae40f-1583134282.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;នាថ្ងៃពុធ ៤កើត ខែផល្គុន ឆ្នាំកុរ ឯកស័ក ព.ស. ២៥៦៣ ត្រូវនឹងថ្ងៃទី២៦ ខែកុម្ភ: ឆ្នាំ២០២០ ក្រុមប្រឹក្សាជាតិគណនេយ្យ នៃក្រសួងសេដ្ឋកិច្ច និងហិរញ្ញវត្ថុ សហការជាមួយវិទ្យា<span class="text_exposed_show">ស្ថានគណនេយ្យករជំនាញ និងសវនករកម្ពុជា និង<strong>សាកលវិទ្យាល័យមានជ័យ</strong> បានរៀបចំសិក្ខាសាលាផ្សព្វផ្សាយ<strong> "ច្បាប់ស្តីគណនេយ្យ និង សវនកម្ម</strong>" ក្រោមអធិបតេយ្យភាព ឯកឧត្តម ប៊ូ ថារិន អគ្គលេខាធិការ នៃអគ្គលេខាធិការដ្ឋានក្រុមប្រឹក្សាជាតិគណនេយ្យ តំណាងដ៏ខ្ពង់ខ្ពស់ឯកឧត្តម ងី តាយី រដ្ឋលេខាធិការ ក្រសួងសេដ្ឋកិច្ចនិងហិរញ្ញវត្ថុ និងជាប្រធានក្រុមប្រឹក្សាជាតិគណនេយ្យ ដោយមានការចូលរួមពីសាស្ត្រាចារ្យ និងសិស្សនិស្សិត ចំនួនប្រមាណជាង ១២០នាក់។ សិក្ខាសាលានេះមានគោលបំណងបញ្ជ្រាបចំណេះដឹង អំពីច្បាប់ស្តីគណនេយ្យ និង សវនកម្ម ដល់សិស្ស និស្សិត។ ឯកឧត្ដមបានមានប្រសាសន៍ថាច្បាប់ស្តីគណនេយ្យ និង សវនកម្មមានកាតព្វកិច្ចចំនួន ៣ គឺ៖<br /><em>- កាតព្វកិច្ចកាន់បញ្ជីគណនេយ្យ</em><br /><em>- កាតព្វកិច្ចរៀបចំរបាយការណ៍ហិរញ្ញវត្ថុ និង</em><br /><em>- កាតព្វកិច្ចដាក់របាយការណ៍ហិរញ្ញវត្ថុឱ្យរងសវនកម្ម។</em></span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><span class="text_exposed_show"><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e5cb67a481fb-1583134330.jpg" alt="" width="80%" /></span></p>\n<p>&nbsp;</p>\n<p><span class="text_exposed_show"><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e5cb69c446ab-1583134364.jpg" alt="" width="80%" /></span></p>\n<p>&nbsp;</p>\n<p><span class="text_exposed_show"><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e5cb6b620b53-1583134390.jpg" alt="" width="80%" /></span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><span class="text_exposed_show">02/03/2020</span></p>	t	t	2020-03-02 07:34:41	2020-03-02 07:37:46
8	1	ICT	https://api.mcu.edu.kh/storage/5e5cbd75360ac-1583136117.jpg	ទិវា​សិទ្ធិ​នារី​អន្តរជាតិ​ ៨​ មីនា​	<h2><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e5cbd3be848b-1583136059.jpg" alt="" width="80%" /></h2>\n<h2>បន្ទាប់ពីបញ្ចប់ការប្រឡងឆមាសលើកទី១ ឆ្នាំសិក្សា២០២០ គណគ្រប់គ្រង និងនិស្សិតសាកលវិទ្យាល័យមានជ័យបានប្រារព្ធ​ ទិវា​សិទ្ធិ​នារី​អន្តរជាតិ​ ៨​ មីនា​ នៅសាកលវិទ្យាល័យ​មានជ័យ​ ២៨​ កុម្ភៈ​ ២០២០</h2>\n<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e5cbd5223d84-1583136082.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	t	t	2020-03-02 08:01:59	2020-03-02 08:02:19
11	1	Foundation Year	https://api.mcu.edu.kh/storage/5e86fa807b8f5-1585904256.jpg	លទ្ធផលប្រឡងបញ្ចប់ឆមាសលើកទី១ ថ្នាក់ឆ្នាំសិក្សាមូលដ្ឋាន ជំនាន់ទី១៣ ឆ្នាំសិក្សា ២០១៩-២០២០	<p style="text-align: left;"><span style="color: #339966;">លទ្ធផលប្រឡងបញ្ចប់ឆមាសលើកទី១ ថ្នាក់ឆ្នាំសិក្សាមូលដ្ឋាន ជំនាន់ទី១៣ ឆ្នាំសិក្សា ២០១៩-២០២០</span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h3 style="text-align: center;"><span style="color: #339966;">មហាវិទ្យាល័យ វិទ្យាសាស្ត្រ និងបច្ចេកវិទ្យា</span></h3>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញពត៌មានវិទ្យា</span></h4>\n<p><img src="https://api.mcu.edu.kh/storage/5e86fb0dccf52-1585904397.jpg" alt="" width="100%" /></p>\n<p><img src="https://api.mcu.edu.kh/storage/5e86fb7dd9ab7-1585904509.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h3 style="text-align: center;"><span style="color: #339966;">មហាវិទ្យាល័យ សង្គមសាស្ត្រ និងអភិវឌ្ឍន៍សហគមន៍</span></h3>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញអភិវឌ្ឍន៍សហគមន៍</span></h4>\n<p><img src="https://api.mcu.edu.kh/storage/5e86fc1f19542-1585904671.jpg" alt="" width="100%" /></p>\n<p><img src="https://api.mcu.edu.kh/storage/5e86fc9d944f6-1585904797.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h3 style="text-align: center;"><span style="color: #339966;">មហាវិទ្យាល័យ សិល្បៈ មនុស្សសាស្ត្រ និងភាសា</span></h3>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញអក្សរសាស្ត្រខ្មែរ</span></h4>\n<p><img src="https://api.mcu.edu.kh/storage/5e86fd4d6e1b7-1585904973.jpg" alt="" width="100%" /></p>\n<p><img src="https://api.mcu.edu.kh/storage/5e86fd9fce06f-1585905055.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញភាសាអង់គ្លេស</span></h4>\n<p><img src="https://api.mcu.edu.kh/storage/5e86fdd7a63fb-1585905111.jpg" alt="" width="100%" /></p>\n<p><img src="https://api.mcu.edu.kh/storage/5e86fe2f0af2b-1585905199.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញភាសាចិន</span></h4>\n<p><img src="https://api.mcu.edu.kh/storage/5e86fe642301a-1585905252.jpg" alt="" width="100%" /></p>\n<p><img src="https://api.mcu.edu.kh/storage/5e86fe8146ba9-1585905281.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញភាសាកូរ៉េ</span></h4>\n<p><img src="https://api.mcu.edu.kh/storage/5e86fed0b21c7-1585905360.jpg" alt="" width="100%" /></p>\n<p><img src="https://api.mcu.edu.kh/storage/5e86fefdb11d3-1585905405.jpg" alt="" width="100%" /></p>\n<hr />\n<p>&nbsp;</p>\n<h3 style="text-align: center;"><span style="color: #339966;">មហាវិទ្យាល័យ គ្រប់គ្រងពាណិជ្ជកម្ម និងទេសចរណ៍</span></h3>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញគណនេយ្យ</span></h4>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e87001986be8-1585905689.jpg" alt="" width="100%" /></p>\n<p><img src="https://api.mcu.edu.kh/storage/5e8700688f54b-1585905768.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញហិរញ្ញវត្ថុ ធនាគារ</span></h4>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e870096c94da-1585905814.jpg" alt="" width="100%" /></p>\n<p><img src="https://api.mcu.edu.kh/storage/5e8700f880b6a-1585905912.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញគ្រប់គ្រង</span></h4>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e8701251c7c1-1585905957.jpg" alt="" width="100%" /></p>\n<p><img src="https://api.mcu.edu.kh/storage/5e870146b80e4-1585905990.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញទីផ្សារ</span></h4>\n<p><img src="https://api.mcu.edu.kh/storage/5e8701642b683-1585906020.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<hr />\n<p>&nbsp;</p>\n<h3 style="text-align: center;"><span style="color: #339966;">មហាវិទ្យាល័យ កសិកម្ម និងកែច្នៃអាហារ</span></h3>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញកសិឧស្សាហកម្ម</span></h4>\n<p><img src="https://api.mcu.edu.kh/storage/5e8701cb38ad8-1585906123.jpg" alt="" width="100%" /></p>\n<p><img src="https://api.mcu.edu.kh/storage/5e87023a4a917-1585906234.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញក្សេត្រសាស្ត្រ</span></h4>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e870268e92aa-1585906280.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញបសុពេទ្យ</span></h4>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e8702904f39f-1585906320.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<h4 style="text-align: center;"><span style="color: #008080;">ជំនាញគ្រឿងយន្តកសិកម្ម</span></h4>\n<p>&nbsp;</p>\n<p><span style="color: #008080;"><img src="https://api.mcu.edu.kh/storage/5e87064ab4e03-1585907274.jpg" alt="" width="100%" /></span></p>\n<p><span style="color: #008080;"><img src="https://api.mcu.edu.kh/storage/5e870673ae4ec-1585907315.jpg" alt="" width="100%" /></span></p>	t	t	2020-04-03 09:02:31	2020-04-03 09:49:04
7	1	Students Association	https://api.mcu.edu.kh/storage/5e5cbc03b64a1-1583135747.jpg	កម្មវិធីសម្ភោធផ្លូវជាតិ58	<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e5cbba552ee8-1583135653.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p>នៅថ្ងៃ4កើតខែផល្គុនឆ្នាំកុរ ឯកសកព.ស ២៥៦៣ ត្រូវនឹងថ្ងៃទី26 ខែកុម្ភៈ ឆ្នាំ2020 សមាគមនិស្សិតព្រមទាំងលោកគ្រូនឹងអ្នកគ្រូបានដឹកនាំនិស្សិតចូលរួមកម្មវិធីសម្ភោធផ្លូវជាតិ៥៨ ពីប៉ោយប៉ែតផ្លូវជាតិលេខ៥ដល់ផ្អុង ផ្លូវជាតិលេខ៦៨ ប្រវែង174,16 គីឡូម៉ែត្រ ដែលស្ថិតនៅក្រោមអធិបតីភាពរបស់សម្តេចអគ្គសេនាបតីតេជោ ហ៊ុន សែន នាយករដ្ឋមន្រ្តីនៃព្រះរាជាណាចក្រកម្ពុជា នៅវេលាម៉ោង6:30 នាទីព្រឹក ដែលមានទីតាំងស្ថិតនៅប៉ោយប៉ែត។</p>\n<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e5cbbc1910e9-1583135681.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e5cbbdcde69c-1583135708.jpg" alt="" width="80%" /></p>	t	t	2020-03-02 07:55:50	2020-03-02 08:02:17
10	1	Dormitory and Sport Center	https://api.mcu.edu.kh/storage/5e7068d1527b8-1584425169.jpg	MCU CUP 2020	<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e70684d44da8-1584425037.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MCU CUP2020 ចាប់ផ្តើមហើយ! ពីរសៀលថ្ងៃសៅរ៍ ១៤ មីនា ២០២០។ សូមអញ្ជើញចូលរួមទាំងអស់គ្នា!ប្រកួតរៀងរាល់ថ្ងៃសៅរ៍-អាទិត្យ។ សូមអរគុណចំពោះប្អូនៗក្រុមកីឡាករទាំង៥មហាវិទ្យាល័យ ប្អូនៗនិស្សិត បុគ្គលិក គ្រូ នៃសាកលវិទ្យាល័យមានជ័យទាំងអស់ និងសប្បុរសជន ដែលបានចូលរួមជួយឧបត្ថម្ភ គាំទ្រ និងលើកទឹកចិត្ត។<br />កីឡានាំមកនូវសុខភាព សាមគ្គីភាព គំនិតច្នៃប្រឌិតជោគជ័យ !<br />ត្រូវរួមគ្នាទប់ស្កាត់និងលុបបំបាត់ ការជួញដូរនិងប្រើប្រាស់គ្រឿងញៀន, ការជួញដូរមនុស្ស , អំពើហឹង្សា , គោរពច្បាប់ចរាចរណ៍ , ការពារខ្លួននិងបង្ការ ទប់ស្កាត់ ជម្ងឺកូវីដ ១៩។</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e7068793ce46-1584425081.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e70689491fba-1584425108.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e7068a8dbc4c-1584425128.jpg" alt="" width="80%" /></p>	t	t	2020-03-17 06:05:51	2020-03-26 06:52:51
9	1	Administration Office	https://api.mcu.edu.kh/storage/5e706675ce750-1584424565.jpg	ការណែរនាំ​ អំពីជំងឺថ្មី​ COVID19 និងវិធានការពារជំងឺ​ COVID19	<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e70662bd9ce5-1584424491.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; សាកលវិទ្យាល័យមានជ័យ​ បានរៀបចំការណែរនាំ​ អំពីជំងឺថ្មី​ COVID19 និងវិធានការពារជំងឺ​ COVID19 នេះ​ ដល់លោកគ្រូ​ អ្នកគ្រូ​ បុគ្គលិក​ និងនិស្សិត​ នៃ​ សាកលវិទ្យាល័យ​មានជ័យ​ ក្រោម​អធិបតីភាព​ ឯកឧត្ដម​ សំ​ ង៉ា​ សាកលវិទ្យាធិការ​នៃ​សាកលវិទ្យាល័យ​មានជ័យ​</p>\n<p><a class="_58cn" href="https://www.facebook.com/hashtag/%E1%9F%A1%E1%9F%A6%E1%9E%98%E1%9E%B8%E1%9E%93%E1%9E%B6%E1%9F%A2%E1%9F%A0%E1%9F%A2%E1%9F%A0?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARCOjUrTrt4ZtdS2rOELf6m8Sxz7oRr3-vhrNM8TY_x1iVzdfpmUbXRYjh7lR9CPZyPvnhKTuRcYumR9isiAa0YGJ60RATii1m7-1XYjeCUN0GIn_PktiKz38lPyzHdMGOs93qcETWJGzt0hU1IYYd2_bLpXU3KhaI27SZLkdiO2yTEvuQ2Td7TxLxSzNa1R_KtYevNySU1gECnd2eYQFsHPFqhAq01kKUxEy3JX4EIcWoGp_oECz1I4kk0YZCUyPk4XNQqPRjFEGTTpaSqIXoUpRDL16jJKl8-qwG0iC2JbUudmsgwCYUhHQGMm3Hab8Jzn-PILHpf1A8qi2NqGkpvORA&amp;__tn__=%2ANK-R" data-ft="{&quot;type&quot;:104,&quot;tn&quot;:&quot;*N&quot;}"><span class="_5afx"><span class="_58cl _5afz" aria-label="hashtag">#</span><span class="_58cm">១៦មីនា២០២០</span></span></a></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><span class="_5afx"><span class="_58cm"><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e7065e9de8ad-1584424425.jpg" alt="" width="80%" /></span></span></p>\n<p>&nbsp;</p>\n<p><span class="_5afx"><span class="_58cm"><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e706641bf900-1584424513.jpg" alt="" width="80%" /></span></span></p>\n<p>&nbsp;</p>\n<p><span class="_5afx"><span class="_58cm"><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e706661425d2-1584424545.jpg" alt="" width="80%" /></span></span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	t	t	2020-03-17 05:56:09	2020-03-17 06:07:17
13	1	ICT	https://api.mcu.edu.kh/storage/5e9e92600397a-1587450464.jpg	MCU E-learning Semester2 while Quarantine 2019-2020	<h2 style="text-align: center;">&nbsp;</h2>\n<h2 style="text-align: center;"><span style="color: #339966;">សេចក្ដីណែនាំ</span></h2>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e9e90a87525a-1587450024.jpg" alt="" width="100%" /></p>\n<p><img src="https://api.mcu.edu.kh/storage/5e9e90ccad7d6-1587450060.jpg" alt="" width="100%" /></p>\n<p><img src="https://api.mcu.edu.kh/storage/5e9e90e5741c8-1587450085.jpg" alt="" width="100%" /></p>\n<p><img src="https://api.mcu.edu.kh/storage/5e9e9100d465e-1587450112.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>	t	t	2020-04-21 06:27:47	2020-04-21 06:30:50
12	1	ICT	https://api.mcu.edu.kh/storage/5e9437653c423-1586771813.jpg	Happy Khmer New Year 2020	<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5e94385027932-1586772048.jpg" alt="" width="50%" /></p>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e94378b103e2-1586771851.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e94381772d68-1586771991.jpg" alt="" width="100%" /></p>\n<p>&nbsp;</p>\n<p><img src="https://api.mcu.edu.kh/storage/5e9438341b0dd-1586772020.jpg" alt="" width="100%" /></p>	t	t	2020-04-13 10:01:43	2020-04-13 10:03:58
14	1	Board of MCU	https://api.mcu.edu.kh/storage/5ea2870424605-1587709700.jpg	ប្រកាសសេចក្តីសម្រេច និងដឹកនាំកិច្ចប្រជុំ នៅសាកលវិទ្យាល័យមានជ័យ	<h2><span style="color: #339966;">ប្រកាសសេចក្តីសម្រេច និងដឹកនាំកិច្ចប្រជុំ នៅសាកលវិទ្យាល័យ មានជ័យ !</span></h2>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h3><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5ea285432a1ae-1587709251.jpg" alt="" width="80%" /></h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h4><br /><br />បន្ទាយមានជ័យ ៖ រសៀលនេះតំណាងដ៏ខ្ពង់ខ្ពស់ឯកឧត្តមបណ្ឌិតសភាចារ្យ ហង់ជួន ណារ៉ុន រដ្ឋមន្ត្រីក្រសួងអប់រំ យុវជន និងកីឡា និងក្នុងនាមជាប្រធានក្រុមប្រឹក្សាភិបាលសាកលវិទ្យាល័យមានជ័យ បានធ្វើការប្រកាសសេចក្តីសម្រេចស្តីពី ការបង្កើតគណៈកម្មការគ្រប់គ្រងសាកលវិទ្យាល័យមានជ័យ និងដឹកនាំកិច្ចប្រជុំស្តីពី យុទ្ធសាស្ត្រកំណែទម្រង់សាកលវិទ្យាល័យ មានជ័យ ។</h4>\n<h3><br /><span style="color: #339966;">២៣ មេសា ២០២០</span></h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5ea285623ddac-1587709282.jpg" alt="" width="80%" /></p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5ea2858e5699f-1587709326.jpg" alt="" width="80%" /></p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5ea285d0ce3ce-1587709392.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p>Source: <a title="Go to Facebook " href="https://www.facebook.com/story.php?story_fbid=2692931934318101&amp;id=1603637373247568" target="_blank" rel="noopener">H.E Sor Sokha Facebook</a></p>	t	t	2020-04-24 06:27:09	2020-04-24 06:33:51
15	1	ICT	https://api.mcu.edu.kh/storage/5edf38f500faa-1591687413.jpg	កិច្ចប្រជុំបូកសរុបការងារប្រចាំខែឧសភា	<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5edf3909b8edc-1591687433.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; នៅរសៀល ថ្ងៃទី២៩ ខែឧសភា ឆ្នាំ២០២០ នៅសាកលវិទ្យាល័យមានជ័យបានបើកកិច្ចប្រជុំមួយក្រោមអធិបតីភាពឯកឧត្តម ស សុខា រដ្ឋលេខាធិការក្រសួងអប់រំ យុវជន និងកីឡានិងជាប្រធានក្រុមប្រឹក្សាភិបាលសាកលវិទ្យាល័យមានជ័យ ដើម្បីបូកសរុបការងារប្រចាំខែឧសភា និងលេីកទិសដៅបន្តខែមិថុនា</h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5edf39682a218-1591687528.jpg" alt="" width="80%" /></p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5edf398b640bf-1591687563.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p>06/09/2020</p>	t	t	2020-06-09 07:27:10	2020-06-09 07:27:21
16	1	ICT	https://api.mcu.edu.kh/storage/5edf3a49dfc07-1591687753.jpg	ឯកឧត្តម ស សុខា ឧបត្ថម្ភកូនឈេី៤៧០ដេីមរួមមានក្រញូង និងបេង	<h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5edf3ab09291b-1591687856.jpg" alt="" width="80%" /></h3>\n<p>&nbsp;</p>\n<h3>&nbsp;</h3>\n<h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; គណៈគ្រប់គ្រងនិងមន្ត្រីអប់រំទាំងអស់នៃសាកលវិទ្យាល័យមានជ័យសូមគោរពថ្លែងអំណរគុណឯកឧត្តម ស សុខា រដ្ឋលេខាធិការក្រសួងអប់រំ យុវជន និងកីឡានិងជាប្រធានក្រុមប្រឹក្សាភិបាលសាកលវិទ្យាល័យមានជ័យដែលបានឧបត្ថម្ភកូនឈេី៤៧០ដេីមរួមមានក្រញូង និងបេង។</h3>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p style="text-align: center;"><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5edf3ae3680b4-1591687907.jpg" alt="" width="80%" /></p>\n<p style="text-align: center;">&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5edf3b4c03b24-1591688012.jpg" alt="" width="80%" /></p>\n<p style="text-align: center;">&nbsp;</p>\n<p style="text-align: left;">06/09/2020</p>	t	t	2020-06-09 07:35:02	2020-06-09 07:41:14
17	1	Board of MCU	https://api.mcu.edu.kh/storage/5f33b78ce8ff8-1597224844.jpg	កិច្ចប្រជុំបូកសរុបលទ្ធផលការងារប្រចាំខែកក្កដា និងលើកទិសដៅបន្តខែសីហា	<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5f33b7cf1e990-1597224911.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;នៅរសៀលថ្ងៃសៅរ៍ទី២៥ ខែកក្កដា ឆ្នាំ២០២០​ ​សាកលវិទ្យាល័យមានជ័យបានបើកកិច្ចប្រជុំបូកសរុបលទ្ធផលការងារប្រចាំខែកក្កដា និងលើកទិសដៅបន្តខែសីហាក្រោមអធិបតីភាព ឯកឧត្តម ស សុខា រដ្ឋលេខាធិការក្រសួងអប់រំ យុវជន និងកីឡានិងជាប្រធានក្រុមប្រឹក្សាភិបាលសាកលវិទ្យាល័យមានជ័យ ។</p>\n<p>English Below...</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5f33b7f708d9c-1597224951.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In the afternoon of Friday, July 25, 2020, Mean Chey University held a summative meeting and planning for August which is presided over by His Excellency Sar Sokha, Secretary of State of the Ministry of Education, Youth and Sports and Director of Mean Chey University's Board of Council.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://api.mcu.edu.kh/storage/5f33b80c4b1cc-1597224972.jpg" alt="" width="80%" /></p>\n<p>&nbsp;</p>	t	t	2020-08-12 09:36:24	2020-08-12 09:38:23
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.oauth_access_tokens (id, user_id, client_id, name, scopes, revoked, created_at, updated_at, expires_at) FROM stdin;
6b8538740f0d2698658110a426e40c1dd4810ac813a385f9517b7ed8d3de3b399a41f08d0865c6aa	3	1	authToken	[]	f	2020-01-08 17:05:50	2020-01-08 17:05:50	2021-01-08 17:05:50
44f5d0fb31b2fc593bc172472391cb174583788384cc94e55697e80823cfedf137a9916d4c88f6cf	3	1	authToken	[]	f	2020-01-08 17:05:56	2020-01-08 17:05:56	2021-01-08 17:05:56
47d96f3f1040cbaf80e8a2027fd902b723649b954b695cfd856a845e96b862f4b2ebaa054356eb40	3	1	authToken	[]	f	2020-01-08 17:15:07	2020-01-08 17:15:07	2021-01-08 17:15:07
b29ce12219dffe226e0baf27f0a29950f6200c2f00292686de10ee5161c3df286cd6e6fe6dd7273f	2	1	authToken	[]	f	2020-01-08 17:19:07	2020-01-08 17:19:07	2021-01-08 17:19:07
9b0b6897a7c73a15d55ec203f41e0eeaebd08f66ee24248b48707f35240db5a6ff4cb67f88b3bdf2	2	1	authToken	[]	f	2020-01-08 23:50:33	2020-01-08 23:50:33	2021-01-08 23:50:33
c6382d1f0703ccd0197442551da9e52f803759477126cfcfbdf787daf2b2749d171f9fb1afdb856f	2	1	authToken	[]	f	2020-01-09 00:12:52	2020-01-09 00:12:52	2021-01-09 00:12:52
1ecd02d4df2a1167fc6bab6cbf9cb04d0487d885a52dacfa0e3478e5b52cc69e5b68a5cf21c5a97b	3	1	authToken	[]	f	2020-01-09 02:59:15	2020-01-09 02:59:15	2021-01-09 02:59:15
6bde24efc49b5ad746f74065ad24f880ff87be6e1c3c8a6026a311011bbca3c47e306b74358f106b	3	1	authToken	[]	f	2020-01-11 03:15:29	2020-01-11 03:15:29	2021-01-11 03:15:29
1f3b2490de7296673f9485c82d89f379039a2f439e819b51fc353685d19f3597b96e245667c2229e	3	1	authToken	[]	f	2020-01-11 12:32:43	2020-01-11 12:32:43	2021-01-11 12:32:43
fc3e5246350a8464df90f9a7f57949ed5cb72f889810116e50e4df873ef007aa52d044df3788c9cb	3	1	authToken	[]	f	2020-01-13 07:39:36	2020-01-13 07:39:36	2021-01-13 07:39:36
99c060e432c4e0be4fa568083cf12f06eb2f3be0803b3a80056fc16e3975ea364badc8b5a6b5d152	3	1	authToken	[]	f	2020-01-20 01:55:08	2020-01-20 01:55:08	2021-01-20 01:55:08
8ba27bd124ddfa1be3c7ee8455d8fdd830d74f89133c927c5e612cad44e3d7a45cbe5bbba9f0c9fc	3	1	authToken	[]	f	2020-01-20 10:13:43	2020-01-20 10:13:43	2021-01-20 10:13:43
857c0c7633595f1bff781a7abb5d3b757dd41d586c06131810b518626b468d86ac551b26d9d4ab76	3	1	authToken	[]	f	2020-01-23 03:10:42	2020-01-23 03:10:42	2021-01-23 03:10:42
892d1b64b9c3213e3a95142975797b6c978b1051f168c8c7d43a8251bd8198aeee06aa0cea2cc0c0	3	1	authToken	[]	f	2020-01-23 08:49:21	2020-01-23 08:49:21	2021-01-23 08:49:21
12da423dffb86b972a5880cc3b086376bffaa0034be37c1c3eabac8571d227edc191244ae0a9ec00	3	1	authToken	[]	f	2020-01-24 04:20:02	2020-01-24 04:20:02	2021-01-24 04:20:02
7dbda679805b66e9f8c875e08b3fbbcc50fd1fafc2be1612d773f0a9fffbbf60d4a15adbd7e3fbe3	3	1	authToken	[]	f	2020-01-24 04:23:48	2020-01-24 04:23:48	2021-01-24 04:23:48
758f45d8fb6a1206d4de2611edf6bd15f21b65936a7d4423430872668ca34dbb3d5b188ef63bf4bf	3	1	authToken	[]	f	2020-02-03 02:17:18	2020-02-03 02:17:18	2021-02-03 02:17:18
9b3746f0ba6b5ebbe8a0f97fc27da20d557f13c746ad1053eada0fca895e52e48d6d506ad357e27a	3	1	authToken	[]	f	2020-02-03 08:11:26	2020-02-03 08:11:26	2021-02-03 08:11:26
17a2ed15c0a3af5cf477a15875820becce577dc8a86e1520db22abba9bc924a8cc450dff09eb5dd3	3	1	authToken	[]	f	2020-02-06 14:12:51	2020-02-06 14:12:51	2021-02-06 14:12:51
62b16d8698180573c852431e2d384ddd22859c3741e72c660f3bd42f9f5f278876a54ec73eb12ec9	3	1	authToken	[]	f	2020-02-06 14:12:53	2020-02-06 14:12:53	2021-02-06 14:12:53
03e93f382e5f95f54f900fa72cbbb1eb2e883b11e6b3d6ca4880e14ee85097772f6a328dca38dc6a	3	1	authToken	[]	f	2020-02-11 03:32:37	2020-02-11 03:32:37	2021-02-11 03:32:37
7a1422f112426c82e0101c6c8ad8075069f9777615f6441c4d1e3b65217b6d2fd97d1a7f35c878ad	3	1	authToken	[]	f	2020-02-16 09:17:33	2020-02-16 09:17:33	2021-02-16 09:17:33
9e328b89cc893185345d7a02109af8507e53819e62381f4dfe9574e5a312835aa56dcc1ad8dd84aa	3	1	authToken	[]	f	2020-03-23 15:27:38	2020-03-23 15:27:38	2021-03-23 15:27:38
a9e0739196d7121814fc9acd21c17263fa41e9c376a905fe8c28de1f16b260b4e4f87f31f84b9711	4	1	authToken	[]	f	2020-04-05 13:47:38	2020-04-05 13:47:38	2021-04-05 13:47:38
6caa54b1c276e5d11af1db8e700793a79e411dbff1b460fa72fa5d1a84d9a8fc5c9826051a354aaf	3	1	authToken	[]	f	2020-06-04 10:21:55	2020-06-04 10:21:55	2021-06-04 10:21:55
230607344cd4132c2c1da43e602a0e05f7a32a204e26bdc1bb073107bca399c5c0b6a4d38459ba41	3	1	authToken	[]	f	2020-06-11 02:22:57	2020-06-11 02:22:57	2021-06-11 02:22:57
3fceedf0a54292ec98e1006cd1276d800d13ffb4bec709ba22803d5681f8ca8170e4ef58b1ba2604	3	3	authToken	[]	f	2020-07-29 09:27:58	2020-07-29 09:27:58	2021-07-29 09:27:58
f88f7baeb382e21850c6ba93e81889df56cbe9ea6a01f8e0700653f318f6d6fc8391575df27826b0	3	3	authToken	[]	f	2020-07-29 14:48:22	2020-07-29 14:48:22	2021-07-29 14:48:22
57201fc91a256a82d52769b43b563373184b060b5e87c4b3ca5bcfd70e5668210cdfcb4d842e322f	3	3	authToken	[]	f	2020-07-30 06:25:40	2020-07-30 06:25:40	2021-07-30 06:25:40
605ca267c69f8879613ef7b29e62f10ce70ddc5dbb6c7bac0a4aa5cf0b57aa41a16cde24a88a762d	3	3	authToken	[]	f	2020-08-01 14:13:56	2020-08-01 14:13:56	2021-08-01 14:13:56
c132c663790bde6a671bf5ce21f9d8d627e0162f779831ac1b96493b61f7c9949ad81913b474727b	3	7	authToken	[]	f	2020-09-04 15:07:12	2020-09-04 15:07:12	2021-09-04 15:07:12
32d57ef5b7a548a76a89abc24a2872a367d8357d6cd2ea76fc9ac3019ed338c19cd2603c18127e16	3	7	authToken	[]	f	2020-09-04 15:08:21	2020-09-04 15:08:21	2021-09-04 15:08:21
7e3b854967541534baddec8fb829b656441d37280f9c2af2208b614daf61e8969350cf79ab8fd76f	3	7	authToken	[]	f	2020-10-05 10:24:34	2020-10-05 10:24:34	2021-10-05 10:24:34
d53c93b155491d1f3b6def93065a91c536c0243d5fa53c120fdd9a7de6a83e23610ff00facf73ca3	3	7	authToken	[]	f	2020-10-08 06:30:24	2020-10-08 06:30:24	2021-10-08 06:30:24
74080a3e3ebfd36cb6ab07beec91365fdb6e200ccc12e613485a0127f03f41e134dcf1240bd1d737	3	7	authToken	[]	f	2020-11-12 03:49:18	2020-11-12 03:49:18	2021-11-12 03:49:18
\.


--
-- Data for Name: oauth_auth_codes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.oauth_auth_codes (id, user_id, client_id, scopes, revoked, expires_at) FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.oauth_clients (id, user_id, name, secret, redirect, personal_access_client, password_client, revoked, created_at, updated_at) FROM stdin;
1	\N	Mean Chey University Personal Access Client	jmJyPfyU6SgYqXrRao1GGbguqlkrDte1ETHQeaRv	http://localhost	t	f	f	2020-01-08 17:01:30	2020-01-08 17:01:30
2	\N	Mean Chey University Password Grant Client	lDYbPRxtdFCyAvKkPGc76klJgKgMF43khUVQWbBO	http://localhost	f	t	f	2020-01-08 17:01:30	2020-01-08 17:01:30
3	\N	API Mean Chey University Personal Access Client	cILGsXmcf5O5xSwDSP1eDUeKxTU60Mgx7CnY9qzl	http://localhost	t	f	f	2020-07-29 09:17:35	2020-07-29 09:17:35
4	\N	API Mean Chey University Password Grant Client	qtkfPz13wFTgoKqadY9IekgN2unknLTojVajIqUb	http://localhost	f	t	f	2020-07-29 09:17:35	2020-07-29 09:17:35
5	\N	API Mean Chey University Personal Access Client	v4P7i5e2m1I71lvrzAH1Y7PxOMmeQtkgXMWOZgS5	http://localhost	t	f	f	2020-09-04 14:15:56	2020-09-04 14:15:56
6	\N	API Mean Chey University Password Grant Client	puIRLneuu8CExZDwGAC4DwCnaxmCW5GTVeYDJtJv	http://localhost	f	t	f	2020-09-04 14:15:56	2020-09-04 14:15:56
7	\N	API Mean Chey University Personal Access Client	R9Ni3RHK9bpW6znON85AI7rtWkm46dVWnNVHpmON	http://localhost	t	f	f	2020-09-04 15:03:44	2020-09-04 15:03:44
8	\N	API Mean Chey University Password Grant Client	HOB6nVVJfqb8m7yUxmz4hjVE8bTZsCRbeosxYyat	http://localhost	f	t	f	2020-09-04 15:03:44	2020-09-04 15:03:44
\.


--
-- Data for Name: oauth_personal_access_clients; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.oauth_personal_access_clients (id, client_id, created_at, updated_at) FROM stdin;
1	1	2020-01-08 17:01:30	2020-01-08 17:01:30
2	3	2020-07-29 09:17:35	2020-07-29 09:17:35
3	5	2020-09-04 14:15:56	2020-09-04 14:15:56
4	7	2020-09-04 15:03:44	2020-09-04 15:03:44
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.oauth_refresh_tokens (id, access_token_id, revoked, expires_at) FROM stdin;
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.projects (id, logo, project_name, project_from, description, project_status, created_at, updated_at, url) FROM stdin;
5	https://api.mcu.edu.kh/storage/5e3925413215b-1580803393.jpg	ALIEN	Erasmus+	Project ALIEN designs, implements, and validates an active learning methodology based on PBL environments addressing real-life issues related to science, technology, engineering, and math (STEM) concepts. This methodology aims to build among students skills that are in demand by industry and to facilitate their easy transition into the world of work. The ALIEN PBL, active learning intervention follows a holistic implementation that aims to make PBL a key pedagogical approach at participating institutions and beyond	ongoing	2020-02-04 07:23:45	2020-02-19 07:12:39	http://www.mcu.edu.kh/
6	https://api.mcu.edu.kh/storage/5e3c349b8c8c1-1581003931.jpg	BALANCE	Erasmus+	BALANCE: TOWARDS SUSTAINABLE FINANCIAL MANAGEMENT OF CAMBODIAN UNIVERSITIES	ongoing	2020-02-04 07:31:20	2020-02-06 15:45:34	http://www.mcu.edu.kh/
4	https://api.mcu.edu.kh/storage/5e3c3506ab3de-1581004038.jpg	UNICAM	Erasmus+ Programme, European Union	In Cambodia, agriculture is the backbone of the country's economy, and it is currently a priority sector of the government policy. Not only the Ministry of Agriculture who work on this sector, the Ministry of Education, Youth and Sport (MoEYS) also play a very important role in development of human resources for this sector. In fact, a higher education institution (HEI) in the country is poor in terms of the quality, which needs improving and enhancing.	finished	2020-02-04 07:20:58	2020-02-06 15:47:22	http://www.mcu.edu.kh/
3	https://api.mcu.edu.kh/storage/5e3c3614ce04f-1581004308.jpg	TACTIC	Erasmus+ Programme, European Union	The project Through Academic Cooperation Towards Innovative Capacity (TACTIC) is aimed at developing the capacities of Higher Education Institutions (HEIs) in Mongolia, Vietnam and Cambodia to modernize the universities’ management, and improve the services and procedures in line with the advanced EU standards.	finished	2020-02-04 07:16:31	2020-02-06 15:51:51	http://www.mcu.edu.kh/
7	https://api.mcu.edu.kh/storage/5e3d5abecb78f-1581079230.jpg	Master of Industry 4.0	Erasmus+	Master of Industry 4.0	ongoing	2020-02-04 07:36:20	2020-02-07 12:40:40	http://www.mcu.edu.kh/
2	https://api.mcu.edu.kh/storage/5e391807a0a8f-1580800007.jpg	SICA	Erasmus+ Programme, European Union	We have applied this SICA project since it is to contribute to Cambodian Higher Education Vision 2030 through the improvement of internal Quality Assurance in Cambodian HEIs, Specially, it aims at building up a technical capacity and establishing an institutional quality assurance culture in RUPP.\n\nOur Quality Assurance Center (QAC) of the RUPP have been supported with Capacity Building (CBHE) under SICA Project of Erasmus + with upgrading staffs' capacity and improving our needed equipment that help foster the work regarding the strengthening the Quality Assurance at our University. Thanks to Erasmus+ for the funding us under SICA Project.	ongoing	2020-02-04 07:07:56	2020-04-05 13:49:09	http://www.mcuqa.com
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, name, profile, role, email, email_verified_at, password, status, remember_token, created_at, updated_at) FROM stdin;
1	user	images/placeholder/placeholder.png	user	user@mail.com	\N	$2y$10$mhea3FDllpikpfXoLRiq9OWrHib5Vnd3uhX2Q2v352T4XrlmMK.e.	t	\N	\N	\N
2	Tun Cham Roeun	images/placeholder/placeholder.png	user	chamroeuntun25@outlook.com	\N	$2y$10$XxyNISV0PtFmo8.Cyy2WpOAWNM.DMA8J8DBFLkbGesph7PccR1oTi	t	\N	\N	\N
3	Mean Chey University	images/placeholder/placeholder.png	user	admin@mcu.edu.kh	\N	$2y$10$ZWXiDjmbMhy5OVfpLgZ/2OrUEo.8eOCaQmmvLpRDa.m0Inj0SxpCy	t	\N	\N	\N
4	Tun Cham Roeun	images/placeholder/placeholder.png	developer	tunchamroeun@siqware.com	\N	$2y$10$QeBTernn6dynogV/j6wmxuVWJvZ.C6iwlFkdcLvEP5fRNO.dnmDjm	t	\N	\N	\N
\.


--
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.videos (id, title, url, created_at, updated_at) FROM stdin;
1	Meanchey University's students exchange program to Dhonburi Rajabhat University, Bangkok, Thailand.	4ThPy7fYt78	2020-02-06 14:56:23	2020-02-06 14:56:23
2	MCU SSS, Mean Chey University	1qleS2_Fyrk	2020-02-06 14:57:31	2020-02-06 14:57:31
3	Chinese language, MeanChey University, សាកលវិទ្យាល័យមានជ័យ BMC	Q1us8RDKT6U	2020-02-06 14:59:46	2020-02-06 14:59:46
4	Banteay Meanchey View by Saly Express	MVoyoACwdRM	2020-02-06 15:01:58	2020-02-06 15:01:58
5	សាកលវិទ្យាល័យមានជ័យ Khmer literacture major student sharing her experiences in MCU	-kDLKd9IjPE	2020-02-06 15:03:38	2020-02-06 15:03:38
6	Graduation Ceremony, Mean Chey University សាកលវិទ្យាល័យមានជ័យ BMC	UaZq4aQ-3hg	2020-02-06 15:07:17	2020-02-06 15:07:17
7	Chinese major student sharing his experiences in china, MCU សាកលវិទ្យាល័យមានជ័យ BMC	iKep7z9p7PA	2020-02-06 15:08:08	2020-02-06 15:08:08
9	First Local Guides Meet up in Banteay Meanchey	X6p-oDGfV30	2020-02-06 15:35:17	2020-02-06 15:35:17
10	MCU Sangkranta 2019	px1_BhOkj94	2020-03-05 03:05:19	2020-03-05 03:05:19
11	Students of Mean Chey University Visited at UniKL, Malaysia	HPjevblmno4	2020-03-05 03:23:37	2020-03-05 03:23:37
12	Mean Chey University Faculty of Business Management and Tourism​​ Activities	8i-yfDyCPyk	2020-03-05 03:32:59	2020-03-05 03:32:59
13	ការសិក្សាលើការដាំដុះដំណាំ Mean Chey University	3C8TZb3Ehz8	2020-03-05 03:46:59	2020-03-05 03:46:59
\.


--
-- Name: a_o_c_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.a_o_c_s_id_seq', 16, true);


--
-- Name: abouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.abouts_id_seq', 14, true);


--
-- Name: aoc_names_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.aoc_names_id_seq', 23, true);


--
-- Name: banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.banners_id_seq', 8, true);


--
-- Name: collaborations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.collaborations_id_seq', 19, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: galleries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.galleries_id_seq', 19, true);


--
-- Name: gallery_albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.gallery_albums_id_seq', 262, true);


--
-- Name: majors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.majors_id_seq', 15, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.migrations_id_seq', 91, true);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.news_id_seq', 17, true);


--
-- Name: oauth_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.oauth_clients_id_seq', 8, true);


--
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.oauth_personal_access_clients_id_seq', 4, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_id_seq', 8, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.videos_id_seq', 13, true);


--
-- Data for Name: BLOBS; Type: BLOBS; Schema: -; Owner: -
--

BEGIN;

SELECT pg_catalog.lo_open('17015', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17018', 131072);
SELECT pg_catalog.lowrite(0, '\x7f454c4602010100000000000000000003003e000100000090110000000000004000000000000000c8310000000000000000000040003800090040001a0019000100000004000000000000000000000000000000000000000000000000000000700a000000000000700a00000000000000100000000000000100000005000000001000000000000000100000000000000010000000000000e105000000000000e10500000000000000100000000000000100000004000000002000000000000000200000000000000020000000000000d002000000000000d00200000000000000100000000000000100000006000000102e000000000000103e000000000000103e000000000000b802000000000000c00200000000000000100000000000000200000006000000202e000000000000203e000000000000203e000000000000c001000000000000c0010000000000000800000000000000040000000400000038020000000000003802000000000000380200000000000024000000000000002400000000000000040000000000000050e574640400000050200000000000005020000000000000502000000000000074000000000000007400000000000000040000000000000051e574640600000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000052e5746404000000102e000000000000103e000000000000103e000000000000f001000000000000f0010000000000000100000000000000040000001400000003000000474e550054275fec7e35186211dfd64a20d019105bb17cb30000000003000000180000000100000006000000900900b05589ac41180000001d00000020000000325e541ea868be122e67541eaa5fbe125f4de3214aad229d32a1f45b25681b32c60da6d46637d3ed339268fe000000000000000000000000000000000000000000000000be0000001200000000000000000000000000000000000000e900000012000000000000000000000000000000000000001000000020000000000000000000000000000000000000005601000012000000000000000000000000000000000000004f01000012000000000000000000000000000000000000001a0100001200000000000000000000000000000000000000b60000001200000000000000000000000000000000000000f10000001200000000000000000000000000000000000000db0000001200000000000000000000000000000000000000490100001200000000000000000000000000000000000000010000002000000000000000000000000000000000000000a50000001000000000000000000000000000000000000000780000001200000000000000000000000000000000000000430100001200000000000000000000000000000000000000e100000012000000000000000000000000000000000000001f0100001200000000000000000000000000000000000000d500000012000000000000000000000000000000000000003d01000012000000000000000000000000000000000000001201000012000000000000000000000000000000000000002c0000002000000000000000000000000000000000000000460000002200000000000000000000000000000000000000bd00000010000000000000000000000000000000000000000d0100001200000000000000000000000000000000000000c300000012000c00301300000000000008000000000000009c00000012000c00e3120000000000004d000000000000009300000012000c00db120000000000000800000000000000cc00000012000c003813000000000000c8000000000000003001000012000c009a140000000000003d01000000000000f800000012000c00001400000000000008000000000000006300000012000c004d1200000000000030000000000000000101000012000c0008140000000000008a000000000000005500000012000c00451200000000000008000000000000002701000012000c00921400000000000008000000000000007f00000012000c007d120000000000005e00000000000000005f5f676d6f6e5f73746172745f5f005f49544d5f64657265676973746572544d436c6f6e655461626c65005f49544d5f7265676973746572544d436c6f6e655461626c65005f5f6378615f66696e616c697a650050675f6d616769635f66756e6300746578745f7074725f746f5f636861725f707472006d616c6c6f63006368725f7074725f746f5f746578745f7074720070675f66696e666f5f7379735f657865630070675f6465746f6173745f646174756d0073797374656d0070667265650070675f66696e666f5f7379735f6576616c00706f70656e006667657473007265616c6c6f63007374726e6370790070636c6f73650070675f66696e666f5f7379735f62696e6576616c00666f726b00737973636f6e66006d6d617000776169747069640070675f66696e666f5f7379735f66696c657265616400666f70656e00667365656b006674656c6c0066636c6f7365006672656164006c6962632e736f2e3600474c4942435f322e322e350000000200020000000200020002000200020002000200000000000200020002000200020002000200000002000000020001000100010001000100010001000100010001000100010001005c0100001000000000000000751a6909000002006601000000000000103e00000000000008000000000000004012000000000000183e00000000000008000000000000000012000000000000c0400000000000000800000000000000c040000000000000e03f00000000000006000000030000000000000000000000e83f000000000000060000000b0000000000000000000000f03f00000000000006000000140000000000000000000000f83f000000000000060000001500000000000000000000001840000000000000070000000100000000000000000000002040000000000000070000000200000000000000000000002840000000000000070000000400000000000000000000003040000000000000070000000500000000000000000000003840000000000000070000000600000000000000000000004040000000000000070000000700000000000000000000004840000000000000070000000800000000000000000000005040000000000000070000000900000000000000000000005840000000000000070000001e00000000000000000000006040000000000000070000000a00000000000000000000006840000000000000070000000c00000000000000000000007040000000000000070000000d00000000000000000000007840000000000000070000000e00000000000000000000008040000000000000070000000f0000000000000000000000884000000000000007000000100000000000000000000000904000000000000007000000110000000000000000000000984000000000000007000000120000000000000000000000a04000000000000007000000130000000000000000000000a84000000000000007000000160000000000000000000000b04000000000000007000000170000000000000000000000b8400000000000000700000022000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004883ec08488b05dd2f00004885c07402ffd04883c408c3000000000000000000ff35e22f0000ff25e42f00000f1f4000ff25e22f00006800000000e9e0ffffffff25da2f00006801000000e9d0ffffffff25d22f00006802000000e9c0ffffffff25ca2f00006803000000e9b0ffffffff25c22f00006804000000e9a0ffffffff25ba2f00006805000000e990ffffffff25b22f00006806000000e980ffffffff25aa2f00006807000000e970ffffffff25a22f00006808000000e960ffffffff259a2f00006809000000e950ffffffff25922f0000680a000000e940ffffffff258a2f0000680b000000e930ffffffff25822f0000680c000000e920ffffffff257a2f0000680d000000e910ffffffff25722f0000680e000000e900ffffffff256a2f0000680f000000e9f0feffffff25622f00006810000000e9e0feffffff255a2f00006811000000e9d0feffffff25522f00006812000000e9c0feffffff254a2f00006813000000e9b0feffffff25422f00006814000000e9a0feffffff25722e000066900000000000000000488d3d312f0000488d052a2f00004839f87415488b05362e00004885c07409ffe00f1f8000000000c30f1f8000000000488d3d012f0000488d35fa2e00004829fe4889f048c1ee3f48c1f8034801c648d1fe7414488b05052e00004885c07408ffe0660f1f440000c30f1f8000000000803dc12e000000752f5548833de62d0000004889e5740c488b3da22e0000e85dffffffe868ffffffc605992e0000015dc30f1f8000000000c30f1f8000000000e97bffffff488d05d40d0000c3554889fd53508b1fc1eb028d7bfd4863ffe87dfeffff8d53fc488d75044863d24889c74889d1f3a4c60410005a5b5dc341544983ccff554c89e14889fd5331db89d8f2ae48f7d1488d7903e843feffff4889ef4c89e14889ee4989c089d8f2ae4889ef48f7d18d048d0c0000004c89e141890089d8f2ae498d40044889c74c89c048f7d148ffc9f3a45b5d415cc3488d053a0d0000c3415541544989fc555351488b7f20e8dafdffff4889c74889c5e8affdffff4989c54889c7e874fdffff4c89ef89c3e81afdffff493b6c242074084889efe82bfeffff5a4863c35b5d415c415dc3488d05e10c0000c34157415641554154555331db52488b7f20e882fdffff4889c7e85afdffffbf000400004989c4e87dfdffffbf010000004989c5e870fdffff488d35890c00004c89e7c600004889c5e89bfdffff4989c64c89f2be080000004c89efe808fdffff4885c0743d31c04c89ef4883c9fff2ae4889ef4889c848f7d04c8d60ff468d3c234963f7e83ffdffff4863fb4963d44c89ee4801c74889c54963dfe868fcffffebae4c89f7e8aefcffff807d00007405c6441dff00584889ef5b5d415c415d415e415fe970fdffff488d050d0c0000c341545351488b7f20e8bbfcffff448b204889c3e840fdffff85c07907b801000000eb62755041c1ec02bf1e000000e805fdffff4183ec044531c94531c04d63e431ffb921000000ba070000004a8d7420ff48f7d84821c6e80cfcffff4883f8ff74ba488d73044c89e24889c7e8c7fbffffffd0eb0e89c7ba0100000031f6e885fcffff31c05a5b415cc3488d05770b0000c341574989ff41564155415455534883ec28488b7f20e81cfcffff0f2805850b0000c644241f004889c70f1144240fe8e3fbffff488d352e0b00004889c74989c4e851fcffff4885c074474889c5ba0200000031f64889c7e8fafbffff4889efe8c2fbffff31d231f64889ef4889c34189c6e8e0fbffff8d7b014863ffe8c5fbffff4989c54885c075144889efe835fbffff41c6471c0131c0e9910000004889e94863f3ba010000004889c7e806fbffff4889efe80efbffff8d7c1b014863ffe882fbffff4889c531c04139c67e25418a54050089d183e20fc0e9048a54140f83e10f8a4c0c0f88544501884c450048ffc0ebd689d8ba000000004889ef4801c085db480f48c2c644050000e8c6fbffff4889ef4889c3e87bfaffff4c89efe873faffff4c89e7e86bfaffff4889d84883c4285b5d415c415d415e415fc3004883ec084883c408c3000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000072007262000000000000000000000000010000000100000001000000010000001c000000b004000064000000200000004000000001000000010000000000000030313233343536373839414243444546011b033b740000000d000000d0efffff9000000030f1ffffb8000000f5f1ffffd0000000fdf1ffffe40000002df2ffff0c0100008bf2ffff3801000093f2ffff4c010000e0f2ffff84010000e8f2ffff98010000b0f3ffffe0010000b8f3fffff401000042f4ffff1c0200004af4ffff30020000000000001400000000000000017a5200017810011b0c070890010000240000001c00000038efffff60010000000e10460e184a0f0b770880003f1a3b2a33242200000000140000004400000070f0ffff080000000000000000000000100000005c0000001df1ffff0800000000000000240000007000000011f1ffff3000000000410e108602440e188303410e20670e18410e10410e0800280000009800000019f1ffff5e00000000420e108c02450e188603470e208304024c0e18410e10420e08000010000000c40000004bf1ffff080000000000000034000000d80000003ff1ffff4d00000000420e108d02420e188c03440e208604410e288305410e30790e28440e20410e18420e10420e0800100000001001000054f1ffff0800000000000000440000002401000048f1ffffc800000000420e108f02420e188e03420e208d04420e288c05410e308606410e388307430e4002a90e38440e30410e28420e20420e18420e10420e08100000006c010000c8f1ffff08000000000000002400000080010000bcf1ffff8a00000000420e108c02410e188303410e2002820e18410e10420e0810000000a80100001ef2ffff080000000000000048000000bc01000012f2ffff3d01000000420e108f02450e188e03420e208d04420e288c05410e308606410e388307440e600321010e38410e30410e28420e20420e18420e10420e08000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004012000000000000001200000000000001000000000000005c010000000000000c0000000000000000100000000000000d00000000000000d8150000000000001900000000000000103e0000000000001b0000000000000008000000000000001a00000000000000183e0000000000001c000000000000000800000000000000f5feff6f0000000060020000000000000500000000000000f8050000000000000600000000000000b0020000000000000a0000000000000072010000000000000b000000000000001800000000000000030000000000000000400000000000000200000000000000f80100000000000014000000000000000700000000000000170000000000000078080000000000000700000000000000d0070000000000000800000000000000a80000000000000009000000000000001800000000000000feffff6f00000000b007000000000000ffffff6f000000000100000000000000f0ffff6f000000006a07000000000000f9ffff6f00000000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000203e000000000000000000000000000000000000000000003610000000000000461000000000000056100000000000006610000000000000761000000000000086100000000000009610000000000000a610000000000000b610000000000000c610000000000000d610000000000000e610000000000000f61000000000000006110000000000001611000000000000261100000000000036110000000000004611000000000000561100000000000066110000000000007611000000000000c0400000000000004743433a202844656269616e20392e332e302d31302920392e332e3000002e7368737472746162002e6e6f74652e676e752e6275696c642d6964002e676e752e68617368002e64796e73796d002e64796e737472002e676e752e76657273696f6e002e676e752e76657273696f6e5f72002e72656c612e64796e002e72656c612e706c74002e696e6974002e706c742e676f74002e74657874002e66696e69002e726f64617461002e65685f6672616d655f686472002e65685f6672616d65002e696e69745f6172726179002e66696e695f6172726179002e64796e616d6963002e676f742e706c74002e64617461002e627373002e636f6d6d656e74000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b0000000700000002000000000000003802000000000000380200000000000024000000000000000000000000000000040000000000000000000000000000001e000000f6ffff6f0200000000000000600200000000000060020000000000005000000000000000030000000000000008000000000000000000000000000000280000000b0000000200000000000000b002000000000000b002000000000000480300000000000004000000010000000800000000000000180000000000000030000000030000000200000000000000f805000000000000f805000000000000720100000000000000000000000000000100000000000000000000000000000038000000ffffff6f02000000000000006a070000000000006a07000000000000460000000000000003000000000000000200000000000000020000000000000045000000feffff6f0200000000000000b007000000000000b007000000000000200000000000000004000000010000000800000000000000000000000000000054000000040000000200000000000000d007000000000000d007000000000000a8000000000000000300000000000000080000000000000018000000000000005e00000004000000420000000000000078080000000000007808000000000000f80100000000000003000000150000000800000000000000180000000000000068000000010000000600000000000000001000000000000000100000000000001700000000000000000000000000000004000000000000000000000000000000630000000100000006000000000000002010000000000000201000000000000060010000000000000000000000000000100000000000000010000000000000006e000000010000000600000000000000801100000000000080110000000000000800000000000000000000000000000008000000000000000800000000000000770000000100000006000000000000009011000000000000901100000000000047040000000000000000000000000000100000000000000000000000000000007d000000010000000600000000000000d815000000000000d8150000000000000900000000000000000000000000000004000000000000000000000000000000830000000100000002000000000000000020000000000000002000000000000050000000000000000000000000000000100000000000000000000000000000008b00000001000000020000000000000050200000000000005020000000000000740000000000000000000000000000000400000000000000000000000000000099000000010000000200000000000000c820000000000000c8200000000000000802000000000000000000000000000008000000000000000000000000000000a30000000e0000000300000000000000103e000000000000102e0000000000000800000000000000000000000000000008000000000000000800000000000000af0000000f0000000300000000000000183e000000000000182e0000000000000800000000000000000000000000000008000000000000000800000000000000bb000000060000000300000000000000203e000000000000202e000000000000c00100000000000004000000000000000800000000000000100000000000000072000000010000000300000000000000e03f000000000000e02f0000000000002000000000000000000000000000000008000000000000000800000000000000c400000001000000030000000000000000400000000000000030000000000000c000000000000000000000000000000008000000000000000800000000000000cd000000010000000300000000000000c040000000000000c0300000000000000800000000000000000000000000000008000000000000000000000000000000d3000000080000000300000000000000c840000000000000c8300000000000000800000000000000000000000000000001000000000000000000000000000000d80000000100000030000000000000000000000000000000c8300000000000001d00000000000000000000000000000001000000000000000100000000000000010000000300000000000000000000000000000000000000e530000000000000e1000000000000000000000000000000010000000000000000000000000000009610000000000000a610000000000000b610000000000000c610000000000000d610000000000000e610000000000000f61000000000000006110000000000001611000000000000261100000000000036110000000000004611000000000000561100000000000066110000000000007611000000000000c0400000000000004743433a202844656269616e20392e332e302d31302920392e332e3000002e7368737472746162002e6e6f74652e676e752e6275696c642d6964002e676e752e68617368002e64796e73796d002e64796e737472002e676e752e76657273696f6e002e676e752e76657273696f6e5f72002e72656c612e64796e002e72656c612e706c74002e696e6974002e706c742e676f74002e74657874002e66696e69002e726f64617461002e65685f6672616d655f686472002e65685f6672616d65002e696e69745f6172726179002e66696e695f6172726179002e64796e616d6963002e676f742e706c74002e64617461002e627373002e636f6d6d656e74000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b0000000700000002000000000000003802000000000000380200000000000024000000000000000000000000000000040000000000000000000000000000001e000000f6ffff6f0200000000000000600200000000000060020000000000005000000000000000030000000000000008000000000000000000000000000000280000000b0000000200000000000000b002000000000000b002000000000000480300000000000004000000010000000800000000000000180000000000000030000000030000000200000000000000f805000000000000f805000000000000720100000000000000000000000000000100000000000000000000000000000038000000ffffff6f02000000000000006a070000000000006a07000000000000460000000000000003000000000000000200000000000000020000000000000045000000feffff6f0200000000000000b007000000000000b007000000000000200000000000000004000000010000000800000000000000000000000000000054000000040000000200000000000000d007000000000000d007000000000000a8000000000000000300000000000000080000000000000018000000000000005e00000004000000420000000000000078080000000000007808000000000000f80100000000000003000000150000000800000000000000180000000000000068000000010000000600000000000000001000000000000000100000000000001700000000000000000000000000000004000000000000000000000000000000630000000100000006000000000000002010000000000000201000000000000060010000000000000000000000000000100000000000000010000000000000006e000000010000000600000000000000801100000000000080110000000000000800000000000000000000000000000008000000000000000800000000000000770000000100000006000000000000009011000000000000901100000000000047040000000000000000000000000000100000000000000000000000000000007d000000010000000600000000000000d815000000000000d8150000000000000900000000000000000000000000000004000000000000000000000000000000830000000100000002000000000000000020000000000000002000000000000050000000000000000000000000000000100000000000000000000000000000008b00000001000000020000000000000050200000000000005020000000000000740000000000000000000000000000000400000000000000000000000000000099000000010000000200000000000000c820000000000000c8200000000000000802000000000000000000000000000008000000000000000000000000000000a30000000e0000000300000000000000103e000000000000102e0000000000000800000000000000000000000000000008000000000000000800000000000000af0000000f0000000300000000000000183e000000000000182e0000000000000800000000000000000000000000000008000000000000000800000000000000bb000000060000000300000000000000203e000000000000202e000000000000c00100000000000004000000000000000800000000000000100000000000000072000000010000000300000000000000e03f000000000000e02f0000000000002000000000000000000000000000000008000000000000000800000000000000c400000001000000030000000000000000400000000000000030000000000000c000000000000000000000000000000008000000000000000800000000000000cd000000010000000300000000000000c040000000000000c0300000000000000800000000000000000000000000000008000000000000000000000000000000d3000000080000000300000000000000c840000000000000c8300000000000000800000000000000000000000000000001000000000000000000000000000000d80000000100000030000000000000000000000000000000c8300000000000001d0000000000000000000000000000000100000000000000');
SELECT pg_catalog.lo_close(0);

COMMIT;

--
-- Name: a_o_c_s a_o_c_s_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.a_o_c_s
    ADD CONSTRAINT a_o_c_s_pkey PRIMARY KEY (id);


--
-- Name: abouts abouts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);


--
-- Name: aoc_names aoc_names_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aoc_names
    ADD CONSTRAINT aoc_names_pkey PRIMARY KEY (id);


--
-- Name: banners banners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);


--
-- Name: collaborations collaborations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.collaborations
    ADD CONSTRAINT collaborations_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: galleries galleries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.galleries
    ADD CONSTRAINT galleries_pkey PRIMARY KEY (id);


--
-- Name: gallery_albums gallery_albums_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gallery_albums
    ADD CONSTRAINT gallery_albums_pkey PRIMARY KEY (id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: oauth_access_tokens oauth_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: oauth_auth_codes oauth_auth_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_auth_codes
    ADD CONSTRAINT oauth_auth_codes_pkey PRIMARY KEY (id);


--
-- Name: oauth_clients oauth_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_clients
    ADD CONSTRAINT oauth_clients_pkey PRIMARY KEY (id);


--
-- Name: oauth_personal_access_clients oauth_personal_access_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_personal_access_clients
    ADD CONSTRAINT oauth_personal_access_clients_pkey PRIMARY KEY (id);


--
-- Name: oauth_refresh_tokens oauth_refresh_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_refresh_tokens
    ADD CONSTRAINT oauth_refresh_tokens_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: videos videos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);


--
-- Name: oauth_access_tokens_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX oauth_access_tokens_user_id_index ON public.oauth_access_tokens USING btree (user_id);


--
-- Name: oauth_clients_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX oauth_clients_user_id_index ON public.oauth_clients USING btree (user_id);


--
-- Name: oauth_personal_access_clients_client_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX oauth_personal_access_clients_client_id_index ON public.oauth_personal_access_clients USING btree (client_id);


--
-- Name: oauth_refresh_tokens_access_token_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX oauth_refresh_tokens_access_token_id_index ON public.oauth_refresh_tokens USING btree (access_token_id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: gallery_albums gallery_albums_gallery_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gallery_albums
    ADD CONSTRAINT gallery_albums_gallery_id_foreign FOREIGN KEY (gallery_id) REFERENCES public.galleries(id) ON DELETE CASCADE;


--
-- Name: majors majors_a_o_c_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_a_o_c_id_foreign FOREIGN KEY (a_o_c_id) REFERENCES public.a_o_c_s(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

