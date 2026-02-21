--
-- PostgreSQL database dump
--

\restrict okESn1sbaWxpzVLgJ8IdNQqMTllfXp7DywgPJqhBqQGrHm3FToV4uPYKHqngjDc

-- Dumped from database version 17.8 (Debian 17.8-0+deb13u1)
-- Dumped by pg_dump version 17.8 (Debian 17.8-0+deb13u1)

-- Started on 2026-02-21 14:30:44 CET

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

DROP TABLE IF EXISTS scott.emp;
DROP TABLE IF EXISTS scott.dept;
DROP TABLE IF EXISTS scott.bonus;
DROP SCHEMA IF EXISTS scott;
--
-- TOC entry 6 (class 2615 OID 16688)
-- Name: scott; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA scott;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16695)
-- Name: bonus; Type: TABLE; Schema: scott; Owner: -
--

CREATE TABLE scott.bonus (
    ename character varying(10),
    job character varying(9),
    sal numeric,
    comm numeric
);


--
-- TOC entry 218 (class 1259 OID 16689)
-- Name: dept; Type: TABLE; Schema: scott; Owner: -
--

CREATE TABLE scott.dept (
    deptno numeric(2,0) NOT NULL,
    dname character varying(14),
    loc character varying(13)
);


--
-- TOC entry 219 (class 1259 OID 16692)
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


-- Completed on 2026-02-21 14:30:44 CET

--
-- PostgreSQL database dump complete
--

\unrestrict okESn1sbaWxpzVLgJ8IdNQqMTllfXp7DywgPJqhBqQGrHm3FToV4uPYKHqngjDc

