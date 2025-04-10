--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17 (Debian 14.17-1.pgdg120+1)
-- Dumped by pg_dump version 14.17 (Debian 14.17-1.pgdg120+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: abouts; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.abouts (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.abouts OWNER TO admin;

--
-- Name: abouts_cmps; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.abouts_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.abouts_cmps OWNER TO admin;

--
-- Name: abouts_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.abouts_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.abouts_cmps_id_seq OWNER TO admin;

--
-- Name: abouts_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.abouts_cmps_id_seq OWNED BY public.abouts_cmps.id;


--
-- Name: abouts_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.abouts_id_seq OWNER TO admin;

--
-- Name: abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.abouts_id_seq OWNED BY public.abouts.id;


--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_permissions OWNER TO admin;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO admin;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO admin;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_lnk_id_seq OWNER TO admin;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_roles OWNER TO admin;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO admin;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_users OWNER TO admin;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO admin;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE public.admin_users_roles_lnk OWNER TO admin;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_lnk_id_seq OWNER TO admin;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- Name: articles; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    slug character varying(255),
    content jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.articles OWNER TO admin;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO admin;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: authors; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.authors OWNER TO admin;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO admin;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: authors_news_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.authors_news_lnk (
    id integer NOT NULL,
    author_id integer,
    article_id integer,
    author_ord double precision
);


ALTER TABLE public.authors_news_lnk OWNER TO admin;

--
-- Name: authors_news_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.authors_news_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_news_lnk_id_seq OWNER TO admin;

--
-- Name: authors_news_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.authors_news_lnk_id_seq OWNED BY public.authors_news_lnk.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    slug character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.categories OWNER TO admin;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO admin;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: categories_news_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.categories_news_lnk (
    id integer NOT NULL,
    category_id integer,
    article_id integer,
    category_ord double precision
);


ALTER TABLE public.categories_news_lnk OWNER TO admin;

--
-- Name: categories_news_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.categories_news_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_news_lnk_id_seq OWNER TO admin;

--
-- Name: categories_news_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.categories_news_lnk_id_seq OWNED BY public.categories_news_lnk.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    document_id character varying(255),
    comment text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.comments OWNER TO admin;

--
-- Name: comments_author_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.comments_author_lnk (
    id integer NOT NULL,
    comment_id integer,
    author_id integer,
    comment_ord double precision
);


ALTER TABLE public.comments_author_lnk OWNER TO admin;

--
-- Name: comments_author_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.comments_author_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_author_lnk_id_seq OWNER TO admin;

--
-- Name: comments_author_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.comments_author_lnk_id_seq OWNED BY public.comments_author_lnk.id;


--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO admin;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: comments_news_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.comments_news_lnk (
    id integer NOT NULL,
    comment_id integer,
    article_id integer,
    article_ord double precision,
    comment_ord double precision
);


ALTER TABLE public.comments_news_lnk OWNER TO admin;

--
-- Name: comments_news_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.comments_news_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_news_lnk_id_seq OWNER TO admin;

--
-- Name: comments_news_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.comments_news_lnk_id_seq OWNED BY public.comments_news_lnk.id;


--
-- Name: components_shared_media; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.components_shared_media (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_media OWNER TO admin;

--
-- Name: components_shared_media_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.components_shared_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_media_id_seq OWNER TO admin;

--
-- Name: components_shared_media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.components_shared_media_id_seq OWNED BY public.components_shared_media.id;


--
-- Name: components_shared_quotes; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.components_shared_quotes (
    id integer NOT NULL,
    title character varying(255),
    body text
);


ALTER TABLE public.components_shared_quotes OWNER TO admin;

--
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.components_shared_quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_quotes_id_seq OWNER TO admin;

--
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.components_shared_quotes_id_seq OWNED BY public.components_shared_quotes.id;


--
-- Name: components_shared_rich_texts; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.components_shared_rich_texts (
    id integer NOT NULL,
    body text
);


ALTER TABLE public.components_shared_rich_texts OWNER TO admin;

--
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.components_shared_rich_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_rich_texts_id_seq OWNER TO admin;

--
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.components_shared_rich_texts_id_seq OWNED BY public.components_shared_rich_texts.id;


--
-- Name: components_shared_seos; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);


ALTER TABLE public.components_shared_seos OWNER TO admin;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_seos_id_seq OWNER TO admin;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;


--
-- Name: components_shared_sliders; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.components_shared_sliders (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_sliders OWNER TO admin;

--
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.components_shared_sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_sliders_id_seq OWNER TO admin;

--
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.components_shared_sliders_id_seq OWNED BY public.components_shared_sliders.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.files OWNER TO admin;

--
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO admin;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_lnk_id_seq OWNER TO admin;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO admin;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO admin;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_mph_id_seq OWNER TO admin;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- Name: globals; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.globals (
    id integer NOT NULL,
    document_id character varying(255),
    site_name character varying(255),
    site_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.globals OWNER TO admin;

--
-- Name: globals_cmps; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.globals_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.globals_cmps OWNER TO admin;

--
-- Name: globals_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.globals_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globals_cmps_id_seq OWNER TO admin;

--
-- Name: globals_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.globals_cmps_id_seq OWNED BY public.globals_cmps.id;


--
-- Name: globals_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globals_id_seq OWNER TO admin;

--
-- Name: globals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.i18n_locale OWNER TO admin;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO admin;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO admin;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO admin;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO admin;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO admin;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_tokens OWNER TO admin;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO admin;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO admin;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO admin;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO admin;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO admin;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE public.strapi_history_versions OWNER TO admin;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_history_versions_id_seq OWNER TO admin;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO admin;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO admin;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO admin;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_internal_id_seq OWNER TO admin;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO admin;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_release_actions_id_seq OWNER TO admin;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO admin;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_release_actions_release_lnk_id_seq OWNER TO admin;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO admin;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_releases_id_seq OWNER TO admin;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO admin;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_id_seq OWNER TO admin;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO admin;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO admin;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO admin;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_tokens_id_seq OWNER TO admin;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO admin;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO admin;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows OWNER TO admin;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_id_seq OWNER TO admin;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO admin;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO admin;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows_stages OWNER TO admin;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stages_id_seq OWNER TO admin;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO admin;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO admin;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO admin;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO admin;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.tags OWNER TO admin;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO admin;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_permissions OWNER TO admin;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO admin;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO admin;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_lnk_id_seq OWNER TO admin;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_roles OWNER TO admin;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO admin;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_users OWNER TO admin;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO admin;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO admin;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_lnk_id_seq OWNER TO admin;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.upload_folders OWNER TO admin;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO admin;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO admin;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_lnk_id_seq OWNER TO admin;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- Name: abouts id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.abouts ALTER COLUMN id SET DEFAULT nextval('public.abouts_id_seq'::regclass);


--
-- Name: abouts_cmps id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.abouts_cmps ALTER COLUMN id SET DEFAULT nextval('public.abouts_cmps_id_seq'::regclass);


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: authors_news_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authors_news_lnk ALTER COLUMN id SET DEFAULT nextval('public.authors_news_lnk_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: categories_news_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories_news_lnk ALTER COLUMN id SET DEFAULT nextval('public.categories_news_lnk_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: comments_author_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments_author_lnk ALTER COLUMN id SET DEFAULT nextval('public.comments_author_lnk_id_seq'::regclass);


--
-- Name: comments_news_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments_news_lnk ALTER COLUMN id SET DEFAULT nextval('public.comments_news_lnk_id_seq'::regclass);


--
-- Name: components_shared_media id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.components_shared_media ALTER COLUMN id SET DEFAULT nextval('public.components_shared_media_id_seq'::regclass);


--
-- Name: components_shared_quotes id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.components_shared_quotes ALTER COLUMN id SET DEFAULT nextval('public.components_shared_quotes_id_seq'::regclass);


--
-- Name: components_shared_rich_texts id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.components_shared_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.components_shared_rich_texts_id_seq'::regclass);


--
-- Name: components_shared_seos id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);


--
-- Name: components_shared_sliders id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.components_shared_sliders ALTER COLUMN id SET DEFAULT nextval('public.components_shared_sliders_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- Name: globals id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);


--
-- Name: globals_cmps id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.globals_cmps ALTER COLUMN id SET DEFAULT nextval('public.globals_cmps_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- Data for Name: abouts; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.abouts (id, document_id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;



--
-- Data for Name: abouts_cmps; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.abouts_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;



--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	rta2d2y21z1zbd2pejmn3w3w	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-04-06 17:19:46.672	2025-04-06 17:19:46.672	2025-04-06 17:19:46.672	\N	\N	\N
2	ufk88eqi08zcj8zdhy6sn5p1	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "comments", "categories", "authors", "content"]}	[]	2025-04-06 17:19:46.691	2025-04-06 17:19:46.691	2025-04-06 17:19:46.692	\N	\N	\N
3	otv9hs9g1ultkzlj1nnmuf69	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "comments", "news"]}	[]	2025-04-06 17:19:46.705	2025-04-06 17:19:46.705	2025-04-06 17:19:46.706	\N	\N	\N
4	egnq0fyarxwydaacx855z7qg	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "description", "news"]}	[]	2025-04-06 17:19:46.719	2025-04-06 17:19:46.719	2025-04-06 17:19:46.719	\N	\N	\N
5	qpey7h5w09ter87auazhg3n2	plugin::content-manager.explorer.create	{}	api::comment.comment	{"fields": ["news", "author", "comment"]}	[]	2025-04-06 17:19:46.732	2025-04-06 17:19:46.732	2025-04-06 17:19:46.732	\N	\N	\N
6	mdoqcxqazr0d3nrlc80dsymq	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-04-06 17:19:46.744	2025-04-06 17:19:46.744	2025-04-06 17:19:46.744	\N	\N	\N
7	s2im9cvgxnov1iac7hxolntp	plugin::content-manager.explorer.create	{}	api::tag.tag	{"fields": ["name", "description"]}	[]	2025-04-06 17:19:46.758	2025-04-06 17:19:46.758	2025-04-06 17:19:46.758	\N	\N	\N
8	xd9r96urr44yc7aqgg9yvtyw	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-04-06 17:19:46.771	2025-04-06 17:19:46.771	2025-04-06 17:19:46.772	\N	\N	\N
9	vs0zx1bqdwhqb3j15r3u964p	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "comments", "categories", "authors", "content"]}	[]	2025-04-06 17:19:46.785	2025-04-06 17:19:46.785	2025-04-06 17:19:46.785	\N	\N	\N
10	m08ftzjy31l1t7y6olrf5igi	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "comments", "news"]}	[]	2025-04-06 17:19:46.798	2025-04-06 17:19:46.798	2025-04-06 17:19:46.799	\N	\N	\N
11	eiz5w45o4pk5ykwb1k4bm9mi	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "description", "news"]}	[]	2025-04-06 17:19:46.814	2025-04-06 17:19:46.814	2025-04-06 17:19:46.814	\N	\N	\N
12	cjce7ffisvg6jtdanang1kap	plugin::content-manager.explorer.read	{}	api::comment.comment	{"fields": ["news", "author", "comment"]}	[]	2025-04-06 17:19:46.827	2025-04-06 17:19:46.827	2025-04-06 17:19:46.827	\N	\N	\N
13	zhno49707lht8jnopgwm45s4	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-04-06 17:19:46.84	2025-04-06 17:19:46.84	2025-04-06 17:19:46.841	\N	\N	\N
14	ezdm5ylojzcpjqijfyh3w8lm	plugin::content-manager.explorer.read	{}	api::tag.tag	{"fields": ["name", "description"]}	[]	2025-04-06 17:19:46.853	2025-04-06 17:19:46.853	2025-04-06 17:19:46.853	\N	\N	\N
15	bdro4eo5b8aktfo60syumb4s	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-04-06 17:19:46.865	2025-04-06 17:19:46.865	2025-04-06 17:19:46.865	\N	\N	\N
16	hhx4c996nvf1y3ygo5qvww3k	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "comments", "categories", "authors", "content"]}	[]	2025-04-06 17:19:46.88	2025-04-06 17:19:46.88	2025-04-06 17:19:46.88	\N	\N	\N
17	c3pdqooecv7ig3mvs0augz1x	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "comments", "news"]}	[]	2025-04-06 17:19:46.895	2025-04-06 17:19:46.895	2025-04-06 17:19:46.895	\N	\N	\N
18	gu9pob96kzl4kek09x0irj48	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "description", "news"]}	[]	2025-04-06 17:19:46.907	2025-04-06 17:19:46.907	2025-04-06 17:19:46.908	\N	\N	\N
19	vxxxaq3immjag7pv4fxuo1z6	plugin::content-manager.explorer.update	{}	api::comment.comment	{"fields": ["news", "author", "comment"]}	[]	2025-04-06 17:19:46.921	2025-04-06 17:19:46.921	2025-04-06 17:19:46.921	\N	\N	\N
20	xfxqhhpuigeafsccnaqx5dl4	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-04-06 17:19:46.932	2025-04-06 17:19:46.932	2025-04-06 17:19:46.932	\N	\N	\N
21	yvye2ol61albwnxu0fmee8d6	plugin::content-manager.explorer.update	{}	api::tag.tag	{"fields": ["name", "description"]}	[]	2025-04-06 17:19:46.945	2025-04-06 17:19:46.945	2025-04-06 17:19:46.945	\N	\N	\N
22	mgq9aiv555oe7qh7vgv07phb	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-04-06 17:19:46.957	2025-04-06 17:19:46.957	2025-04-06 17:19:46.957	\N	\N	\N
23	dsny7ncgxkrqnq54h8awes9r	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-04-06 17:19:46.972	2025-04-06 17:19:46.972	2025-04-06 17:19:46.972	\N	\N	\N
24	mvjgz0l1va9580tp4825ys7k	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-04-06 17:19:47.004	2025-04-06 17:19:47.004	2025-04-06 17:19:47.005	\N	\N	\N
25	p8we49aozji3cd2t8tlgxz71	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-04-06 17:19:47.021	2025-04-06 17:19:47.021	2025-04-06 17:19:47.021	\N	\N	\N
26	eywb61hft8kfdci2vabm6n6h	plugin::content-manager.explorer.delete	{}	api::comment.comment	{}	[]	2025-04-06 17:19:47.035	2025-04-06 17:19:47.035	2025-04-06 17:19:47.035	\N	\N	\N
27	mrs5le729bwursn6hvtppb39	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-04-06 17:19:47.052	2025-04-06 17:19:47.052	2025-04-06 17:19:47.053	\N	\N	\N
28	u8v2g3wxxd0trmupnh6b7t8h	plugin::content-manager.explorer.delete	{}	api::tag.tag	{}	[]	2025-04-06 17:19:47.066	2025-04-06 17:19:47.066	2025-04-06 17:19:47.067	\N	\N	\N
29	aifnp75rjmtn81nuzbijhky6	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-04-06 17:19:47.081	2025-04-06 17:19:47.081	2025-04-06 17:19:47.082	\N	\N	\N
30	mxre41snjxe7ief6j3n6mhqu	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-04-06 17:19:47.096	2025-04-06 17:19:47.096	2025-04-06 17:19:47.096	\N	\N	\N
31	je4jymmcxglo7vc22j7bfvrv	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-04-06 17:19:47.111	2025-04-06 17:19:47.111	2025-04-06 17:19:47.111	\N	\N	\N
32	ssc58m5kh34isbkzmwxzdqg8	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-04-06 17:19:47.129	2025-04-06 17:19:47.129	2025-04-06 17:19:47.129	\N	\N	\N
33	jk4ft4wgt568xajeg8t8amxh	plugin::content-manager.explorer.publish	{}	api::comment.comment	{}	[]	2025-04-06 17:19:47.143	2025-04-06 17:19:47.143	2025-04-06 17:19:47.143	\N	\N	\N
34	efz1417v9s3nuv6nqxwhxd5p	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-04-06 17:19:47.156	2025-04-06 17:19:47.156	2025-04-06 17:19:47.157	\N	\N	\N
35	pv1kgzqrebc4xbjor8a4npcx	plugin::content-manager.explorer.publish	{}	api::tag.tag	{}	[]	2025-04-06 17:19:47.169	2025-04-06 17:19:47.169	2025-04-06 17:19:47.169	\N	\N	\N
36	uqv9osrm0sfw9vod3jp8i0eu	plugin::upload.read	{}	\N	{}	[]	2025-04-06 17:19:47.181	2025-04-06 17:19:47.181	2025-04-06 17:19:47.181	\N	\N	\N
37	w7tqdnqhczjwfqcq5fqow0k0	plugin::upload.configure-view	{}	\N	{}	[]	2025-04-06 17:19:47.193	2025-04-06 17:19:47.193	2025-04-06 17:19:47.194	\N	\N	\N
38	jt412h0uk5hvt3ozp3dszw9h	plugin::upload.assets.create	{}	\N	{}	[]	2025-04-06 17:19:47.207	2025-04-06 17:19:47.207	2025-04-06 17:19:47.207	\N	\N	\N
39	bsqg6n00uorp0lrubstgh9it	plugin::upload.assets.update	{}	\N	{}	[]	2025-04-06 17:19:47.221	2025-04-06 17:19:47.221	2025-04-06 17:19:47.221	\N	\N	\N
40	rgy37t0927r7feuxq5vmcyxv	plugin::upload.assets.download	{}	\N	{}	[]	2025-04-06 17:19:47.241	2025-04-06 17:19:47.241	2025-04-06 17:19:47.241	\N	\N	\N
41	tyy0wppxha87ivoy1w10dkc8	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-04-06 17:19:47.253	2025-04-06 17:19:47.253	2025-04-06 17:19:47.254	\N	\N	\N
42	i4ueedakcjem9xe6ae0guvjm	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-04-06 17:19:47.274	2025-04-06 17:19:47.274	2025-04-06 17:19:47.274	\N	\N	\N
43	qwpnt0cjp6ugkojn5ez1dwin	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "comments", "categories", "authors", "content"]}	["admin::is-creator"]	2025-04-06 17:19:47.292	2025-04-06 17:19:47.292	2025-04-06 17:19:47.292	\N	\N	\N
44	tph42is9x5ksa0u56qoh9z3u	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "comments", "news"]}	["admin::is-creator"]	2025-04-06 17:19:47.305	2025-04-06 17:19:47.305	2025-04-06 17:19:47.306	\N	\N	\N
45	b7akme3dcyyiq83j5jbjjza7	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "description", "news"]}	["admin::is-creator"]	2025-04-06 17:19:47.32	2025-04-06 17:19:47.32	2025-04-06 17:19:47.32	\N	\N	\N
46	wwzazfpvbdckrw27369656lf	plugin::content-manager.explorer.create	{}	api::comment.comment	{"fields": ["news", "author", "comment"]}	["admin::is-creator"]	2025-04-06 17:19:47.336	2025-04-06 17:19:47.336	2025-04-06 17:19:47.336	\N	\N	\N
47	ms0i5xf27yx9eeb6v6ptc9r0	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-04-06 17:19:47.348	2025-04-06 17:19:47.348	2025-04-06 17:19:47.348	\N	\N	\N
48	tzrfxmh4w8s5uj1pdq1cofoh	plugin::content-manager.explorer.create	{}	api::tag.tag	{"fields": ["name", "description"]}	["admin::is-creator"]	2025-04-06 17:19:47.361	2025-04-06 17:19:47.361	2025-04-06 17:19:47.361	\N	\N	\N
49	wseckkfydl6guzixkaywdnky	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-04-06 17:19:47.375	2025-04-06 17:19:47.375	2025-04-06 17:19:47.376	\N	\N	\N
50	xghcteci3jiokbos3h1tejwl	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "comments", "categories", "authors", "content"]}	["admin::is-creator"]	2025-04-06 17:19:47.389	2025-04-06 17:19:47.389	2025-04-06 17:19:47.39	\N	\N	\N
51	rssdid4oqh2hfk55s4oae7ro	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "comments", "news"]}	["admin::is-creator"]	2025-04-06 17:19:47.403	2025-04-06 17:19:47.403	2025-04-06 17:19:47.403	\N	\N	\N
52	ex9lb7t2hiaxblwal9wcg2d6	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "description", "news"]}	["admin::is-creator"]	2025-04-06 17:19:47.415	2025-04-06 17:19:47.415	2025-04-06 17:19:47.415	\N	\N	\N
53	s0hjoce8pvxy1zwdryo0x76s	plugin::content-manager.explorer.read	{}	api::comment.comment	{"fields": ["news", "author", "comment"]}	["admin::is-creator"]	2025-04-06 17:19:47.427	2025-04-06 17:19:47.427	2025-04-06 17:19:47.427	\N	\N	\N
54	p9d2gs07v97zwd8rvkvbhyqi	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-04-06 17:19:47.439	2025-04-06 17:19:47.439	2025-04-06 17:19:47.439	\N	\N	\N
55	xjmh2h2h4aomln04i6yajhal	plugin::content-manager.explorer.read	{}	api::tag.tag	{"fields": ["name", "description"]}	["admin::is-creator"]	2025-04-06 17:19:47.453	2025-04-06 17:19:47.453	2025-04-06 17:19:47.453	\N	\N	\N
56	ayayj1hvmb9le71s9f4m525c	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	["admin::is-creator"]	2025-04-06 17:19:47.466	2025-04-06 17:19:47.466	2025-04-06 17:19:47.466	\N	\N	\N
57	bevfadck6ei276bepo8xcmro	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "comments", "categories", "authors", "content"]}	["admin::is-creator"]	2025-04-06 17:19:47.479	2025-04-06 17:19:47.479	2025-04-06 17:19:47.479	\N	\N	\N
58	kj4jvo3qj98jo7kcdmz6ko7e	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "comments", "news"]}	["admin::is-creator"]	2025-04-06 17:19:47.491	2025-04-06 17:19:47.491	2025-04-06 17:19:47.491	\N	\N	\N
59	slp3uogyscdnkt0pycets9zo	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "description", "news"]}	["admin::is-creator"]	2025-04-06 17:19:47.503	2025-04-06 17:19:47.503	2025-04-06 17:19:47.503	\N	\N	\N
60	nssbiodng82oba9g4z2x2ybf	plugin::content-manager.explorer.update	{}	api::comment.comment	{"fields": ["news", "author", "comment"]}	["admin::is-creator"]	2025-04-06 17:19:47.516	2025-04-06 17:19:47.516	2025-04-06 17:19:47.516	\N	\N	\N
61	aaspjzzl2sk4pm9dgilekyxd	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-04-06 17:19:47.531	2025-04-06 17:19:47.531	2025-04-06 17:19:47.531	\N	\N	\N
62	nihxvqh93on47mntqiyt87um	plugin::content-manager.explorer.update	{}	api::tag.tag	{"fields": ["name", "description"]}	["admin::is-creator"]	2025-04-06 17:19:47.544	2025-04-06 17:19:47.544	2025-04-06 17:19:47.544	\N	\N	\N
63	e9t7z27mn6l20dlrsbrb49vn	plugin::content-manager.explorer.delete	{}	api::about.about	{}	["admin::is-creator"]	2025-04-06 17:19:47.556	2025-04-06 17:19:47.556	2025-04-06 17:19:47.556	\N	\N	\N
64	rt0j349rt509sucgn9lsl88f	plugin::content-manager.explorer.delete	{}	api::article.article	{}	["admin::is-creator"]	2025-04-06 17:19:47.568	2025-04-06 17:19:47.568	2025-04-06 17:19:47.568	\N	\N	\N
65	ebmkeelps5lgd7s2hobyzt27	plugin::content-manager.explorer.delete	{}	api::author.author	{}	["admin::is-creator"]	2025-04-06 17:19:47.581	2025-04-06 17:19:47.581	2025-04-06 17:19:47.581	\N	\N	\N
66	mb1knaoibhxqqk1jo6gx42ny	plugin::content-manager.explorer.delete	{}	api::category.category	{}	["admin::is-creator"]	2025-04-06 17:19:47.592	2025-04-06 17:19:47.592	2025-04-06 17:19:47.592	\N	\N	\N
67	fbg2fampasmuhmn0q6qmhpcg	plugin::content-manager.explorer.delete	{}	api::comment.comment	{}	["admin::is-creator"]	2025-04-06 17:19:47.605	2025-04-06 17:19:47.605	2025-04-06 17:19:47.605	\N	\N	\N
68	caio13t7b4kfufpqvaaetkqj	plugin::content-manager.explorer.delete	{}	api::global.global	{}	["admin::is-creator"]	2025-04-06 17:19:47.618	2025-04-06 17:19:47.618	2025-04-06 17:19:47.619	\N	\N	\N
69	r4rqryebiwda1ce3epu7szuo	plugin::content-manager.explorer.delete	{}	api::tag.tag	{}	["admin::is-creator"]	2025-04-06 17:19:47.632	2025-04-06 17:19:47.632	2025-04-06 17:19:47.632	\N	\N	\N
70	u3376e54ehxhyo6qnxjk3gal	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2025-04-06 17:19:47.645	2025-04-06 17:19:47.645	2025-04-06 17:19:47.645	\N	\N	\N
71	gu6gtunkjoxw1sqv1dr8pned	plugin::upload.configure-view	{}	\N	{}	[]	2025-04-06 17:19:47.658	2025-04-06 17:19:47.658	2025-04-06 17:19:47.658	\N	\N	\N
72	n5u82x6slfwczht4wqinmmmr	plugin::upload.assets.create	{}	\N	{}	[]	2025-04-06 17:19:47.672	2025-04-06 17:19:47.672	2025-04-06 17:19:47.672	\N	\N	\N
73	cyb5wdc54quuym4jcr0r79x2	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2025-04-06 17:19:47.686	2025-04-06 17:19:47.686	2025-04-06 17:19:47.686	\N	\N	\N
74	idmzupu24o2ptoyxv2fg7dhx	plugin::upload.assets.download	{}	\N	{}	[]	2025-04-06 17:19:47.7	2025-04-06 17:19:47.7	2025-04-06 17:19:47.7	\N	\N	\N
75	cxv7xdbmfagq8iczm7s4v5bn	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-04-06 17:19:47.713	2025-04-06 17:19:47.713	2025-04-06 17:19:47.713	\N	\N	\N
76	jigl6fkon4861hmey5xdmppd	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-04-06 17:19:47.771	2025-04-06 17:19:47.771	2025-04-06 17:19:47.771	\N	\N	\N
77	qucvd5wrwmfc9egsw71obn74	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-04-06 17:19:47.789	2025-04-06 17:19:47.789	2025-04-06 17:19:47.79	\N	\N	\N
78	pjcamahfvek8osog01fr9uxr	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "comments", "categories", "authors", "content"]}	[]	2025-04-06 17:19:47.805	2025-04-06 17:19:47.805	2025-04-06 17:19:47.805	\N	\N	\N
79	oprw8phjb9ew3htp7e3a344x	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "comments", "news"]}	[]	2025-04-06 17:19:47.819	2025-04-06 17:19:47.819	2025-04-06 17:19:47.819	\N	\N	\N
80	xlsd8c8rcdqhj8f5l75a84kk	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "description", "news"]}	[]	2025-04-06 17:19:47.832	2025-04-06 17:19:47.832	2025-04-06 17:19:47.832	\N	\N	\N
81	g400rkdm6mbp26kk2hoieh5h	plugin::content-manager.explorer.create	{}	api::comment.comment	{"fields": ["news", "author", "comment"]}	[]	2025-04-06 17:19:47.847	2025-04-06 17:19:47.847	2025-04-06 17:19:47.848	\N	\N	\N
82	t0ma0qlytif9rn4xecdvdhxj	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-04-06 17:19:47.863	2025-04-06 17:19:47.863	2025-04-06 17:19:47.863	\N	\N	\N
83	cdb5fm37kpzh2cmgxnqrlxjz	plugin::content-manager.explorer.create	{}	api::tag.tag	{"fields": ["name", "description"]}	[]	2025-04-06 17:19:47.875	2025-04-06 17:19:47.875	2025-04-06 17:19:47.876	\N	\N	\N
84	etca40m72vim1zvtv9b675ml	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-04-06 17:19:47.888	2025-04-06 17:19:47.888	2025-04-06 17:19:47.889	\N	\N	\N
85	pits0yv5l34fu8lcr3my8m0f	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-04-06 17:19:47.901	2025-04-06 17:19:47.901	2025-04-06 17:19:47.901	\N	\N	\N
86	yz0reguh2a0jwz29nb8aegec	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "comments", "categories", "authors", "content"]}	[]	2025-04-06 17:19:47.915	2025-04-06 17:19:47.915	2025-04-06 17:19:47.915	\N	\N	\N
87	a06xuzfublv6tc9w3rng9arp	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "comments", "news"]}	[]	2025-04-06 17:19:47.929	2025-04-06 17:19:47.929	2025-04-06 17:19:47.93	\N	\N	\N
88	k6jfcwwpr0iwf9fpipz3j8xz	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "description", "news"]}	[]	2025-04-06 17:19:47.943	2025-04-06 17:19:47.943	2025-04-06 17:19:47.944	\N	\N	\N
89	cy4edjuelsko6ed9t9yhkq3p	plugin::content-manager.explorer.read	{}	api::comment.comment	{"fields": ["news", "author", "comment"]}	[]	2025-04-06 17:19:47.957	2025-04-06 17:19:47.957	2025-04-06 17:19:47.957	\N	\N	\N
90	c17rbwgg330iqtvi052be2dk	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-04-06 17:19:47.968	2025-04-06 17:19:47.968	2025-04-06 17:19:47.968	\N	\N	\N
91	ywo0y0mjdrwe5ltls9w38ly7	plugin::content-manager.explorer.read	{}	api::tag.tag	{"fields": ["name", "description"]}	[]	2025-04-06 17:19:47.98	2025-04-06 17:19:47.98	2025-04-06 17:19:47.98	\N	\N	\N
92	r4jlmdtkknhkdbakf2excebv	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-04-06 17:19:47.992	2025-04-06 17:19:47.992	2025-04-06 17:19:47.993	\N	\N	\N
93	w0vobe140kdtgg2tb1dz4mdb	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["title", "blocks"]}	[]	2025-04-06 17:19:48.006	2025-04-06 17:19:48.006	2025-04-06 17:19:48.006	\N	\N	\N
94	gwyg72lhshbnzua0q1wnh42s	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "slug", "cover", "comments", "categories", "authors", "content"]}	[]	2025-04-06 17:19:48.019	2025-04-06 17:19:48.019	2025-04-06 17:19:48.019	\N	\N	\N
95	w110r8ai5y13zfdbqzg6cz3b	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "comments", "news"]}	[]	2025-04-06 17:19:48.031	2025-04-06 17:19:48.031	2025-04-06 17:19:48.031	\N	\N	\N
96	spe3ykbcnjr27rqvbtc5ux04	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "description", "news"]}	[]	2025-04-06 17:19:48.043	2025-04-06 17:19:48.043	2025-04-06 17:19:48.043	\N	\N	\N
97	uo8sz7co6lp6a832jcac29l3	plugin::content-manager.explorer.update	{}	api::comment.comment	{"fields": ["news", "author", "comment"]}	[]	2025-04-06 17:19:48.054	2025-04-06 17:19:48.054	2025-04-06 17:19:48.054	\N	\N	\N
98	io80b43zajqiv2ygncneud40	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-04-06 17:19:48.066	2025-04-06 17:19:48.066	2025-04-06 17:19:48.066	\N	\N	\N
99	li8963xatjvsthmmwh1s7fqp	plugin::content-manager.explorer.update	{}	api::tag.tag	{"fields": ["name", "description"]}	[]	2025-04-06 17:19:48.077	2025-04-06 17:19:48.077	2025-04-06 17:19:48.077	\N	\N	\N
100	i323lqeu8vqvufoklnadmbwz	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2025-04-06 17:19:48.091	2025-04-06 17:19:48.091	2025-04-06 17:19:48.091	\N	\N	\N
101	i5doa95f5qmpbk7tjwtyken9	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-04-06 17:19:48.105	2025-04-06 17:19:48.105	2025-04-06 17:19:48.105	\N	\N	\N
102	h37zuixoqlsr5nvnc2mj82cj	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-04-06 17:19:48.118	2025-04-06 17:19:48.118	2025-04-06 17:19:48.118	\N	\N	\N
103	hzu2e13zkjj6p8lgnkoqkl4w	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-04-06 17:19:48.129	2025-04-06 17:19:48.129	2025-04-06 17:19:48.129	\N	\N	\N
104	getw2adrxpti7k55uqecbcp8	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-04-06 17:19:48.14	2025-04-06 17:19:48.14	2025-04-06 17:19:48.141	\N	\N	\N
105	aarxfn7cnmfbrvshin1yj2a6	plugin::content-manager.explorer.delete	{}	api::comment.comment	{}	[]	2025-04-06 17:19:48.152	2025-04-06 17:19:48.152	2025-04-06 17:19:48.152	\N	\N	\N
106	fhhsetwrgcnnxdt9w3t8fxi9	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-04-06 17:19:48.165	2025-04-06 17:19:48.165	2025-04-06 17:19:48.165	\N	\N	\N
107	anttq5bqsnq8bugoq4ccz5g4	plugin::content-manager.explorer.delete	{}	api::tag.tag	{}	[]	2025-04-06 17:19:48.179	2025-04-06 17:19:48.179	2025-04-06 17:19:48.179	\N	\N	\N
108	upko5w1od5hxvdeaszl4jjri	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2025-04-06 17:19:48.191	2025-04-06 17:19:48.191	2025-04-06 17:19:48.191	\N	\N	\N
109	tuowcckbhly3zev2e439o9e8	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-04-06 17:19:48.202	2025-04-06 17:19:48.202	2025-04-06 17:19:48.202	\N	\N	\N
110	s5ywvz4ahuh4c5szsoi3xdb8	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-04-06 17:19:48.214	2025-04-06 17:19:48.214	2025-04-06 17:19:48.214	\N	\N	\N
111	m1h2o18zbcimschukqzggtmh	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-04-06 17:19:48.225	2025-04-06 17:19:48.225	2025-04-06 17:19:48.225	\N	\N	\N
112	rw060eus2sx2sxtlqsxrbjhu	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-04-06 17:19:48.237	2025-04-06 17:19:48.237	2025-04-06 17:19:48.237	\N	\N	\N
113	eq8kh33hwhod1ka6gxg4ql67	plugin::content-manager.explorer.publish	{}	api::comment.comment	{}	[]	2025-04-06 17:19:48.251	2025-04-06 17:19:48.251	2025-04-06 17:19:48.251	\N	\N	\N
114	ivmw3n31sh0hva41phr4zzws	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-04-06 17:19:48.265	2025-04-06 17:19:48.265	2025-04-06 17:19:48.265	\N	\N	\N
115	e5s1mw88b91t1v5weaaej8ee	plugin::content-manager.explorer.publish	{}	api::tag.tag	{}	[]	2025-04-06 17:19:48.277	2025-04-06 17:19:48.277	2025-04-06 17:19:48.277	\N	\N	\N
116	uz2fk68m2cdwhgmw99d690n0	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2025-04-06 17:19:48.29	2025-04-06 17:19:48.29	2025-04-06 17:19:48.29	\N	\N	\N
117	nz8tlekn32mbl2kcolm1yz7b	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2025-04-06 17:19:48.301	2025-04-06 17:19:48.301	2025-04-06 17:19:48.301	\N	\N	\N
118	dccusm5ts2yde5xbcft0wc4w	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2025-04-06 17:19:48.314	2025-04-06 17:19:48.314	2025-04-06 17:19:48.314	\N	\N	\N
119	yqe5u0h4ua2ixvdbpyg6ysjv	plugin::content-type-builder.read	{}	\N	{}	[]	2025-04-06 17:19:48.329	2025-04-06 17:19:48.329	2025-04-06 17:19:48.329	\N	\N	\N
120	eetb7qijy84mpsvkjcsuy8wo	plugin::email.settings.read	{}	\N	{}	[]	2025-04-06 17:19:48.342	2025-04-06 17:19:48.342	2025-04-06 17:19:48.342	\N	\N	\N
121	r36qjou4nqyf0i2d41waxndp	plugin::upload.read	{}	\N	{}	[]	2025-04-06 17:19:48.353	2025-04-06 17:19:48.353	2025-04-06 17:19:48.353	\N	\N	\N
122	wkcres9216m65f9qal5hzf2e	plugin::upload.assets.create	{}	\N	{}	[]	2025-04-06 17:19:48.364	2025-04-06 17:19:48.364	2025-04-06 17:19:48.364	\N	\N	\N
123	qe9gftm072dlxtujatimsh9k	plugin::upload.assets.update	{}	\N	{}	[]	2025-04-06 17:19:48.375	2025-04-06 17:19:48.375	2025-04-06 17:19:48.375	\N	\N	\N
124	ruk0lt92n2em0ojzdjxgjs7n	plugin::upload.assets.download	{}	\N	{}	[]	2025-04-06 17:19:48.387	2025-04-06 17:19:48.387	2025-04-06 17:19:48.387	\N	\N	\N
125	ebfuuiceb3zu6mxzqomoytwe	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-04-06 17:19:48.398	2025-04-06 17:19:48.398	2025-04-06 17:19:48.398	\N	\N	\N
126	wm14g23dog3juaurs20tmowu	plugin::upload.configure-view	{}	\N	{}	[]	2025-04-06 17:19:48.413	2025-04-06 17:19:48.413	2025-04-06 17:19:48.413	\N	\N	\N
127	q82fm3854xqyfrejauz85ttm	plugin::upload.settings.read	{}	\N	{}	[]	2025-04-06 17:19:48.426	2025-04-06 17:19:48.426	2025-04-06 17:19:48.426	\N	\N	\N
128	r622wy7b30ncxjmxzrr3csza	plugin::i18n.locale.create	{}	\N	{}	[]	2025-04-06 17:19:48.439	2025-04-06 17:19:48.439	2025-04-06 17:19:48.439	\N	\N	\N
129	oxjib50x690zz1iz84fr9xa2	plugin::i18n.locale.read	{}	\N	{}	[]	2025-04-06 17:19:48.451	2025-04-06 17:19:48.451	2025-04-06 17:19:48.451	\N	\N	\N
130	elc1atppka289o1ctb3cfnv7	plugin::i18n.locale.update	{}	\N	{}	[]	2025-04-06 17:19:48.462	2025-04-06 17:19:48.462	2025-04-06 17:19:48.462	\N	\N	\N
131	ppbbvyjmp8j0fw2hh005vbk9	plugin::i18n.locale.delete	{}	\N	{}	[]	2025-04-06 17:19:48.474	2025-04-06 17:19:48.474	2025-04-06 17:19:48.474	\N	\N	\N
132	vzhimpn8q7qc0ngjg9cqwe9u	plugin::users-permissions.roles.create	{}	\N	{}	[]	2025-04-06 17:19:48.488	2025-04-06 17:19:48.488	2025-04-06 17:19:48.488	\N	\N	\N
133	btri0skz0myktyejg6r6uysk	plugin::users-permissions.roles.read	{}	\N	{}	[]	2025-04-06 17:19:48.502	2025-04-06 17:19:48.502	2025-04-06 17:19:48.502	\N	\N	\N
134	k1gdb1rgo7tsbhe0cex1bwjg	plugin::users-permissions.roles.update	{}	\N	{}	[]	2025-04-06 17:19:48.514	2025-04-06 17:19:48.514	2025-04-06 17:19:48.515	\N	\N	\N
135	ewt5m646ks8vziic3qtmudpn	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2025-04-06 17:19:48.526	2025-04-06 17:19:48.526	2025-04-06 17:19:48.527	\N	\N	\N
136	j2ikper1hvmwvu28rw8hgd8p	plugin::users-permissions.providers.read	{}	\N	{}	[]	2025-04-06 17:19:48.538	2025-04-06 17:19:48.538	2025-04-06 17:19:48.538	\N	\N	\N
137	ujrvckoubk9grfpa9pvwsuvb	plugin::users-permissions.providers.update	{}	\N	{}	[]	2025-04-06 17:19:48.55	2025-04-06 17:19:48.55	2025-04-06 17:19:48.55	\N	\N	\N
138	onov2gqlfw5l0mek0o1rdo8p	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2025-04-06 17:19:48.563	2025-04-06 17:19:48.563	2025-04-06 17:19:48.563	\N	\N	\N
139	z7vo0jqao3b49e6yl7eyjwco	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2025-04-06 17:19:48.577	2025-04-06 17:19:48.577	2025-04-06 17:19:48.577	\N	\N	\N
140	f5ngyourbw297wa4qxvv7g4i	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2025-04-06 17:19:48.59	2025-04-06 17:19:48.59	2025-04-06 17:19:48.59	\N	\N	\N
141	c4qhyq27o3jtz4g4xenkxrng	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2025-04-06 17:19:48.602	2025-04-06 17:19:48.602	2025-04-06 17:19:48.602	\N	\N	\N
142	dkfyt2z22uvcorcko4dgabl9	admin::marketplace.read	{}	\N	{}	[]	2025-04-06 17:19:48.615	2025-04-06 17:19:48.615	2025-04-06 17:19:48.615	\N	\N	\N
143	mhke23zynzdonpclfh0obrne	admin::webhooks.create	{}	\N	{}	[]	2025-04-06 17:19:48.627	2025-04-06 17:19:48.627	2025-04-06 17:19:48.627	\N	\N	\N
144	p90o5rszwfixgcwizhm33uf5	admin::webhooks.read	{}	\N	{}	[]	2025-04-06 17:19:48.639	2025-04-06 17:19:48.639	2025-04-06 17:19:48.639	\N	\N	\N
145	jpbgzvzxue0b5zgfkjtdxf2m	admin::webhooks.update	{}	\N	{}	[]	2025-04-06 17:19:48.651	2025-04-06 17:19:48.651	2025-04-06 17:19:48.652	\N	\N	\N
146	md02txvaskvpvhdushiob83j	admin::webhooks.delete	{}	\N	{}	[]	2025-04-06 17:19:48.667	2025-04-06 17:19:48.667	2025-04-06 17:19:48.667	\N	\N	\N
147	jco858ha6ch2ugkomhzw7rtc	admin::users.create	{}	\N	{}	[]	2025-04-06 17:19:48.68	2025-04-06 17:19:48.68	2025-04-06 17:19:48.68	\N	\N	\N
148	nnvgd9lrmenxs4ohxnjuujfp	admin::users.read	{}	\N	{}	[]	2025-04-06 17:19:48.692	2025-04-06 17:19:48.692	2025-04-06 17:19:48.692	\N	\N	\N
149	niyjf5fb6j4b62gcwwfymnw8	admin::users.update	{}	\N	{}	[]	2025-04-06 17:19:48.704	2025-04-06 17:19:48.704	2025-04-06 17:19:48.704	\N	\N	\N
150	gc5c510uuyzwg42v4nvs81ha	admin::users.delete	{}	\N	{}	[]	2025-04-06 17:19:48.716	2025-04-06 17:19:48.716	2025-04-06 17:19:48.716	\N	\N	\N
151	dags9l8geeg6zuncmigi1jv3	admin::roles.create	{}	\N	{}	[]	2025-04-06 17:19:48.733	2025-04-06 17:19:48.733	2025-04-06 17:19:48.733	\N	\N	\N
152	sgug5txkj3mq2ttcmpt64ygv	admin::roles.read	{}	\N	{}	[]	2025-04-06 17:19:48.75	2025-04-06 17:19:48.75	2025-04-06 17:19:48.75	\N	\N	\N
153	zvf0nsw473gmpk4awcy0j3dz	admin::roles.update	{}	\N	{}	[]	2025-04-06 17:19:48.763	2025-04-06 17:19:48.763	2025-04-06 17:19:48.763	\N	\N	\N
154	v5jvtmf8bcgw76zk99av15uu	admin::roles.delete	{}	\N	{}	[]	2025-04-06 17:19:48.775	2025-04-06 17:19:48.775	2025-04-06 17:19:48.775	\N	\N	\N
155	b3krptb58uediadft6uc7l0j	admin::api-tokens.access	{}	\N	{}	[]	2025-04-06 17:19:48.789	2025-04-06 17:19:48.789	2025-04-06 17:19:48.789	\N	\N	\N
156	h4jdenx7e5fupyqzn1d0quvx	admin::api-tokens.create	{}	\N	{}	[]	2025-04-06 17:19:48.802	2025-04-06 17:19:48.802	2025-04-06 17:19:48.802	\N	\N	\N
157	d8q4o6ikqqgte0t9cfzqoahg	admin::api-tokens.read	{}	\N	{}	[]	2025-04-06 17:19:48.817	2025-04-06 17:19:48.817	2025-04-06 17:19:48.817	\N	\N	\N
158	o12hoiue5imdlseljr0l3jw9	admin::api-tokens.update	{}	\N	{}	[]	2025-04-06 17:19:48.83	2025-04-06 17:19:48.83	2025-04-06 17:19:48.83	\N	\N	\N
159	hwjwb2sqqehkb7rs9rx1llfd	admin::api-tokens.regenerate	{}	\N	{}	[]	2025-04-06 17:19:48.842	2025-04-06 17:19:48.842	2025-04-06 17:19:48.842	\N	\N	\N
160	hcz32u1zk1s4k6vbkna3d2iw	admin::api-tokens.delete	{}	\N	{}	[]	2025-04-06 17:19:48.855	2025-04-06 17:19:48.855	2025-04-06 17:19:48.855	\N	\N	\N
161	pqgv6u4klczdrag5rvu4x2vb	admin::project-settings.update	{}	\N	{}	[]	2025-04-06 17:19:48.866	2025-04-06 17:19:48.866	2025-04-06 17:19:48.866	\N	\N	\N
162	je3xfe5cprgt3wy5aypiagag	admin::project-settings.read	{}	\N	{}	[]	2025-04-06 17:19:48.88	2025-04-06 17:19:48.88	2025-04-06 17:19:48.88	\N	\N	\N
163	j1xvp39ncb78rsawvj4sy026	admin::transfer.tokens.access	{}	\N	{}	[]	2025-04-06 17:19:48.895	2025-04-06 17:19:48.895	2025-04-06 17:19:48.895	\N	\N	\N
164	jszerky2c6b1g6s4u1inf4p2	admin::transfer.tokens.create	{}	\N	{}	[]	2025-04-06 17:19:48.908	2025-04-06 17:19:48.908	2025-04-06 17:19:48.908	\N	\N	\N
165	uvphel0y574xkkx5hvau77dq	admin::transfer.tokens.read	{}	\N	{}	[]	2025-04-06 17:19:48.921	2025-04-06 17:19:48.921	2025-04-06 17:19:48.921	\N	\N	\N
166	pz9ct4ge0d9uwi8jgg2s2nue	admin::transfer.tokens.update	{}	\N	{}	[]	2025-04-06 17:19:48.933	2025-04-06 17:19:48.933	2025-04-06 17:19:48.934	\N	\N	\N
167	q8g7790jw4fmmdu480dimcr0	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2025-04-06 17:19:48.946	2025-04-06 17:19:48.946	2025-04-06 17:19:48.946	\N	\N	\N
168	x97vjarv63lptz8lynh86l7v	admin::transfer.tokens.delete	{}	\N	{}	[]	2025-04-06 17:19:48.958	2025-04-06 17:19:48.958	2025-04-06 17:19:48.958	\N	\N	\N



