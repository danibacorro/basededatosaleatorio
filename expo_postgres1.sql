--
-- PostgreSQL database dump
--

\restrict ii2ynoU9hW7E46y1ogG0IdsvZjjtNszbwNdNIKJrLDsho271u0HcDjfp0e1AP0a

-- Dumped from database version 17.8 (Debian 17.8-0+deb13u1)
-- Dumped by pg_dump version 17.8 (Debian 17.8-0+deb13u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: scott; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA scott;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: bonus; Type: TABLE; Schema: scott; Owner: -
--

CREATE TABLE scott.bonus (
    ename character varying(10),
    job character varying(9),
    sal numeric,
    comm numeric
);


--
-- Name: dept; Type: TABLE; Schema: scott; Owner: -
--

CREATE TABLE scott.dept (
    deptno numeric(2,0) NOT NULL,
    dname character varying(14),
    loc character varying(13)
);


--
-- Name: emp; Type: TABLE; Schema: scott; Owner: -
--

CREATE TABLE scott.emp (
    empno numeric(4,0) NOT NULL,
    ename character varying(10),
    job character varying(9),
    mgr numeric(4,0),
    hiredate date,
    sal numeric(7,2),
    comm numeric(7,2),
    deptno numeric(2,0) NOT NULL
);


--
-- Data for Name: bonus; Type: TABLE DATA; Schema: scott; Owner: -
--

COPY scott.bonus (ename, job, sal, comm) FROM stdin;
\.


--
-- Data for Name: dept; Type: TABLE DATA; Schema: scott; Owner: -
--

COPY scott.dept (deptno, dname, loc) FROM stdin;
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON
\.


--
-- Data for Name: emp; Type: TABLE DATA; Schema: scott; Owner: -
--

COPY scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) FROM stdin;
7369	SMITH	CLERK	7902	1980-12-17	800.00	\N	20
7499	ALLEN	SALESMAN	7698	1981-02-20	1600.00	300.00	30
7521	WARD	SALESMAN	7698	1981-02-22	1250.00	500.00	30
7566	JONES	MANAGER	7839	1981-04-02	2975.00	\N	20
7654	MARTIN	SALESMAN	7698	1981-09-28	1250.00	1400.00	30
7698	BLAKE	MANAGER	7839	1981-05-01	2850.00	\N	30
7782	CLARK	MANAGER	7839	1981-06-09	2450.00	\N	10
7788	SCOTT	ANALYST	7566	1982-12-09	3000.00	\N	20
7839	KING	PRESIDENT	\N	1981-11-17	5000.00	\N	10
7844	TURNER	SALESMAN	7698	1981-09-08	1500.00	0.00	30
7876	ADAMS	CLERK	7788	1983-01-12	1100.00	\N	20
7900	JAMES	CLERK	7698	1981-12-03	950.00	\N	30
7902	FORD	ANALYST	7566	1981-12-03	3000.00	\N	20
7934	MILLER	CLERK	7782	1982-01-23	1300.00	\N	10
\.


--
-- PostgreSQL database dump complete
--

\unrestrict ii2ynoU9hW7E46y1ogG0IdsvZjjtNszbwNdNIKJrLDsho271u0HcDjfp0e1AP0a

