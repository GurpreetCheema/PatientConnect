--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: app_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE app_user (
    user_id integer NOT NULL,
    user_name character varying(32) NOT NULL,
    password character varying(32) NOT NULL,
    salt character varying(255) NOT NULL
);


--
-- Name: app_user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE app_user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: app_user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE app_user_user_id_seq OWNED BY app_user.user_id;


--
-- Name: doctor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doctor (
    doctor_id integer NOT NULL,
    first_name character varying(32),
    last_name character varying(32),
    practice character varying(75)
);


--
-- Name: doctor_doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doctor_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: doctor_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doctor_doctor_id_seq OWNED BY doctor.doctor_id;


--
-- Name: office; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE office (
    office_id integer NOT NULL,
    name character varying(50),
    address character varying(100),
    city character varying(32),
    state character varying(2),
    zip character varying(10),
    phone character varying(15)
);


--
-- Name: office_office_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE office_office_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: office_office_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE office_office_id_seq OWNED BY office.office_id;


--
-- Name: patient; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE patient (
    patient_id integer NOT NULL,
    first_name character varying(32),
    last_name character varying(32),
    address character varying(100),
    city character varying(32),
    state character varying(2),
    zip character varying(10),
    email character varying(50),
    phone character varying(15),
    insurance character varying(100)
);


--
-- Name: patient_patient_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE patient_patient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: patient_patient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE patient_patient_id_seq OWNED BY patient.patient_id;


--
-- Name: patient_prescriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE patient_prescriptions (
    prescription_id integer NOT NULL,
    patient_id integer
);


--
-- Name: prescriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE prescriptions (
    prescription_id integer NOT NULL,
    name character varying(100)
);


--
-- Name: prescriptions_prescription_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE prescriptions_prescription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: prescriptions_prescription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE prescriptions_prescription_id_seq OWNED BY prescriptions.prescription_id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reviews (
    review_id integer NOT NULL,
    doctor_id integer,
    user_id integer,
    review character varying(500),
    rating integer
);


--
-- Name: reviews_review_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE reviews_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: reviews_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE reviews_review_id_seq OWNED BY reviews.review_id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE role (
    role_id integer NOT NULL,
    create_page boolean,
    view_page boolean,
    update_page boolean,
    delete_page boolean
);


--
-- Name: user_doctor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE user_doctor (
    user_id integer NOT NULL,
    doctor_id integer
);


--
-- Name: user_patient; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE user_patient (
    user_id integer NOT NULL,
    patient_id integer
);


--
-- Name: user_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE user_role (
    user_id integer NOT NULL,
    role_id integer
);


--
-- Name: app_user user_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY app_user ALTER COLUMN user_id SET DEFAULT nextval('app_user_user_id_seq'::regclass);


--
-- Name: doctor doctor_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doctor ALTER COLUMN doctor_id SET DEFAULT nextval('doctor_doctor_id_seq'::regclass);


--
-- Name: office office_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY office ALTER COLUMN office_id SET DEFAULT nextval('office_office_id_seq'::regclass);


--
-- Name: patient patient_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY patient ALTER COLUMN patient_id SET DEFAULT nextval('patient_patient_id_seq'::regclass);


--
-- Name: prescriptions prescription_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY prescriptions ALTER COLUMN prescription_id SET DEFAULT nextval('prescriptions_prescription_id_seq'::regclass);


--
-- Name: reviews review_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY reviews ALTER COLUMN review_id SET DEFAULT nextval('reviews_review_id_seq'::regclass);


--
-- Data for Name: app_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY app_user (user_id, user_name, password, salt) FROM stdin;
1	ScottStappMarlins1	nET90D5eo/6JeEM2JFXTbA==	TP6cOt57Q85KuL5tKoPrgb0Us4hVjZA5g73yCcrfx1D9PmtPehtracdsh5lopDgwigQzyVopSzlQSfD02EXAq9Qhjq594zdeCujOHq+R2084qRYdIKvQAwT6UKW8fZRMWXGQCJYVF7phwAcryvRl+m1gfqJtPE8T/6QxoQNLEKA=
2	MantisToboggan	bPbhHxAX9jV22p20y4EpKQ==	37Ihpo3vwev7e5yFuOkTpGnaKd77U1O6ayentnnfuKoEWLczbx8LCy+OhH3gFCtqtAgneNo4M1lRjZRqLa1vx48OPVRYMll2rd0QRmnGGRUCkVgz7+LB4Ix6vull+1j75kAVGH6hf+eiCgiSzMBRsCeCAiiA5vuFmSnEDeZusHo=
3	JackKev	XoJ9pVC8YKQQ/cjT02/KzA==	JoTWHC8DPYG8Cc/tiawAkdzY6D9oy2ntKZ44/knZ65KhXKBMzp4hZ63bhAAYBugRDng8Ch+Je40+NVPobXH84pYaWJVailok5wm0wTGg2Rri9Z0x1WsO+j5zcemyguNmEXtY/0KYT6oFhW7t9rELEv8HiejHdFb4Up4oPKSv5tU=
4	BHooks1	uJptoESd52SjgpXDGAjSqQ==	EXst4lDPl4JUDzNEua4KEXT1QF3nn1aTwKwDnaNFT8tPxilTOq8Kni8fd6KQ+Q9svIgs+4t521Vv/La08jG6Y4mzb7OKKJ85J7NtIvLEGHLkhaJ7eVaa43Hv2/PHMEYVMNn8AHLmAu23eqv5MF7DAALmHpsvhbllv488m4xJ07Y=
12	CoolGuyHunk69	aZgrHx76xWInck6aVNArNg==	RJObsqQS6PRoUvwVga+AIBm/+ZIPX9Uhf3XuyKV/AH3NGjijzqB6zJUZO7Lcj4urzofyZWpgCFEDNval6o+Lw5gti5FIIPKDKKNMCaANV4n2/BPMmXUbw+lp1FqQ3rPE32FyeYn2lfdfcXYp6DjOI49dz8Rylt9S8WFtZenlvrQ=
\.