--
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
17	17	2	17
18	18	2	18
19	19	2	19
20	20	2	20
21	21	2	21
22	22	2	22
23	23	2	23
24	24	2	24
25	25	2	25
26	26	2	26
27	27	2	27
28	28	2	28
29	29	2	29
30	30	2	30
31	31	2	31
32	32	2	32
33	33	2	33
34	34	2	34
35	35	2	35
36	36	2	36
37	37	2	37
38	38	2	38
39	39	2	39
40	40	2	40
41	41	2	41
42	42	3	1
43	43	3	2
44	44	3	3
45	45	3	4
46	46	3	5
47	47	3	6
48	48	3	7
49	49	3	8
50	50	3	9
51	51	3	10
52	52	3	11
53	53	3	12
54	54	3	13
55	55	3	14
56	56	3	15
57	57	3	16
58	58	3	17
59	59	3	18
60	60	3	19
61	61	3	20
62	62	3	21
63	63	3	22
64	64	3	23
65	65	3	24
66	66	3	25
67	67	3	26
68	68	3	27
69	69	3	28
70	70	3	29
71	71	3	30
72	72	3	31
73	73	3	32
74	74	3	33
75	75	3	34
76	76	1	1
77	77	1	2
78	78	1	3
79	79	1	4
80	80	1	5
81	81	1	6
82	82	1	7
83	83	1	8
84	84	1	9
85	85	1	10
86	86	1	11
87	87	1	12
88	88	1	13
89	89	1	14
90	90	1	15
91	91	1	16
92	92	1	17
93	93	1	18
94	94	1	19
95	95	1	20
96	96	1	21
97	97	1	22
98	98	1	23
99	99	1	24
100	100	1	25
101	101	1	26
102	102	1	27
103	103	1	28
104	104	1	29
105	105	1	30
106	106	1	31
107	107	1	32
108	108	1	33
109	109	1	34
110	110	1	35
111	111	1	36
112	112	1	37
113	113	1	38
114	114	1	39
115	115	1	40
116	116	1	41
117	117	1	42
118	118	1	43
119	119	1	44
120	120	1	45
121	121	1	46
122	122	1	47
123	123	1	48
124	124	1	49
125	125	1	50
126	126	1	51
127	127	1	52
128	128	1	53
129	129	1	54
130	130	1	55
131	131	1	56
132	132	1	57
133	133	1	58
134	134	1	59
135	135	1	60
136	136	1	61
137	137	1	62
138	138	1	63
139	139	1	64
140	140	1	65
141	141	1	66
142	142	1	67
143	143	1	68
144	144	1	69
145	145	1	70
146	146	1	71
147	147	1	72
148	148	1	73
149	149	1	74
150	150	1	75
151	151	1	76
152	152	1	77
153	153	1	78
154	154	1	79
155	155	1	80
156	156	1	81
157	157	1	82
158	158	1	83
159	159	1	84
160	160	1	85
161	161	1	86
162	162	1	87
163	163	1	88
164	164	1	89
165	165	1	90
166	166	1	91
167	167	1	92
168	168	1	93



