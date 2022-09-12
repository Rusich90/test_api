--
-- PostgreSQL database dump
--

-- Dumped from database version 13.8
-- Dumped by pg_dump version 14.2

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
-- Data for Name: app_employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_employee (id, name, phone_number) FROM stdin;
620dbf1b-5276-4792-be5e-5d04945b0f2f	Denis	8-800-999-77-66
8643ed99-cfed-4897-a7e2-b3997f1bb7f5	Ruslan	8-900-888-77-55
46276396-ed11-4e26-b4c1-f978d2eadda2	Ivan	8-700-888-99-00
\.


--
-- Data for Name: app_outlet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_outlet (id, name, employee_id) FROM stdin;
51f787de-0c0f-437c-9dda-cd102fcaf3f5	Ozon	46276396-ed11-4e26-b4c1-f978d2eadda2
3f86fcc8-a285-42f2-834d-9da2cbab38d2	Yandex	8643ed99-cfed-4897-a7e2-b3997f1bb7f5
1c73abf6-8ddc-4dbf-b0a1-a442ee4c76c9	Wildberries	8643ed99-cfed-4897-a7e2-b3997f1bb7f5
75592ea4-8401-42b0-997e-c7284da07b55	AliExpress	620dbf1b-5276-4792-be5e-5d04945b0f2f
\.


--
-- Data for Name: app_visit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_visit (id, datetime, latitude, longitude, outlet_id) FROM stdin;
5b2d652e-7378-4021-8b78-9c5d5dbecd43	2022-09-12 10:13:15.712971+00	1.122314	2.345678	51f787de-0c0f-437c-9dda-cd102fcaf3f5
270904a6-653e-42ac-9a80-330d5ba264c2	2022-09-12 10:14:14.805031+00	4.232425	5.122334	3f86fcc8-a285-42f2-834d-9da2cbab38d2
4f597c9e-af8e-4d2c-ae10-4bb1597203f6	2022-09-12 11:16:27.022041+00	1.223233	2.232323	3f86fcc8-a285-42f2-834d-9da2cbab38d2
ccf8ebd4-750e-404a-86ac-522071449f1a	2022-09-12 11:19:34.014367+00	1.223233	2.232323	3f86fcc8-a285-42f2-834d-9da2cbab38d2
0be5471a-1115-4b9d-841d-e459fe6770a5	2022-09-12 11:22:31.510052+00	1.223233	2.232323	3f86fcc8-a285-42f2-834d-9da2cbab38d2
e381fb13-1fa8-4287-ab12-3db41ec2fe68	2022-09-12 11:22:51.428975+00	1.223233	2.232323	51f787de-0c0f-437c-9dda-cd102fcaf3f5
473a756b-4b26-4621-9c89-900bc8a2852e	2022-09-12 11:27:23.704576+00	1.223233	2.232323	51f787de-0c0f-437c-9dda-cd102fcaf3f5
\.

--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$TK8Wj2eZdwVhl4BuviK5QZ$kBTPuBRPuhEcL+15H5mwA4fA0jrfi0bujkTYH9qYnFE=	2022-09-12 10:00:24.936701+00	t	user			user@email.ru	t	t	2022-09-12 10:00:05.346096+00
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 21, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- PostgreSQL database dump complete
--