--
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY doctor (doctor_id, first_name, last_name, practice) FROM stdin;
1	Mantis	Toboggan	Family Physician
2	Jack	Kevorkian	Hospice and Palliative Medicine Specialist
3	Barbara	Hooks	Family Physician
\.


--
-- Data for Name: office; Type: TABLE DATA; Schema: public; Owner: -
--

COPY office (office_id, name, address, city, state, zip, phone) FROM stdin;
\.


--
-- Data for Name: patient; Type: TABLE DATA; Schema: public; Owner: -
--

COPY patient (patient_id, first_name, last_name, address, city, state, zip, email, phone, insurance) FROM stdin;
7	Cool	Guy	666 Hunk Ave.	Hunksville	AL	12345	hunk@coolguy.com	6666666666	Hunks United
\.


--
-- Data for Name: patient_prescriptions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY patient_prescriptions (prescription_id, patient_id) FROM stdin;
\.


--
-- Data for Name: prescriptions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY prescriptions (prescription_id, name) FROM stdin;
1	Cannabis
2	Flinstone Vitamins
3	Naproxin
4	Methocarbamol
5	Vicodin
6	Ammodium
7	Prednisone
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: -
--

COPY reviews (review_id, doctor_id, user_id, review, rating) FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: -
--

COPY role (role_id, create_page, view_page, update_page, delete_page) FROM stdin;
1	t	t	f	f
2	t	t	t	f
3	t	t	t	t
\.


--
-- Data for Name: user_doctor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY user_doctor (user_id, doctor_id) FROM stdin;
2	1
3	2
4	3
\.


--
-- Data for Name: user_patient; Type: TABLE DATA; Schema: public; Owner: -
--

COPY user_patient (user_id, patient_id) FROM stdin;
12	7
\.


--
-- Data for Name: user_role; Type: TABLE DATA; Schema: public; Owner: -
--

COPY user_role (user_id, role_id) FROM stdin;
1	3
2	2
3	2
4	2
12	1
\.


--
-- Name: app_user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('app_user_user_id_seq', 12, true);


--
-- Name: doctor_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('doctor_doctor_id_seq', 6, true);


--
-- Name: office_office_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('office_office_id_seq', 1, false);


--
-- Name: patient_patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('patient_patient_id_seq', 7, true);


--
-- Name: prescriptions_prescription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('prescriptions_prescription_id_seq', 7, true);


--
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('reviews_review_id_seq', 32, true);


--
-- Name: app_user app_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY app_user
    ADD CONSTRAINT app_user_pkey PRIMARY KEY (user_id);


--
-- Name: app_user app_user_user_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY app_user
    ADD CONSTRAINT app_user_user_name_key UNIQUE (user_name);


--
-- Name: doctor doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (doctor_id);


--
-- Name: office office_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY office
    ADD CONSTRAINT office_pkey PRIMARY KEY (office_id);


--
-- Name: patient patient_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (patient_id);


--
-- Name: patient_prescriptions patient_prescriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY patient_prescriptions
    ADD CONSTRAINT patient_prescriptions_pkey PRIMARY KEY (prescription_id);


--
-- Name: prescriptions prescriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY prescriptions
    ADD CONSTRAINT prescriptions_pkey PRIMARY KEY (prescription_id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (review_id);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);


--
-- Name: user_doctor user_doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_doctor
    ADD CONSTRAINT user_doctor_pkey PRIMARY KEY (user_id);


--
-- Name: user_patient user_patient_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_patient
    ADD CONSTRAINT user_patient_pkey PRIMARY KEY (user_id);


--
-- Name: user_role user_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (user_id);


--
-- Name: patient_prescriptions patient_prescriptions_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY patient_prescriptions
    ADD CONSTRAINT patient_prescriptions_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES patient(patient_id) ON DELETE CASCADE;


--
-- Name: patient_prescriptions patient_prescriptions_prescription_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY patient_prescriptions
    ADD CONSTRAINT patient_prescriptions_prescription_id_fkey FOREIGN KEY (prescription_id) REFERENCES prescriptions(prescription_id) ON DELETE CASCADE;


--
-- Name: reviews reviews_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id) ON DELETE CASCADE;


--
-- Name: user_doctor user_doctor_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_doctor
    ADD CONSTRAINT user_doctor_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id) ON DELETE CASCADE;


--
-- Name: user_doctor user_doctor_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_doctor
    ADD CONSTRAINT user_doctor_user_id_fkey FOREIGN KEY (user_id) REFERENCES app_user(user_id) ON DELETE CASCADE;


--
-- Name: user_patient user_patient_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_patient
    ADD CONSTRAINT user_patient_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES patient(patient_id) ON DELETE CASCADE;


--
-- Name: user_patient user_patient_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_patient
    ADD CONSTRAINT user_patient_user_id_fkey FOREIGN KEY (user_id) REFERENCES app_user(user_id) ON DELETE CASCADE;


--
-- Name: user_role user_role_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT user_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES role(role_id) ON DELETE CASCADE;


--
-- Name: user_role user_role_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT user_role_user_id_fkey FOREIGN KEY (user_id) REFERENCES app_user(user_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