--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ntg18bqvpu9hq3o3ak0xo607	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2025-04-06 17:19:46.624	2025-04-06 17:19:46.624	2025-04-06 17:19:46.624	\N	\N	\N
2	mw5kwa9cs7q7icmnt53ttfd8	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2025-04-06 17:19:46.643	2025-04-06 17:19:46.643	2025-04-06 17:19:46.644	\N	\N	\N
3	usge7b6pmp6agu9zpg4ldrmo	Author	strapi-author	Authors can manage the content they have created.	2025-04-06 17:19:46.654	2025-04-06 17:19:46.654	2025-04-06 17:19:46.654	\N	\N	\N



--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	kej7y36mabakhqvkenvxio1t	Paulo	Abdiel Sardinha de Sousa Santos	\N	abdielpaulo2@gmail.com	$2a$10$TDv2Es2JbtjTSNIMH0scI.1szXn3FgKzZI1/OZtWoPns1qGqJkY8i	\N	\N	t	f	\N	2025-04-06 17:21:00.17	2025-04-06 17:21:00.17	2025-04-06 17:21:00.17	\N	\N	\N



--
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1



--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.articles (id, document_id, title, description, slug, content, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
6	hrw38i9k0v6yzinv9xybul01	Mundo das Celebridades: Os Principais Acontecimentos do Final de Março e Início de Abril de 2025	Famosos em destaque: os momentos quentes do fim de março e início de abril	Celebridade	[{"type": "paragraph", "children": [{"text": "A transição entre março e abril de 2025 foi marcada por uma série de acontecimentos que movimentaram o universo das celebridades. De revelações impactantes a apresentações memoráveis, o início do mês trouxe momentos que ficaram registrados nas redes sociais e nas capas dos tabloides. Confira os destaques que agitaram o cenário pop e as novidades mais quentes do momento!", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Tata Werneck Recusa Convite para o Remake de \\"Vale Tudo\\"", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "A atriz Tata Werneck, sempre em alta, fez um anúncio que pegou muitos fãs de surpresa. Ela revelou, em uma publicação sincera nas redes sociais, que foi convidada para integrar o elenco do remake da icônica novela “Vale Tudo”. Contudo, devido a compromissos profissionais já firmados, Tata não pôde aceitar o convite. A atriz, com sua típica simpatia, fez questão de elogiar o elenco da produção e desejou sucesso à equipe. Mesmo fora dessa trama, Tata segue conquistando os holofotes com seus projetos e sua presença carismática no universo das celebridades.", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Lollapalooza 2025: O Festival que Reuniu Estrelas no Brasil", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "O festival Lollapalooza 2025, que aconteceu em São Paulo, foi um dos maiores eventos do mês de março e agitou o público com apresentações eletrizantes e a presença de grandes nomes da música internacional. Entre os momentos mais memoráveis, destaca-se a participação surpresa de Shawn Mendes, que, em uma mistura inusitada de ritmos, arriscou um samba no palco principal, ao lado de músicos brasileiros. Além dele, Alanis Morissette fez uma homenagem aos 30 anos de seu álbum clássico, enquanto Pabllo Vittar brilhou ao fazer uma participação especial no show de Marina Lima. O evento, que reuniu estrelas internacionais e locais, consolidou mais uma edição histórica do Lollapalooza no Brasil.", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Anitta: Cancela Show no Coachella e Celebra Ano Novo no Início de Áries", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "A estrela do pop brasileiro, Anitta, causou surpresa ao anunciar o cancelamento de sua apresentação no Coachella 2025, prevista para abril. Embora os motivos do cancelamento ainda sejam privados, a cantora expressou sua gratidão ao festival pela oportunidade e pelo apoio. Em uma publicação enigmática nas redes sociais, Anitta compartilhou momentos celebrando o Ano Novo no primeiro dia de Áries, explicando que o ritual de equinócio simbolizava o novo ciclo de renovação e reflexão. Como sempre, a artista mantém sua aura misteriosa e nos deixa curiosos sobre seus próximos passos.", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Celebridades Mais Ricas do Mundo Segundo a Forbes", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Em um panorama mais financeiro, a Forbes revelou sua lista anual dos bilionários, destacando as celebridades que souberam capitalizar sua fama e transformar seus nomes em impérios. Entre os destaques da lista estão figuras como Kim Kardashian, Jay-Z, Taylor Swift, Michael Jordan e Arnold Schwarzenegger, que conseguiram expandir suas carreiras além da música e do cinema, investindo em negócios milionários. Estes nomes comprovam que, além do talento, o espírito empreendedor também é fundamental para alcançar o sucesso duradouro no mundo das celebridades.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "O mês de março e o início de abril de 2025 marcaram um período de grandes movimentações no universo dos famosos, com notícias que foram de surpresas pessoais a grandes apresentações no palco. O mundo das celebridades, sempre dinâmico, continua a nos oferecer histórias, performances e revelações que nos mantêm ansiosos por mais. Fiquem atentos, porque a temporada promete ainda mais capítulos inesquecíveis!", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}]	2025-04-06 17:35:02.985	2025-04-08 00:20:39.279	\N	1	1	\N
4	rcxiigb4ffh9tszhk4y6jcxm	TBT do Mundo Pop: Três momentos que marcaram a cultura pop	3 momentos marcantes da cultura pop que fizeram história	Pop	[{"type": "paragraph", "children": [{"text": "Toda semana, o mundo do entretenimento entrega momentos icônicos que ficam na memória dos fãs. Mas alguns deles transcendem o tempo e se tornam verdadeiros marcos na cultura pop. No TBT do Mundo Pop de hoje, relembramos três acontecimentos que movimentaram a música: a rixa entre Mariah Carey e Eminem, o impacto de “Oops!… I Did It Again”, de Britney Spears, e a canção que transformou Vanessa da Mata em um nome internacional.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Mariah Carey x Eminem: quando o shade virou hit", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "No início dos anos 2000, o rapper Eminem alegou em entrevistas e músicas que teve um breve relacionamento com Mariah Carey—algo que a cantora sempre negou. O conflito escalou quando Eminem começou a fazer piadas sobre ela em suas músicas. A resposta de Mariah veio em 2009, com a faixa “Obsessed”, um verdadeiro hino do deboche.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "No clipe, Mariah se veste como um homem, imitando Eminem, e ironiza a obsessão do rapper por ela. A música se tornou um sucesso instantâneo e, até hoje, é usada nas redes sociais sempre que alguém quer mandar um “shade” sutil. Eminem, por sua vez, respondeu com a música “The Warning”, onde usou trechos de supostos áudios de Mariah. O embate nunca teve um desfecho definitivo, mas “Obsessed” segue sendo um clássico do pop e um dos maiores diss tracks indiretos da história da música.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Britney Spears e o icônico “Oops!… I Did It Again”", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Em abril de 2000, Britney Spears lançou um dos videoclipes mais icônicos do pop: “Oops!… I Did It Again”. A faixa consolidou Britney como a maior estrela pop da época e trouxe elementos que marcaram a cultura pop para sempre.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "O clipe futurista, ambientado em Marte, ficou famoso pelo macacão vermelho de látex e pela referência ao filme “Titanic” —quando um astronauta entrega a Britney um colar e recria uma das cenas mais clássicas do cinema. A música se tornou um hino da década de 2000, estreando direto no Top 10 da Billboard e ajudando Britney a vender mais de 1,3 milhão de cópias na primeira semana do álbum, um recorde para uma artista feminina na época.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Mais de duas décadas depois, “Oops!… I Did It Again” segue sendo um dos clipes mais lembrados da história do pop, sendo frequentemente homenageado e recriado em shows e performances.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Vanessa da Mata e a música que conquistou o mundo", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "No Brasil, poucos artistas conseguiram fazer a transição para o mercado internacional com tanta força quanto Vanessa da Mata. Em 2007, a cantora lançou “Boa Sorte/Good Luck”, em parceria com o americano Ben Harper. A música se tornou um fenômeno, tocando nas rádios de diversos países e mostrando que o português também pode emocionar o público global.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "A faixa, que mistura versos em inglês e português, fala sobre um relacionamento que está no limite, trazendo uma melodia melancólica e uma interpretação intensa dos dois artistas. O sucesso foi tão grande que ajudou Vanessa a se consolidar no Brasil e a abrir portas para outros artistas brasileiros em colaborações internacionais.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Mesmo mais de 15 anos depois, “Boa Sorte/Good Luck” continua sendo uma das músicas brasileiras mais conhecidas fora do país, e ainda emociona quem a escuta.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "E assim termina o nosso TBT do mundo pop de hoje, relembrando três momentos inesquecíveis que marcaram a cultura pop e continuam a ecoar na memória dos fãs. Este é o nosso primeiro \\"TBT do Mundo Pop\\" da edição Ninguém Liga, mas queremos saber: quais outros acontecimentos icônicos do mundo pop você gostaria de reviver nas próximas edições? Deixe suas sugestões nos comentários e fique ligado para mais memórias e histórias que definiram a música, o entretenimento e a cultura pop! Até a próxima!", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}]	2025-04-06 17:33:30.926	2025-04-08 00:20:46.919	\N	1	1	\N
19	yldxbbtn99ju8g8nzoyhfgcj	Elizabeth Teixeira: A mulher que botou o latifúndio pra corre	Ninguém perguntou sobre Elizabeth Teixeira, mas deveria	Historia	[{"type": "paragraph", "children": [{"text": "Sabe aquela tia do rolê que deixa todo mundo no chinelo? Então, multiplica por mil. Nasceu em 1925, na Paraíba, virou mãe de 11 filhos, enfrentou jagunço, coronel, ditadura, perdeu o marido assassinado por lutar pelos trabalhadores do campo... e ainda aguentou a barra com dignidade. Essa é ", "type": "text"}, {"bold": true, "text": "Elizabeth Teixeira.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Ela e o marido, João Pedro, foram o terror dos latifundiários nos anos 50 e 60. Lideraram as Ligas Camponesas, um movimento que batia de frente com os donos das terras e exigia reforma agrária. A resposta? João Pedro foi morto em 1962. Mas Elizabeth não se acovardou: ", "type": "text"}, {"bold": true, "text": "assumiu a luta e continuou firme.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Durante a ditadura, ela foi perseguida, presa, separada dos filhos e teve que fugir, vivendo escondida por 17 anos sob um nome falso. Os filhos foram espalhados pelo país para sobreviver — assim como ela. Dois deles foram assassinados. Uma tirou a própria vida. ", "type": "text"}, {"bold": true, "text": "Elizabeth perdeu quase tudo, menos a coragem e a esperança.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Ela viveu com medo, mas nunca se calou. Foi presa diversas vezes, tratada como inimiga por lutar por terra, comida e uma vida melhor para os trabalhadores do campo. Mas ela sabia que lutar por dignidade nunca foi crime — e sim um direito.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Nos anos 80, voltou com tudo no documentário *Cabra Marcado Para Morrer* — dirigido por Eduardo Coutinho e disponível no ", "type": "text"}, {"url": "https://www.youtube.com/watch?v=DAPs2Jw6R3k", "type": "link", "children": [{"text": "YouTube", "type": "text"}]}, {"text": " — interpretando a si mesma. Ela não é atriz. Ali é a realidade pura. É o Brasil que sangra e resiste, aquele que não vira cartão-postal.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Hoje, com 100 anos, Elizabeth ainda acredita na reforma agrária. E não é só o discurso que sustenta esse sonho: é muita vivência, muita história, muita cicatriz. Enquanto isso, o campo ainda sofre com a concentração de terras nas mãos de empresários, a violência rural e o total descaso do Estado.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "A luta dela — e de vários semelhantes — ainda não acabou. O nome dela deveria estar nos livros, nos filmes e nas ruas. Mas quase ninguém fala.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}]	2025-04-08 00:13:34.988	2025-04-08 00:20:12.734	\N	1	1	\N
10	p5o3sw4h01js4utgd00fk6pa	ESTREIAS DA SEMANA: O QUE CHEGA NOS CINEMAS E NO STREAMING	Luz, câmera e muita pipoca!	Cinema	[{"type": "paragraph", "children": [{"text": "Prepare-se para uma maratona de filmes e séries que vão agradar a todos os gostos, desde uma adaptação épica de \\"Minecraft\\" até novas temporadas de séries de suspense e drama. Não perca os principais lançamentos da semana e já comece a planejar sua próxima sessão de cinema ou maratona em casa!", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "No cinema", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": " “Um Filme Minecraft” ", "type": "text"}, {"text": "Com estreia no dia 03 de abril: A aguardada adaptação live-action do popular jogo “Minecraft” chega aos cinemas. O filme acompanha quatro amigos transportados para o mundo pixelado de Overworld, onde enfrentam os desafios e as criaturas conhecidas dos gamers. Com a ajuda de um construtor experiente, eles buscam uma forma de retornar para a casa. O elenco conta com Jason Momoa, Jack Black e Emma Mayers. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/EVKYAAES6JQ?si=k9W31dbwtKzS0InR\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“Regras De Amor na Cidade Grande” ", "type": "text"}, {"text": "Esta comédia sul-coreana segue a Jae-hee e Heung-soo, dois estranhos que desenvolveram uma conexão inesperada em meio à agitação de uma metrópole. O filme explora os desafios dos relacionamentos modernos com leveza e humor. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/0Og40WQtPmY?si=gengheyspVwqFLVr\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“Código Alarum” ", "type": "text"}, {"text": "Um thriller de ação que promete manter o público na ponta da cadeira. Detalhes sobre a trama são escassos, aumentando a expectativas dos fãs do gênero. Estreia dia 10 de abril “Operação Vingança” Este filme de ação acompanha a jornada de um agente secreto em busca de justiça após uma traição dentro de sua própria organização. Com sequências de luta coreografadas e uma trama cheia de reviravoltas, promete ser um prato cheio para os fãs de ação.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/u2GCSPwUgR4?si=iaVfw_FBC_p2s7HL\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 3, "children": [{"text": " Plataformas de streaming ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Netflix: ", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“Black Mirror” ", "type": "text"}, {"text": "Temporada 07 estreia em abril, a série antológica retorna com novos episódios explorando impactos da tecnologia na sociedade. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/1iqra1ojEvM?si=JU82_AsfN4cVsCd4\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“You” ", "type": "text"}, {"text": "A série estreia nesse mês de abril mais uma temporada totalizando 5. Joe Goldberg está de volta em mais uma temporada cheia de suspense e reviravoltas.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/fp4i_lRYXrc?si=mYSKtTllQ0n6eR_m\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": " Amazon Prime Vídeo: ", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“G20”", "type": "text"}, {"text": " com estreia no dia 10 de abril, filme de ação estrelado por Viola Davis como a presidente dos EUA enfrentando uma crise durante uma cúpula internacional. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/ZL7R8qyQXrc?si=6qKcVIfGcapXNe_h\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“The Bondsman” ", "type": "text"}, {"text": "Com estreia para o dia 03 de abril, Kevin Bacon interpreta um assassino a serviço do diabo que recebe uma segunda chance na terra. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/rCUH9mBeLhY?si=ViC6lctFAEp4ARkh\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 3, "children": [{"text": "Disney+ ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“Andor”", "type": "text"}, {"text": " Com a data de estreia da segunda temporada já marcada para o dia 22 de abril, a série ambientada no universo de Star Wars, focada no cassian Andor.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/AE4wxt70aUM?si=JswWwJ_kKgaadpiT\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": " “dying for Sex”", "type": "text"}, {"text": " Com a estreia já nesse dia 04, a série baseada em histórias reais, explorando temas de sexualidade e relacionamentos. Com uma programação diversificada, a primeira semana de abril de 2025 promete agradar a todos os públicos, seja nos cinemas ou nas plataformas de streaming. Já prepara a pipoca e aproveita as novidades desse mês de abril.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/B4WAcOJ5bvo?si=6PpJ6K04FkvzGoZ8\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}]	2025-04-07 22:49:49.455	2025-04-08 00:20:21.196	\N	1	1	\N
28	yldxbbtn99ju8g8nzoyhfgcj	Elizabeth Teixeira: A mulher que botou o latifúndio pra corre	Ninguém perguntou sobre Elizabeth Teixeira, mas deveria	Historia	[{"type": "paragraph", "children": [{"text": "Sabe aquela tia do rolê que deixa todo mundo no chinelo? Então, multiplica por mil. Nasceu em 1925, na Paraíba, virou mãe de 11 filhos, enfrentou jagunço, coronel, ditadura, perdeu o marido assassinado por lutar pelos trabalhadores do campo... e ainda aguentou a barra com dignidade. Essa é ", "type": "text"}, {"bold": true, "text": "Elizabeth Teixeira.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Ela e o marido, João Pedro, foram o terror dos latifundiários nos anos 50 e 60. Lideraram as Ligas Camponesas, um movimento que batia de frente com os donos das terras e exigia reforma agrária. A resposta? João Pedro foi morto em 1962. Mas Elizabeth não se acovardou: ", "type": "text"}, {"bold": true, "text": "assumiu a luta e continuou firme.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Durante a ditadura, ela foi perseguida, presa, separada dos filhos e teve que fugir, vivendo escondida por 17 anos sob um nome falso. Os filhos foram espalhados pelo país para sobreviver — assim como ela. Dois deles foram assassinados. Uma tirou a própria vida. ", "type": "text"}, {"bold": true, "text": "Elizabeth perdeu quase tudo, menos a coragem e a esperança.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Ela viveu com medo, mas nunca se calou. Foi presa diversas vezes, tratada como inimiga por lutar por terra, comida e uma vida melhor para os trabalhadores do campo. Mas ela sabia que lutar por dignidade nunca foi crime — e sim um direito.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Nos anos 80, voltou com tudo no documentário *Cabra Marcado Para Morrer* — dirigido por Eduardo Coutinho e disponível no ", "type": "text"}, {"url": "https://www.youtube.com/watch?v=DAPs2Jw6R3k", "type": "link", "children": [{"text": "YouTube", "type": "text"}]}, {"text": " — interpretando a si mesma. Ela não é atriz. Ali é a realidade pura. É o Brasil que sangra e resiste, aquele que não vira cartão-postal.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Hoje, com 100 anos, Elizabeth ainda acredita na reforma agrária. E não é só o discurso que sustenta esse sonho: é muita vivência, muita história, muita cicatriz. Enquanto isso, o campo ainda sofre com a concentração de terras nas mãos de empresários, a violência rural e o total descaso do Estado.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "A luta dela — e de vários semelhantes — ainda não acabou. O nome dela deveria estar nos livros, nos filmes e nas ruas. Mas quase ninguém fala.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}]	2025-04-08 00:13:34.988	2025-04-08 00:20:12.734	2025-04-08 00:20:12.744	1	1	\N
29	p5o3sw4h01js4utgd00fk6pa	ESTREIAS DA SEMANA: O QUE CHEGA NOS CINEMAS E NO STREAMING	Luz, câmera e muita pipoca!	Cinema	[{"type": "paragraph", "children": [{"text": "Prepare-se para uma maratona de filmes e séries que vão agradar a todos os gostos, desde uma adaptação épica de \\"Minecraft\\" até novas temporadas de séries de suspense e drama. Não perca os principais lançamentos da semana e já comece a planejar sua próxima sessão de cinema ou maratona em casa!", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "No cinema", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": " “Um Filme Minecraft” ", "type": "text"}, {"text": "Com estreia no dia 03 de abril: A aguardada adaptação live-action do popular jogo “Minecraft” chega aos cinemas. O filme acompanha quatro amigos transportados para o mundo pixelado de Overworld, onde enfrentam os desafios e as criaturas conhecidas dos gamers. Com a ajuda de um construtor experiente, eles buscam uma forma de retornar para a casa. O elenco conta com Jason Momoa, Jack Black e Emma Mayers. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/EVKYAAES6JQ?si=k9W31dbwtKzS0InR\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“Regras De Amor na Cidade Grande” ", "type": "text"}, {"text": "Esta comédia sul-coreana segue a Jae-hee e Heung-soo, dois estranhos que desenvolveram uma conexão inesperada em meio à agitação de uma metrópole. O filme explora os desafios dos relacionamentos modernos com leveza e humor. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/0Og40WQtPmY?si=gengheyspVwqFLVr\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“Código Alarum” ", "type": "text"}, {"text": "Um thriller de ação que promete manter o público na ponta da cadeira. Detalhes sobre a trama são escassos, aumentando a expectativas dos fãs do gênero. Estreia dia 10 de abril “Operação Vingança” Este filme de ação acompanha a jornada de um agente secreto em busca de justiça após uma traição dentro de sua própria organização. Com sequências de luta coreografadas e uma trama cheia de reviravoltas, promete ser um prato cheio para os fãs de ação.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/u2GCSPwUgR4?si=iaVfw_FBC_p2s7HL\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 3, "children": [{"text": " Plataformas de streaming ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Netflix: ", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“Black Mirror” ", "type": "text"}, {"text": "Temporada 07 estreia em abril, a série antológica retorna com novos episódios explorando impactos da tecnologia na sociedade. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/1iqra1ojEvM?si=JU82_AsfN4cVsCd4\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“You” ", "type": "text"}, {"text": "A série estreia nesse mês de abril mais uma temporada totalizando 5. Joe Goldberg está de volta em mais uma temporada cheia de suspense e reviravoltas.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/fp4i_lRYXrc?si=mYSKtTllQ0n6eR_m\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": " Amazon Prime Vídeo: ", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“G20”", "type": "text"}, {"text": " com estreia no dia 10 de abril, filme de ação estrelado por Viola Davis como a presidente dos EUA enfrentando uma crise durante uma cúpula internacional. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/ZL7R8qyQXrc?si=6qKcVIfGcapXNe_h\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“The Bondsman” ", "type": "text"}, {"text": "Com estreia para o dia 03 de abril, Kevin Bacon interpreta um assassino a serviço do diabo que recebe uma segunda chance na terra. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/rCUH9mBeLhY?si=ViC6lctFAEp4ARkh\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 3, "children": [{"text": "Disney+ ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "“Andor”", "type": "text"}, {"text": " Com a data de estreia da segunda temporada já marcada para o dia 22 de abril, a série ambientada no universo de Star Wars, focada no cassian Andor.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/AE4wxt70aUM?si=JswWwJ_kKgaadpiT\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": " “dying for Sex”", "type": "text"}, {"text": " Com a estreia já nesse dia 04, a série baseada em histórias reais, explorando temas de sexualidade e relacionamentos. Com uma programação diversificada, a primeira semana de abril de 2025 promete agradar a todos os públicos, seja nos cinemas ou nas plataformas de streaming. Já prepara a pipoca e aproveita as novidades desse mês de abril.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "<iframe width=\\"560\\" height=\\"315\\" src=\\"https://www.youtube.com/embed/B4WAcOJ5bvo?si=6PpJ6K04FkvzGoZ8\\" title=\\"YouTube video player\\" frameborder=\\"0\\" allow=\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\" referrerpolicy=\\"strict-origin-when-cross-origin\\" allowfullscreen></iframe>", "type": "text"}]}]	2025-04-07 22:49:49.455	2025-04-08 00:20:21.196	2025-04-08 00:20:21.21	1	1	\N
1	ljjt5kwk53fm1jnl8ffh6dbu	Menstruação: Quebrando Tabus	Tabu da menstruação afeta saúde de mulheres, diz ginecologista	Saude	[{"type": "paragraph", "children": [{"text": "A séculos atrás e nos tempos modernos, o assunto ‘menstruação' é retratado como um tema vergonhoso de se conversar, até mesmo com um profissional da saúde.  Com esse pensamento em mente, muitas meninas e mulheres vivem na ignorância, vivendo com  hábitos considerados perigos para a sua saúde, como, relatado pela ginecologista Maria Clotilde Guimarães, a falta de prevenção de uma possível doença ou a não constatação de uma gravidez inicial. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "A doutora Maria conta que a vergonha de conversar sobre esse tema é mais presente em pacientes mais velhas, acreditando que isso ocorra, provavelmente, pela educação conservadora que essas mulheres tiveram ao decorrer de suas vidas. Por conta dessa falta de orientação na área menstrual, a entrevistada conta que: “Para as meninas, pode levar a não constatar uma gravidez na adolescência (levando a falta de um pré natal adequado, que deve ser feito desde a fase inicial da gestação) e, nas mulheres mais velhas, a dor de uma vida toda com cólicas menstruais (que pode ser devido a uma endometriose, podendo ser tratada desde cedo, evitando as dores e a infertilidade futura.)”. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Outra consequência mencionada na entrevista pela ginecologista é que “as mulheres de hoje têm informações erradas sobre a reposição hormonal na menopausa, principalmente as mais velhas. Por falta de conhecimentos corretos, acham que reposição hormonal causa câncer - o que não é verdade - e sofrem uma vida toda sem tratar corretamente os hormônios na menopausa.”. Por conta de todos esses resultados que a falta de ensinamento quanto ao assunto menstruação, citados ao decorrer dessa matéria, Maria Clotilde direciona um aconselhamento de como lidar, de maneira saudável e sem vergonha alguma desde a infância, com a tão temida menstruação: “As mães conversando e explicando desde cedo como tudo funciona e fazer o acompanhamento desde cedo com um(a) ginecologista, explicando claramente que tudo o que acontece é NORMAL, faz com que, desde cedo, percam a vergonha e o medo de falar o que sentem e pensam.”.", "type": "text"}]}]	2025-04-06 17:26:07.238	2025-04-08 00:20:29.3	\N	1	1	\N
30	ljjt5kwk53fm1jnl8ffh6dbu	Menstruação: Quebrando Tabus	Tabu da menstruação afeta saúde de mulheres, diz ginecologista	Saude	[{"type": "paragraph", "children": [{"text": "A séculos atrás e nos tempos modernos, o assunto ‘menstruação' é retratado como um tema vergonhoso de se conversar, até mesmo com um profissional da saúde.  Com esse pensamento em mente, muitas meninas e mulheres vivem na ignorância, vivendo com  hábitos considerados perigos para a sua saúde, como, relatado pela ginecologista Maria Clotilde Guimarães, a falta de prevenção de uma possível doença ou a não constatação de uma gravidez inicial. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "A doutora Maria conta que a vergonha de conversar sobre esse tema é mais presente em pacientes mais velhas, acreditando que isso ocorra, provavelmente, pela educação conservadora que essas mulheres tiveram ao decorrer de suas vidas. Por conta dessa falta de orientação na área menstrual, a entrevistada conta que: “Para as meninas, pode levar a não constatar uma gravidez na adolescência (levando a falta de um pré natal adequado, que deve ser feito desde a fase inicial da gestação) e, nas mulheres mais velhas, a dor de uma vida toda com cólicas menstruais (que pode ser devido a uma endometriose, podendo ser tratada desde cedo, evitando as dores e a infertilidade futura.)”. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Outra consequência mencionada na entrevista pela ginecologista é que “as mulheres de hoje têm informações erradas sobre a reposição hormonal na menopausa, principalmente as mais velhas. Por falta de conhecimentos corretos, acham que reposição hormonal causa câncer - o que não é verdade - e sofrem uma vida toda sem tratar corretamente os hormônios na menopausa.”. Por conta de todos esses resultados que a falta de ensinamento quanto ao assunto menstruação, citados ao decorrer dessa matéria, Maria Clotilde direciona um aconselhamento de como lidar, de maneira saudável e sem vergonha alguma desde a infância, com a tão temida menstruação: “As mães conversando e explicando desde cedo como tudo funciona e fazer o acompanhamento desde cedo com um(a) ginecologista, explicando claramente que tudo o que acontece é NORMAL, faz com que, desde cedo, percam a vergonha e o medo de falar o que sentem e pensam.”.", "type": "text"}]}]	2025-04-06 17:26:07.238	2025-04-08 00:20:29.3	2025-04-08 00:20:29.312	1	1	\N
31	hrw38i9k0v6yzinv9xybul01	Mundo das Celebridades: Os Principais Acontecimentos do Final de Março e Início de Abril de 2025	Famosos em destaque: os momentos quentes do fim de março e início de abril	Celebridade	[{"type": "paragraph", "children": [{"text": "A transição entre março e abril de 2025 foi marcada por uma série de acontecimentos que movimentaram o universo das celebridades. De revelações impactantes a apresentações memoráveis, o início do mês trouxe momentos que ficaram registrados nas redes sociais e nas capas dos tabloides. Confira os destaques que agitaram o cenário pop e as novidades mais quentes do momento!", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Tata Werneck Recusa Convite para o Remake de \\"Vale Tudo\\"", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "A atriz Tata Werneck, sempre em alta, fez um anúncio que pegou muitos fãs de surpresa. Ela revelou, em uma publicação sincera nas redes sociais, que foi convidada para integrar o elenco do remake da icônica novela “Vale Tudo”. Contudo, devido a compromissos profissionais já firmados, Tata não pôde aceitar o convite. A atriz, com sua típica simpatia, fez questão de elogiar o elenco da produção e desejou sucesso à equipe. Mesmo fora dessa trama, Tata segue conquistando os holofotes com seus projetos e sua presença carismática no universo das celebridades.", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Lollapalooza 2025: O Festival que Reuniu Estrelas no Brasil", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "O festival Lollapalooza 2025, que aconteceu em São Paulo, foi um dos maiores eventos do mês de março e agitou o público com apresentações eletrizantes e a presença de grandes nomes da música internacional. Entre os momentos mais memoráveis, destaca-se a participação surpresa de Shawn Mendes, que, em uma mistura inusitada de ritmos, arriscou um samba no palco principal, ao lado de músicos brasileiros. Além dele, Alanis Morissette fez uma homenagem aos 30 anos de seu álbum clássico, enquanto Pabllo Vittar brilhou ao fazer uma participação especial no show de Marina Lima. O evento, que reuniu estrelas internacionais e locais, consolidou mais uma edição histórica do Lollapalooza no Brasil.", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Anitta: Cancela Show no Coachella e Celebra Ano Novo no Início de Áries", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "A estrela do pop brasileiro, Anitta, causou surpresa ao anunciar o cancelamento de sua apresentação no Coachella 2025, prevista para abril. Embora os motivos do cancelamento ainda sejam privados, a cantora expressou sua gratidão ao festival pela oportunidade e pelo apoio. Em uma publicação enigmática nas redes sociais, Anitta compartilhou momentos celebrando o Ano Novo no primeiro dia de Áries, explicando que o ritual de equinócio simbolizava o novo ciclo de renovação e reflexão. Como sempre, a artista mantém sua aura misteriosa e nos deixa curiosos sobre seus próximos passos.", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Celebridades Mais Ricas do Mundo Segundo a Forbes", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Em um panorama mais financeiro, a Forbes revelou sua lista anual dos bilionários, destacando as celebridades que souberam capitalizar sua fama e transformar seus nomes em impérios. Entre os destaques da lista estão figuras como Kim Kardashian, Jay-Z, Taylor Swift, Michael Jordan e Arnold Schwarzenegger, que conseguiram expandir suas carreiras além da música e do cinema, investindo em negócios milionários. Estes nomes comprovam que, além do talento, o espírito empreendedor também é fundamental para alcançar o sucesso duradouro no mundo das celebridades.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "O mês de março e o início de abril de 2025 marcaram um período de grandes movimentações no universo dos famosos, com notícias que foram de surpresas pessoais a grandes apresentações no palco. O mundo das celebridades, sempre dinâmico, continua a nos oferecer histórias, performances e revelações que nos mantêm ansiosos por mais. Fiquem atentos, porque a temporada promete ainda mais capítulos inesquecíveis!", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}]	2025-04-06 17:35:02.985	2025-04-08 00:20:39.279	2025-04-08 00:20:39.29	1	1	\N
32	rcxiigb4ffh9tszhk4y6jcxm	TBT do Mundo Pop: Três momentos que marcaram a cultura pop	3 momentos marcantes da cultura pop que fizeram história	Pop	[{"type": "paragraph", "children": [{"text": "Toda semana, o mundo do entretenimento entrega momentos icônicos que ficam na memória dos fãs. Mas alguns deles transcendem o tempo e se tornam verdadeiros marcos na cultura pop. No TBT do Mundo Pop de hoje, relembramos três acontecimentos que movimentaram a música: a rixa entre Mariah Carey e Eminem, o impacto de “Oops!… I Did It Again”, de Britney Spears, e a canção que transformou Vanessa da Mata em um nome internacional.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Mariah Carey x Eminem: quando o shade virou hit", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "No início dos anos 2000, o rapper Eminem alegou em entrevistas e músicas que teve um breve relacionamento com Mariah Carey—algo que a cantora sempre negou. O conflito escalou quando Eminem começou a fazer piadas sobre ela em suas músicas. A resposta de Mariah veio em 2009, com a faixa “Obsessed”, um verdadeiro hino do deboche.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "No clipe, Mariah se veste como um homem, imitando Eminem, e ironiza a obsessão do rapper por ela. A música se tornou um sucesso instantâneo e, até hoje, é usada nas redes sociais sempre que alguém quer mandar um “shade” sutil. Eminem, por sua vez, respondeu com a música “The Warning”, onde usou trechos de supostos áudios de Mariah. O embate nunca teve um desfecho definitivo, mas “Obsessed” segue sendo um clássico do pop e um dos maiores diss tracks indiretos da história da música.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Britney Spears e o icônico “Oops!… I Did It Again”", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Em abril de 2000, Britney Spears lançou um dos videoclipes mais icônicos do pop: “Oops!… I Did It Again”. A faixa consolidou Britney como a maior estrela pop da época e trouxe elementos que marcaram a cultura pop para sempre.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "O clipe futurista, ambientado em Marte, ficou famoso pelo macacão vermelho de látex e pela referência ao filme “Titanic” —quando um astronauta entrega a Britney um colar e recria uma das cenas mais clássicas do cinema. A música se tornou um hino da década de 2000, estreando direto no Top 10 da Billboard e ajudando Britney a vender mais de 1,3 milhão de cópias na primeira semana do álbum, um recorde para uma artista feminina na época.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Mais de duas décadas depois, “Oops!… I Did It Again” segue sendo um dos clipes mais lembrados da história do pop, sendo frequentemente homenageado e recriado em shows e performances.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"bold": true, "text": "Vanessa da Mata e a música que conquistou o mundo", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "No Brasil, poucos artistas conseguiram fazer a transição para o mercado internacional com tanta força quanto Vanessa da Mata. Em 2007, a cantora lançou “Boa Sorte/Good Luck”, em parceria com o americano Ben Harper. A música se tornou um fenômeno, tocando nas rádios de diversos países e mostrando que o português também pode emocionar o público global.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "A faixa, que mistura versos em inglês e português, fala sobre um relacionamento que está no limite, trazendo uma melodia melancólica e uma interpretação intensa dos dois artistas. O sucesso foi tão grande que ajudou Vanessa a se consolidar no Brasil e a abrir portas para outros artistas brasileiros em colaborações internacionais.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Mesmo mais de 15 anos depois, “Boa Sorte/Good Luck” continua sendo uma das músicas brasileiras mais conhecidas fora do país, e ainda emociona quem a escuta.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "E assim termina o nosso TBT do mundo pop de hoje, relembrando três momentos inesquecíveis que marcaram a cultura pop e continuam a ecoar na memória dos fãs. Este é o nosso primeiro \\"TBT do Mundo Pop\\" da edição Ninguém Liga, mas queremos saber: quais outros acontecimentos icônicos do mundo pop você gostaria de reviver nas próximas edições? Deixe suas sugestões nos comentários e fique ligado para mais memórias e histórias que definiram a música, o entretenimento e a cultura pop! Até a próxima!", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": " ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}]	2025-04-06 17:33:30.926	2025-04-08 00:20:46.919	2025-04-08 00:20:46.937	1	1	\N



--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.authors (id, document_id, name, email, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	r96qhr47s0cvasyf7h6a28ov	Paulo Abdiel	abdielpaulo2@gmail.com	2025-04-06 17:25:33.891	2025-04-06 17:25:33.891	2025-04-06 17:25:33.88	1	1	\N
2	e6lrhbhaxx4hqqs5gsheuery	Ingrid Thauane Santos Oliveira	ingridthauane194@gmail.com	2025-04-08 00:14:35.442	2025-04-08 00:14:35.442	2025-04-08 00:14:35.434	1	1	\N
3	xrapvx325pra38w453lzcktg	Isabela de Moura Costa 	isamoura07032006@gmail.com 	2025-04-08 00:15:17.145	2025-04-08 00:15:17.145	2025-04-08 00:15:17.138	1	1	\N
4	srrw1enq59yx2g214bafbc3j	Raquel Soares Miguel de Azevedo 	kekelzinhaazevedo@gmail.com	2025-04-08 00:15:53.292	2025-04-08 00:15:53.292	2025-04-08 00:15:53.286	1	1	\N
5	t4wo6ngiq7ar2wuc7rw69qpp	Matheus Borges Ribeiro	razziacademico@gmail.com	2025-04-08 00:16:48.119	2025-04-08 00:16:48.119	2025-04-08 00:16:48.115	1	1	\N



--
-- Data for Name: authors_news_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.authors_news_lnk (id, author_id, article_id, author_ord) FROM stdin;
9	2	19	1
11	3	1	1
13	4	1	2
21	5	6	1
26	2	28	1
27	3	30	1
28	4	30	2
29	5	31	1



--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.categories (id, document_id, name, slug, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	bg8e0yuc7q4scmejslwzidmg	Mulheres	mulher	\N	2025-04-06 17:24:37.156	2025-04-06 17:24:37.156	2025-04-06 17:24:37.14	1	1	\N
2	uguflcv5697gc9rpf7hcuvr2	Cultura pop	pop	\N	2025-04-06 17:24:56.691	2025-04-06 17:24:56.691	2025-04-06 17:24:56.682	1	1	\N



--
-- Data for Name: categories_news_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.categories_news_lnk (id, category_id, article_id, category_ord) FROM stdin;
11	1	1	1
13	2	6	1
18	1	30	1
19	2	31	1



--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.comments (id, document_id, comment, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;



--
-- Data for Name: comments_author_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.comments_author_lnk (id, comment_id, author_id, comment_ord) FROM stdin;



--
-- Data for Name: comments_news_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.comments_news_lnk (id, comment_id, article_id, article_ord, comment_ord) FROM stdin;



--
-- Data for Name: components_shared_media; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.components_shared_media (id) FROM stdin;



--
-- Data for Name: components_shared_quotes; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.components_shared_quotes (id, title, body) FROM stdin;



--
-- Data for Name: components_shared_rich_texts; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.components_shared_rich_texts (id, body) FROM stdin;



--
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.components_shared_seos (id, meta_title, meta_description) FROM stdin;



--
-- Data for Name: components_shared_sliders; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.components_shared_sliders (id) FROM stdin;



--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	q9c3kl9lsduzr0cbeow54a5z	Design sem nome.jpg	\N	\N	1080	1080	{"large": {"ext": ".jpg", "url": "/uploads/large_Design_sem_nome_0a24d4500a.jpg", "hash": "large_Design_sem_nome_0a24d4500a", "mime": "image/jpeg", "name": "large_Design sem nome.jpg", "path": null, "size": 66.57, "width": 1000, "height": 1000, "sizeInBytes": 66566}, "small": {"ext": ".jpg", "url": "/uploads/small_Design_sem_nome_0a24d4500a.jpg", "hash": "small_Design_sem_nome_0a24d4500a", "mime": "image/jpeg", "name": "small_Design sem nome.jpg", "path": null, "size": 24.66, "width": 500, "height": 500, "sizeInBytes": 24658}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Design_sem_nome_0a24d4500a.jpg", "hash": "medium_Design_sem_nome_0a24d4500a", "mime": "image/jpeg", "name": "medium_Design sem nome.jpg", "path": null, "size": 44.16, "width": 750, "height": 750, "sizeInBytes": 44162}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Design_sem_nome_0a24d4500a.jpg", "hash": "thumbnail_Design_sem_nome_0a24d4500a", "mime": "image/jpeg", "name": "thumbnail_Design sem nome.jpg", "path": null, "size": 4, "width": 156, "height": 156, "sizeInBytes": 4004}}	Design_sem_nome_0a24d4500a	.jpg	image/jpeg	72.65	/uploads/Design_sem_nome_0a24d4500a.jpg	\N	local	\N	/	2025-04-06 17:25:29.46	2025-04-06 17:25:29.46	2025-04-06 17:25:29.46	1	1	\N
2	bjgjaecs95e71ysv4504qy2j	ChatGPT Image 7 de abr. de 2025, 20_58_05.png	\N	\N	1536	1024	{"large": {"ext": ".png", "url": "/uploads/large_Chat_GPT_Image_7_de_abr_de_2025_20_58_05_ceb8f0f128.png", "hash": "large_Chat_GPT_Image_7_de_abr_de_2025_20_58_05_ceb8f0f128", "mime": "image/png", "name": "large_ChatGPT Image 7 de abr. de 2025, 20_58_05.png", "path": null, "size": 821.5, "width": 1000, "height": 667, "sizeInBytes": 821503}, "small": {"ext": ".png", "url": "/uploads/small_Chat_GPT_Image_7_de_abr_de_2025_20_58_05_ceb8f0f128.png", "hash": "small_Chat_GPT_Image_7_de_abr_de_2025_20_58_05_ceb8f0f128", "mime": "image/png", "name": "small_ChatGPT Image 7 de abr. de 2025, 20_58_05.png", "path": null, "size": 186.78, "width": 500, "height": 333, "sizeInBytes": 186782}, "medium": {"ext": ".png", "url": "/uploads/medium_Chat_GPT_Image_7_de_abr_de_2025_20_58_05_ceb8f0f128.png", "hash": "medium_Chat_GPT_Image_7_de_abr_de_2025_20_58_05_ceb8f0f128", "mime": "image/png", "name": "medium_ChatGPT Image 7 de abr. de 2025, 20_58_05.png", "path": null, "size": 436.44, "width": 750, "height": 500, "sizeInBytes": 436436}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Chat_GPT_Image_7_de_abr_de_2025_20_58_05_ceb8f0f128.png", "hash": "thumbnail_Chat_GPT_Image_7_de_abr_de_2025_20_58_05_ceb8f0f128", "mime": "image/png", "name": "thumbnail_ChatGPT Image 7 de abr. de 2025, 20_58_05.png", "path": null, "size": 47.81, "width": 234, "height": 156, "sizeInBytes": 47808}}	Chat_GPT_Image_7_de_abr_de_2025_20_58_05_ceb8f0f128	.png	image/png	627.70	/uploads/Chat_GPT_Image_7_de_abr_de_2025_20_58_05_ceb8f0f128.png	\N	local	\N	/	2025-04-07 20:58:40.951	2025-04-07 20:58:40.951	2025-04-07 20:58:40.952	1	1	\N
4	xvri2gnwero11aseykr0xwtj	WhatsApp Image 2025-04-07 at 22.33.46.jpeg	\N	\N	1536	1024	{"large": {"ext": ".jpeg", "url": "/uploads/large_Whats_App_Image_2025_04_07_at_22_33_46_45253a0110.jpeg", "hash": "large_Whats_App_Image_2025_04_07_at_22_33_46_45253a0110", "mime": "image/jpeg", "name": "large_WhatsApp Image 2025-04-07 at 22.33.46.jpeg", "path": null, "size": 54.92, "width": 1000, "height": 667, "sizeInBytes": 54924}, "small": {"ext": ".jpeg", "url": "/uploads/small_Whats_App_Image_2025_04_07_at_22_33_46_45253a0110.jpeg", "hash": "small_Whats_App_Image_2025_04_07_at_22_33_46_45253a0110", "mime": "image/jpeg", "name": "small_WhatsApp Image 2025-04-07 at 22.33.46.jpeg", "path": null, "size": 21.18, "width": 500, "height": 333, "sizeInBytes": 21176}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_Whats_App_Image_2025_04_07_at_22_33_46_45253a0110.jpeg", "hash": "medium_Whats_App_Image_2025_04_07_at_22_33_46_45253a0110", "mime": "image/jpeg", "name": "medium_WhatsApp Image 2025-04-07 at 22.33.46.jpeg", "path": null, "size": 36.11, "width": 750, "height": 500, "sizeInBytes": 36114}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_Whats_App_Image_2025_04_07_at_22_33_46_45253a0110.jpeg", "hash": "thumbnail_Whats_App_Image_2025_04_07_at_22_33_46_45253a0110", "mime": "image/jpeg", "name": "thumbnail_WhatsApp Image 2025-04-07 at 22.33.46.jpeg", "path": null, "size": 7.54, "width": 234, "height": 156, "sizeInBytes": 7541}}	Whats_App_Image_2025_04_07_at_22_33_46_45253a0110	.jpeg	image/jpeg	110.95	/uploads/Whats_App_Image_2025_04_07_at_22_33_46_45253a0110.jpeg	\N	local	\N	/	2025-04-07 23:46:48.871	2025-04-07 23:46:48.871	2025-04-07 23:46:48.872	1	1	\N
5	pmfar40j2tgfg5urbq9pa66y	WhatsApp Image 2025-04-07 at 22.13.04.jpeg	\N	\N	1536	1024	{"large": {"ext": ".jpeg", "url": "/uploads/large_Whats_App_Image_2025_04_07_at_22_13_04_3d2b62dc5b.jpeg", "hash": "large_Whats_App_Image_2025_04_07_at_22_13_04_3d2b62dc5b", "mime": "image/jpeg", "name": "large_WhatsApp Image 2025-04-07 at 22.13.04.jpeg", "path": null, "size": 33.81, "width": 1000, "height": 667, "sizeInBytes": 33807}, "small": {"ext": ".jpeg", "url": "/uploads/small_Whats_App_Image_2025_04_07_at_22_13_04_3d2b62dc5b.jpeg", "hash": "small_Whats_App_Image_2025_04_07_at_22_13_04_3d2b62dc5b", "mime": "image/jpeg", "name": "small_WhatsApp Image 2025-04-07 at 22.13.04.jpeg", "path": null, "size": 11.68, "width": 500, "height": 333, "sizeInBytes": 11679}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_Whats_App_Image_2025_04_07_at_22_13_04_3d2b62dc5b.jpeg", "hash": "medium_Whats_App_Image_2025_04_07_at_22_13_04_3d2b62dc5b", "mime": "image/jpeg", "name": "medium_WhatsApp Image 2025-04-07 at 22.13.04.jpeg", "path": null, "size": 21.09, "width": 750, "height": 500, "sizeInBytes": 21092}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_Whats_App_Image_2025_04_07_at_22_13_04_3d2b62dc5b.jpeg", "hash": "thumbnail_Whats_App_Image_2025_04_07_at_22_13_04_3d2b62dc5b", "mime": "image/jpeg", "name": "thumbnail_WhatsApp Image 2025-04-07 at 22.13.04.jpeg", "path": null, "size": 4.08, "width": 234, "height": 156, "sizeInBytes": 4075}}	Whats_App_Image_2025_04_07_at_22_13_04_3d2b62dc5b	.jpeg	image/jpeg	68.40	/uploads/Whats_App_Image_2025_04_07_at_22_13_04_3d2b62dc5b.jpeg	\N	local	\N	/	2025-04-07 23:47:55.751	2025-04-07 23:47:55.751	2025-04-07 23:47:55.751	1	1	\N
3	e53xdp3c80t4yw7y15jbj2jl	WhatsApp Image 2025-04-07 at 22.25.38.jpeg	\N	\N	1536	1024	{"large": {"ext": ".jpeg", "url": "/uploads/large_Whats_App_Image_2025_04_07_at_22_25_38_8f98ede914.jpeg", "hash": "large_Whats_App_Image_2025_04_07_at_22_25_38_8f98ede914", "mime": "image/jpeg", "name": "large_WhatsApp Image 2025-04-07 at 22.25.38.jpeg", "path": null, "size": 68.48, "width": 1000, "height": 667, "sizeInBytes": 68483}, "small": {"ext": ".jpeg", "url": "/uploads/small_Whats_App_Image_2025_04_07_at_22_25_38_8f98ede914.jpeg", "hash": "small_Whats_App_Image_2025_04_07_at_22_25_38_8f98ede914", "mime": "image/jpeg", "name": "small_WhatsApp Image 2025-04-07 at 22.25.38.jpeg", "path": null, "size": 25.31, "width": 500, "height": 333, "sizeInBytes": 25307}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_Whats_App_Image_2025_04_07_at_22_25_38_8f98ede914.jpeg", "hash": "medium_Whats_App_Image_2025_04_07_at_22_25_38_8f98ede914", "mime": "image/jpeg", "name": "medium_WhatsApp Image 2025-04-07 at 22.25.38.jpeg", "path": null, "size": 44.78, "width": 750, "height": 500, "sizeInBytes": 44782}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_Whats_App_Image_2025_04_07_at_22_25_38_8f98ede914.jpeg", "hash": "thumbnail_Whats_App_Image_2025_04_07_at_22_25_38_8f98ede914", "mime": "image/jpeg", "name": "thumbnail_WhatsApp Image 2025-04-07 at 22.25.38.jpeg", "path": null, "size": 8.76, "width": 234, "height": 156, "sizeInBytes": 8759}}	Whats_App_Image_2025_04_07_at_22_25_38_8f98ede914	.jpeg	image/jpeg	130.88	/uploads/Whats_App_Image_2025_04_07_at_22_25_38_8f98ede914.jpeg	\N	local	\N	/	2025-04-07 22:50:20.126	2025-04-07 23:48:17.676	2025-04-07 22:50:20.126	1	1	\N
6	zuqcdpe535hmrinp2aghcooh	WhatsApp Image 2025-04-07 at 21.45.52 (1).jpeg	\N	\N	1536	1024	{"large": {"ext": ".jpeg", "url": "/uploads/large_Whats_App_Image_2025_04_07_at_21_45_52_1_9289ef7219.jpeg", "hash": "large_Whats_App_Image_2025_04_07_at_21_45_52_1_9289ef7219", "mime": "image/jpeg", "name": "large_WhatsApp Image 2025-04-07 at 21.45.52 (1).jpeg", "path": null, "size": 131.8, "width": 1000, "height": 667, "sizeInBytes": 131801}, "small": {"ext": ".jpeg", "url": "/uploads/small_Whats_App_Image_2025_04_07_at_21_45_52_1_9289ef7219.jpeg", "hash": "small_Whats_App_Image_2025_04_07_at_21_45_52_1_9289ef7219", "mime": "image/jpeg", "name": "small_WhatsApp Image 2025-04-07 at 21.45.52 (1).jpeg", "path": null, "size": 37.31, "width": 500, "height": 333, "sizeInBytes": 37307}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_Whats_App_Image_2025_04_07_at_21_45_52_1_9289ef7219.jpeg", "hash": "medium_Whats_App_Image_2025_04_07_at_21_45_52_1_9289ef7219", "mime": "image/jpeg", "name": "medium_WhatsApp Image 2025-04-07 at 21.45.52 (1).jpeg", "path": null, "size": 77.26, "width": 750, "height": 500, "sizeInBytes": 77255}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_Whats_App_Image_2025_04_07_at_21_45_52_1_9289ef7219.jpeg", "hash": "thumbnail_Whats_App_Image_2025_04_07_at_21_45_52_1_9289ef7219", "mime": "image/jpeg", "name": "thumbnail_WhatsApp Image 2025-04-07 at 21.45.52 (1).jpeg", "path": null, "size": 10.25, "width": 234, "height": 156, "sizeInBytes": 10246}}	Whats_App_Image_2025_04_07_at_21_45_52_1_9289ef7219	.jpeg	image/jpeg	301.43	/uploads/Whats_App_Image_2025_04_07_at_21_45_52_1_9289ef7219.jpeg	\N	local	\N	/	2025-04-08 00:13:16.32	2025-04-08 00:13:16.32	2025-04-08 00:13:16.321	1	1	\N



--
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;



--
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
1	1	1	api::author.author	avatar	1
34	6	19	api::article.article	cover	1
35	6	28	api::article.article	cover	1
36	5	10	api::article.article	cover	1
37	5	29	api::article.article	cover	1
38	2	1	api::article.article	cover	1
39	2	30	api::article.article	cover	1
40	4	6	api::article.article	cover	1
41	4	31	api::article.article	cover	1
42	3	4	api::article.article	cover	1
43	3	32	api::article.article	cover	1



--
-- Data for Name: globals; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.globals (id, document_id, site_name, site_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;



--
-- Data for Name: globals_cmps; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.globals_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;



--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	m1horpks0kosdyitrthxd3f6	English (en)	en	2025-04-06 17:19:46.449	2025-04-06 17:19:46.449	2025-04-06 17:19:46.45	\N	\N	\N



--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;



--
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;



--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	jdhy132alidflyh0oja3ey28	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	cb690ad3ddae5de1fdfbbbd1f4aeaa609d14078a34cdc190225de0a5657d48c7bc15eb940b9d1a534d0077ce94504b41aaeb7df97ea8a781482f91717d82f6d5	\N	\N	\N	2025-04-06 17:19:49.076	2025-04-06 17:19:49.076	2025-04-06 17:19:49.077	\N	\N	\N
2	ffbvi3zmyqgo5hien1w1p0pq	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	1c30bd6f101cde33db3bff66bee5a5790f8e31ad701f120fd2804a3b1d51c8149db9e7f0134bf9b8015d75302bfdbc98c9fbb9c1cbefe33165133f4ff36658f6	\N	\N	\N	2025-04-06 17:19:49.09	2025-04-06 17:19:49.09	2025-04-06 17:19:49.09	\N	\N	\N



--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
7	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::api::article.article	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"cover":{"edit":{"label":"cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"comments":{"edit":{"label":"comments","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"comments","searchable":false,"sortable":false}},"categories":{"edit":{"label":"categories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"categories","searchable":false,"sortable":false}},"authors":{"edit":{"label":"authors","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"authors","searchable":false,"sortable":false}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","slug"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"slug","size":6},{"name":"cover","size":6}],[{"name":"comments","size":6},{"name":"categories","size":6}],[{"name":"authors","size":6}],[{"name":"content","size":12}]]},"uid":"api::article.article"}	object	\N	\N
4	plugin_content_manager_configuration_components::shared.rich-text	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"body","size":12}]]},"uid":"shared.rich-text","isComponent":true}	object	\N	\N
5	plugin_content_manager_configuration_components::shared.quote	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","body"],"edit":[[{"name":"title","size":6},{"name":"body","size":6}]]},"uid":"shared.quote","isComponent":true}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
21	plugin_content_manager_configuration_content_types::api::comment.comment	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"news":{"edit":{"label":"news","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"news","searchable":false,"sortable":false}},"author":{"edit":{"label":"author","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"author","searchable":true,"sortable":true}},"comment":{"edit":{"label":"comment","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"comment","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","news","author","comment"],"edit":[[{"name":"news","size":6},{"name":"author","size":6}],[{"name":"comment","size":6}]]},"uid":"api::comment.comment"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::api::tag.tag	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","createdAt"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}]]},"uid":"api::tag.tag"}	object	\N	\N
29	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
34	plugin_i18n_default_locale	"en"	string	\N	\N
35	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
36	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
37	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::api::category.category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"news":{"edit":{"label":"news","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"news","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","description"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"description","size":6},{"name":"news","size":6}]]},"uid":"api::category.category"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
24	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
25	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
31	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
32	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
33	plugin_upload_metrics	{"weeklySchedule":"1 20 17 * * 0","lastWeeklyUpdate":1743970801045}	object	\N	\N
16	plugin_content_manager_configuration_content_types::api::about.about	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","createdAt","updatedAt"],"edit":[[{"name":"title","size":6}],[{"name":"blocks","size":12}]]},"uid":"api::about.about"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
28	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
19	plugin_content_manager_configuration_content_types::api::author.author	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"avatar":{"edit":{"label":"avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"avatar","searchable":false,"sortable":false}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"comments":{"edit":{"label":"comments","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"comments","searchable":false,"sortable":false}},"news":{"edit":{"label":"news","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"news","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","avatar","email"],"edit":[[{"name":"name","size":6},{"name":"avatar","size":6}],[{"name":"email","size":6},{"name":"comments","size":6}],[{"name":"news","size":6}]]},"uid":"api::author.author"}	object	\N	\N
30	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
22	plugin_content_manager_configuration_content_types::api::global.global	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"siteName","defaultSortBy":"siteName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"siteName":{"edit":{"label":"siteName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteName","searchable":true,"sortable":true}},"favicon":{"edit":{"label":"favicon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"favicon","searchable":false,"sortable":false}},"siteDescription":{"edit":{"label":"siteDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteDescription","searchable":true,"sortable":true}},"defaultSeo":{"edit":{"label":"defaultSeo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"defaultSeo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","siteName","favicon","siteDescription"],"edit":[[{"name":"siteName","size":6},{"name":"favicon","size":6}],[{"name":"siteDescription","size":6}],[{"name":"defaultSeo","size":12}]]},"uid":"api::global.global"}	object	\N	\N
27	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
2	plugin_content_manager_configuration_components::shared.slider	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"files","searchable":false,"sortable":false}}},"layouts":{"list":["id","files"],"edit":[[{"name":"files","size":6}]]},"uid":"shared.slider","isComponent":true}	object	\N	\N
3	plugin_content_manager_configuration_components::shared.seo	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"shareImage":{"edit":{"label":"shareImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shareImage","searchable":false,"sortable":false}}},"layouts":{"list":["id","metaTitle","metaDescription","shareImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"shareImage","size":6}]]},"uid":"shared.seo","isComponent":true}	object	\N	\N
6	plugin_content_manager_configuration_components::shared.media	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"file":{"edit":{"label":"file","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"file","searchable":false,"sortable":false}}},"layouts":{"list":["id","file"],"edit":[[{"name":"file","size":6}]]},"uid":"shared.media","isComponent":true}	object	\N	\N
1	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::about.about":{"kind":"singleType","collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::about.about","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"abouts"}}},"apiName":"about","globalId":"About","uid":"api::about.about","modelType":"contentType","__schema__":{"collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]}},"kind":"singleType"},"modelName":"about","actions":{},"lifecycles":{}},"api::article.article":{"kind":"collectionType","collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"News","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"comments":{"type":"relation","relation":"manyToMany","target":"api::comment.comment","mappedBy":"news"},"categories":{"type":"relation","relation":"oneToMany","target":"api::category.category","mappedBy":"news"},"authors":{"type":"relation","relation":"oneToMany","target":"api::author.author","mappedBy":"news"},"content":{"type":"blocks"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::article.article","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"articles"}}},"apiName":"article","globalId":"Article","uid":"api::article.article","modelType":"contentType","__schema__":{"collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"News","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"comments":{"type":"relation","relation":"manyToMany","target":"api::comment.comment","mappedBy":"news"},"categories":{"type":"relation","relation":"oneToMany","target":"api::category.category","mappedBy":"news"},"authors":{"type":"relation","relation":"oneToMany","target":"api::author.author","mappedBy":"news"},"content":{"type":"blocks"}},"kind":"collectionType"},"modelName":"article","actions":{},"lifecycles":{}},"api::author.author":{"kind":"collectionType","collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"comments":{"type":"relation","relation":"oneToMany","target":"api::comment.comment","mappedBy":"author"},"news":{"type":"relation","relation":"manyToOne","target":"api::article.article","inversedBy":"authors"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::author.author","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"authors"}}},"apiName":"author","globalId":"Author","uid":"api::author.author","modelType":"contentType","__schema__":{"collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"comments":{"type":"relation","relation":"oneToMany","target":"api::comment.comment","mappedBy":"author"},"news":{"type":"relation","relation":"manyToOne","target":"api::article.article","inversedBy":"authors"}},"kind":"collectionType"},"modelName":"author","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"description":{"type":"text"},"news":{"type":"relation","relation":"manyToOne","target":"api::article.article","inversedBy":"categories"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::category.category","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"categories"}}},"apiName":"category","globalId":"Category","uid":"api::category.category","modelType":"contentType","__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"description":{"type":"text"},"news":{"type":"relation","relation":"manyToOne","target":"api::article.article","inversedBy":"categories"}},"kind":"collectionType"},"modelName":"category","actions":{},"lifecycles":{}},"api::comment.comment":{"kind":"collectionType","collectionName":"comments","info":{"singularName":"comment","pluralName":"comments","displayName":"Comments","description":""},"options":{"draftAndPublish":true},"attributes":{"news":{"type":"relation","relation":"manyToMany","target":"api::article.article","inversedBy":"comments"},"author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"comments"},"comment":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::comment.comment","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"comments"}}},"apiName":"comment","globalId":"Comment","uid":"api::comment.comment","modelType":"contentType","__schema__":{"collectionName":"comments","info":{"singularName":"comment","pluralName":"comments","displayName":"Comments","description":""},"options":{"draftAndPublish":true},"attributes":{"news":{"type":"relation","relation":"manyToMany","target":"api::article.article","inversedBy":"comments"},"author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"comments"},"comment":{"type":"text"}},"kind":"collectionType"},"modelName":"comment","actions":{},"lifecycles":{}},"api::global.global":{"kind":"singleType","collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::global.global","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"globals"}}},"apiName":"global","globalId":"Global","uid":"api::global.global","modelType":"contentType","__schema__":{"collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"global","actions":{},"lifecycles":{}},"api::tag.tag":{"kind":"collectionType","collectionName":"tags","info":{"singularName":"tag","pluralName":"tags","displayName":"Tags","description":""},"options":{"draftAndPublish":true},"attributes":{"name":{"type":"string"},"description":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::tag.tag","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"tags"}}},"apiName":"tag","globalId":"Tag","uid":"api::tag.tag","modelType":"contentType","__schema__":{"collectionName":"tags","info":{"singularName":"tag","pluralName":"tags","displayName":"Tags","description":""},"options":{"draftAndPublish":true},"attributes":{"name":{"type":"string"},"description":{"type":"text"}},"kind":"collectionType"},"modelName":"tag","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"}}	object	\N	\N
38	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N



--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
1	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"abouts_cmps","indexes":[{"name":"abouts_field_idx","columns":["field"]},{"name":"abouts_component_type_idx","columns":["component_type"]},{"name":"abouts_entity_fk","columns":["entity_id"]},{"name":"abouts_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"abouts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"abouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"abouts","indexes":[{"name":"abouts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"abouts_created_by_id_fk","columns":["created_by_id"]},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"abouts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"articles","indexes":[{"name":"articles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"articles_created_by_id_fk","columns":["created_by_id"]},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"authors","indexes":[{"name":"authors_documents_idx","columns":["document_id","locale","published_at"]},{"name":"authors_created_by_id_fk","columns":["created_by_id"]},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"authors_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"categories","indexes":[{"name":"categories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"comments","indexes":[{"name":"comments_documents_idx","columns":["document_id","locale","published_at"]},{"name":"comments_created_by_id_fk","columns":["created_by_id"]},{"name":"comments_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"comments_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"comments_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"comment","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"globals_cmps","indexes":[{"name":"globals_field_idx","columns":["field"]},{"name":"globals_component_type_idx","columns":["component_type"]},{"name":"globals_entity_fk","columns":["entity_id"]},{"name":"globals_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"globals_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"globals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"globals","indexes":[{"name":"globals_documents_idx","columns":["document_id","locale","published_at"]},{"name":"globals_created_by_id_fk","columns":["created_by_id"]},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"globals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"tags","indexes":[{"name":"tags_documents_idx","columns":["document_id","locale","published_at"]},{"name":"tags_created_by_id_fk","columns":["created_by_id"]},{"name":"tags_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"tags_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"tags_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_sliders","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_rich_texts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_quotes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_media","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"authors_news_lnk","indexes":[{"name":"authors_news_lnk_fk","columns":["author_id"]},{"name":"authors_news_lnk_ifk","columns":["article_id"]},{"name":"authors_news_lnk_uq","columns":["author_id","article_id"],"type":"unique"},{"name":"authors_news_lnk_oifk","columns":["author_ord"]}],"foreignKeys":[{"name":"authors_news_lnk_fk","columns":["author_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"},{"name":"authors_news_lnk_ifk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"author_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"author_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"categories_news_lnk","indexes":[{"name":"categories_news_lnk_fk","columns":["category_id"]},{"name":"categories_news_lnk_ifk","columns":["article_id"]},{"name":"categories_news_lnk_uq","columns":["category_id","article_id"],"type":"unique"},{"name":"categories_news_lnk_oifk","columns":["category_ord"]}],"foreignKeys":[{"name":"categories_news_lnk_fk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"},{"name":"categories_news_lnk_ifk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"comments_news_lnk","indexes":[{"name":"comments_news_lnk_fk","columns":["comment_id"]},{"name":"comments_news_lnk_ifk","columns":["article_id"]},{"name":"comments_news_lnk_uq","columns":["comment_id","article_id"],"type":"unique"},{"name":"comments_news_lnk_ofk","columns":["article_ord"]},{"name":"comments_news_lnk_oifk","columns":["comment_ord"]}],"foreignKeys":[{"name":"comments_news_lnk_fk","columns":["comment_id"],"referencedColumns":["id"],"referencedTable":"comments","onDelete":"CASCADE"},{"name":"comments_news_lnk_ifk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"comment_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"comment_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"comments_author_lnk","indexes":[{"name":"comments_author_lnk_fk","columns":["comment_id"]},{"name":"comments_author_lnk_ifk","columns":["author_id"]},{"name":"comments_author_lnk_uq","columns":["comment_id","author_id"],"type":"unique"},{"name":"comments_author_lnk_oifk","columns":["comment_ord"]}],"foreignKeys":[{"name":"comments_author_lnk_fk","columns":["comment_id"],"referencedColumns":["id"],"referencedTable":"comments","onDelete":"CASCADE"},{"name":"comments_author_lnk_ifk","columns":["author_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"comment_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"author_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"comment_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2025-04-06 17:19:45.969	ff260e23264899f68eafd6dd8fb7da5a



--
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;



--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;



--
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2025-04-06 17:19:44.066
2	5.0.0-02-created-document-id	2025-04-06 17:19:44.183
3	5.0.0-03-created-locale	2025-04-06 17:19:44.297
4	5.0.0-04-created-published-at	2025-04-06 17:19:44.411
5	5.0.0-05-drop-slug-fields-index	2025-04-06 17:19:44.529
6	core::5.0.0-discard-drafts	2025-04-06 17:19:44.657



--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;



--
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;



--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;



--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;



--
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;



--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;



--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;



--
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;



--
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;



--
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;



--
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;



--
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;



--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.tags (id, document_id, name, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;



--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	l3ykurbmmocn61oprifihjhr	plugin::users-permissions.user.me	2025-04-06 17:19:46.555	2025-04-06 17:19:46.555	2025-04-06 17:19:46.556	\N	\N	\N
2	kh1tdnk8ujlhmkkam5wpvbok	plugin::users-permissions.auth.changePassword	2025-04-06 17:19:46.555	2025-04-06 17:19:46.555	2025-04-06 17:19:46.556	\N	\N	\N
3	vkymjzogkr1l7xeck4whwt82	plugin::users-permissions.auth.callback	2025-04-06 17:19:46.576	2025-04-06 17:19:46.576	2025-04-06 17:19:46.576	\N	\N	\N
4	h5msndfqyq5o9yu1ffd0wzez	plugin::users-permissions.auth.connect	2025-04-06 17:19:46.576	2025-04-06 17:19:46.576	2025-04-06 17:19:46.576	\N	\N	\N
5	hhwunktscxif4w2h0rzxcggn	plugin::users-permissions.auth.forgotPassword	2025-04-06 17:19:46.576	2025-04-06 17:19:46.576	2025-04-06 17:19:46.577	\N	\N	\N
6	f4vpizre5l33y1znsk5wckct	plugin::users-permissions.auth.register	2025-04-06 17:19:46.576	2025-04-06 17:19:46.576	2025-04-06 17:19:46.577	\N	\N	\N
7	elk5iwmpuck3kr03b4cycwuj	plugin::users-permissions.auth.resetPassword	2025-04-06 17:19:46.576	2025-04-06 17:19:46.576	2025-04-06 17:19:46.577	\N	\N	\N
8	avifbleb3hq04citxy0zbt9o	plugin::users-permissions.auth.emailConfirmation	2025-04-06 17:19:46.576	2025-04-06 17:19:46.576	2025-04-06 17:19:46.577	\N	\N	\N
9	z5xfikzpw9odcdmm1e886ygc	plugin::users-permissions.auth.sendEmailConfirmation	2025-04-06 17:19:46.576	2025-04-06 17:19:46.576	2025-04-06 17:19:46.577	\N	\N	\N
10	h9ahlf73tgt2w48cqzpk26qp	api::article.article.find	2025-04-07 20:23:31.974	2025-04-07 20:23:31.974	2025-04-07 20:23:31.974	\N	\N	\N
11	j34ii3u21njcj2i8gn8k5mn2	api::article.article.findOne	2025-04-07 20:23:31.974	2025-04-07 20:23:31.974	2025-04-07 20:23:31.975	\N	\N	\N



--
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	2	1	1
2	1	1	1
3	3	2	1
4	4	2	1
5	6	2	1
6	8	2	1
7	5	2	1
8	7	2	1
9	9	2	1
10	10	2	2
11	11	2	2



--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	fpgi8hlb5bla9bk8lntoeqeg	Authenticated	Default role given to authenticated user.	authenticated	2025-04-06 17:19:46.53	2025-04-06 17:19:46.53	2025-04-06 17:19:46.531	\N	\N	\N
2	y4w0r7jga1wv1dkl0511bk57	Public	Default role given to unauthenticated user.	public	2025-04-06 17:19:46.539	2025-04-07 20:23:31.969	2025-04-06 17:19:46.54	\N	\N	\N



--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;



--
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;



--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;



--
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;



--
-- Name: abouts_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.abouts_cmps_id_seq', 1, false);


--
-- Name: abouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.abouts_id_seq', 1, false);


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 168, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 168, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 1, true);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.articles_id_seq', 32, true);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.authors_id_seq', 5, true);


--
-- Name: authors_news_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.authors_news_lnk_id_seq', 29, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.categories_id_seq', 2, true);


--
-- Name: categories_news_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.categories_news_lnk_id_seq', 19, true);


--
-- Name: comments_author_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.comments_author_lnk_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: comments_news_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.comments_news_lnk_id_seq', 1, false);


--
-- Name: components_shared_media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.components_shared_media_id_seq', 1, false);


--
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.components_shared_quotes_id_seq', 1, false);


--
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.components_shared_rich_texts_id_seq', 1, false);


--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 1, false);


--
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.components_shared_sliders_id_seq', 1, false);


--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.files_id_seq', 6, true);


--
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 43, true);


--
-- Name: globals_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.globals_cmps_id_seq', 1, false);


--
-- Name: globals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.globals_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 38, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 1, true);


--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 6, true);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 11, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 11, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- Name: abouts_cmps abouts_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.abouts_cmps
    ADD CONSTRAINT abouts_cmps_pkey PRIMARY KEY (id);


--
-- Name: abouts abouts_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);


--
-- Name: abouts_cmps abouts_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.abouts_cmps
    ADD CONSTRAINT abouts_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: authors_news_lnk authors_news_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authors_news_lnk
    ADD CONSTRAINT authors_news_lnk_pkey PRIMARY KEY (id);


--
-- Name: authors_news_lnk authors_news_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authors_news_lnk
    ADD CONSTRAINT authors_news_lnk_uq UNIQUE (author_id, article_id);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: categories_news_lnk categories_news_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories_news_lnk
    ADD CONSTRAINT categories_news_lnk_pkey PRIMARY KEY (id);


--
-- Name: categories_news_lnk categories_news_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories_news_lnk
    ADD CONSTRAINT categories_news_lnk_uq UNIQUE (category_id, article_id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: comments_author_lnk comments_author_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments_author_lnk
    ADD CONSTRAINT comments_author_lnk_pkey PRIMARY KEY (id);


--
-- Name: comments_author_lnk comments_author_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments_author_lnk
    ADD CONSTRAINT comments_author_lnk_uq UNIQUE (comment_id, author_id);


--
-- Name: comments_news_lnk comments_news_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments_news_lnk
    ADD CONSTRAINT comments_news_lnk_pkey PRIMARY KEY (id);


--
-- Name: comments_news_lnk comments_news_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments_news_lnk
    ADD CONSTRAINT comments_news_lnk_uq UNIQUE (comment_id, article_id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: components_shared_media components_shared_media_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.components_shared_media
    ADD CONSTRAINT components_shared_media_pkey PRIMARY KEY (id);


--
-- Name: components_shared_quotes components_shared_quotes_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.components_shared_quotes
    ADD CONSTRAINT components_shared_quotes_pkey PRIMARY KEY (id);


--
-- Name: components_shared_rich_texts components_shared_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.components_shared_rich_texts
    ADD CONSTRAINT components_shared_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- Name: components_shared_sliders components_shared_sliders_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.components_shared_sliders
    ADD CONSTRAINT components_shared_sliders_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- Name: globals_cmps globals_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_cmps_pkey PRIMARY KEY (id);


--
-- Name: globals globals_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);


--
-- Name: globals_cmps globals_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: abouts_component_type_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX abouts_component_type_idx ON public.abouts_cmps USING btree (component_type);


--
-- Name: abouts_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX abouts_created_by_id_fk ON public.abouts USING btree (created_by_id);


--
-- Name: abouts_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX abouts_documents_idx ON public.abouts USING btree (document_id, locale, published_at);


--
-- Name: abouts_entity_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX abouts_entity_fk ON public.abouts_cmps USING btree (entity_id);


--
-- Name: abouts_field_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX abouts_field_idx ON public.abouts_cmps USING btree (field);


--
-- Name: abouts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX abouts_updated_by_id_fk ON public.abouts USING btree (updated_by_id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: articles_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX articles_created_by_id_fk ON public.articles USING btree (created_by_id);


--
-- Name: articles_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX articles_documents_idx ON public.articles USING btree (document_id, locale, published_at);


--
-- Name: articles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX articles_updated_by_id_fk ON public.articles USING btree (updated_by_id);


--
-- Name: authors_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX authors_created_by_id_fk ON public.authors USING btree (created_by_id);


--
-- Name: authors_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX authors_documents_idx ON public.authors USING btree (document_id, locale, published_at);


--
-- Name: authors_news_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX authors_news_lnk_fk ON public.authors_news_lnk USING btree (author_id);


--
-- Name: authors_news_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX authors_news_lnk_ifk ON public.authors_news_lnk USING btree (article_id);


--
-- Name: authors_news_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX authors_news_lnk_oifk ON public.authors_news_lnk USING btree (author_ord);


--
-- Name: authors_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX authors_updated_by_id_fk ON public.authors USING btree (updated_by_id);


--
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);


--
-- Name: categories_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX categories_documents_idx ON public.categories USING btree (document_id, locale, published_at);


--
-- Name: categories_news_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX categories_news_lnk_fk ON public.categories_news_lnk USING btree (category_id);


--
-- Name: categories_news_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX categories_news_lnk_ifk ON public.categories_news_lnk USING btree (article_id);


--
-- Name: categories_news_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX categories_news_lnk_oifk ON public.categories_news_lnk USING btree (category_ord);


--
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);


--
-- Name: comments_author_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX comments_author_lnk_fk ON public.comments_author_lnk USING btree (comment_id);


--
-- Name: comments_author_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX comments_author_lnk_ifk ON public.comments_author_lnk USING btree (author_id);


--
-- Name: comments_author_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX comments_author_lnk_oifk ON public.comments_author_lnk USING btree (comment_ord);


--
-- Name: comments_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX comments_created_by_id_fk ON public.comments USING btree (created_by_id);


--
-- Name: comments_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX comments_documents_idx ON public.comments USING btree (document_id, locale, published_at);


--
-- Name: comments_news_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX comments_news_lnk_fk ON public.comments_news_lnk USING btree (comment_id);


--
-- Name: comments_news_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX comments_news_lnk_ifk ON public.comments_news_lnk USING btree (article_id);


--
-- Name: comments_news_lnk_ofk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX comments_news_lnk_ofk ON public.comments_news_lnk USING btree (article_ord);


--
-- Name: comments_news_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX comments_news_lnk_oifk ON public.comments_news_lnk USING btree (comment_ord);


--
-- Name: comments_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX comments_updated_by_id_fk ON public.comments USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: globals_component_type_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX globals_component_type_idx ON public.globals_cmps USING btree (component_type);


--
-- Name: globals_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX globals_created_by_id_fk ON public.globals USING btree (created_by_id);


--
-- Name: globals_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX globals_documents_idx ON public.globals USING btree (document_id, locale, published_at);


--
-- Name: globals_entity_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX globals_entity_fk ON public.globals_cmps USING btree (entity_id);


--
-- Name: globals_field_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX globals_field_idx ON public.globals_cmps USING btree (field);


--
-- Name: globals_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX globals_updated_by_id_fk ON public.globals USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- Name: tags_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX tags_created_by_id_fk ON public.tags USING btree (created_by_id);


--
-- Name: tags_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX tags_documents_idx ON public.tags USING btree (document_id, locale, published_at);


--
-- Name: tags_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX tags_updated_by_id_fk ON public.tags USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: abouts abouts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: abouts_cmps abouts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.abouts_cmps
    ADD CONSTRAINT abouts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.abouts(id) ON DELETE CASCADE;


--
-- Name: abouts abouts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: articles articles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: articles articles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: authors authors_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: authors_news_lnk authors_news_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authors_news_lnk
    ADD CONSTRAINT authors_news_lnk_fk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- Name: authors_news_lnk authors_news_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authors_news_lnk
    ADD CONSTRAINT authors_news_lnk_ifk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: authors authors_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories_news_lnk categories_news_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories_news_lnk
    ADD CONSTRAINT categories_news_lnk_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: categories_news_lnk categories_news_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories_news_lnk
    ADD CONSTRAINT categories_news_lnk_ifk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: comments_author_lnk comments_author_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments_author_lnk
    ADD CONSTRAINT comments_author_lnk_fk FOREIGN KEY (comment_id) REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: comments_author_lnk comments_author_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments_author_lnk
    ADD CONSTRAINT comments_author_lnk_ifk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- Name: comments comments_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: comments_news_lnk comments_news_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments_news_lnk
    ADD CONSTRAINT comments_news_lnk_fk FOREIGN KEY (comment_id) REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: comments_news_lnk comments_news_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments_news_lnk
    ADD CONSTRAINT comments_news_lnk_ifk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: comments comments_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: globals globals_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: globals_cmps globals_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES public.globals(id) ON DELETE CASCADE;


--
-- Name: globals globals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tags tags_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tags tags_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
