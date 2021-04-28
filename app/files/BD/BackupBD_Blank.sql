--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

-- Started on 2021-04-28 10:04:37 -03

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
-- TOC entry 269 (class 1259 OID 19729)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 19727)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 268
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 271 (class 1259 OID 19739)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 19737)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 270
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 267 (class 1259 OID 19721)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 19719)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 266
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 273 (class 1259 OID 19747)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 19757)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 19755)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 274
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 272 (class 1259 OID 19745)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 272
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 277 (class 1259 OID 19765)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 19763)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 276
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 257 (class 1259 OID 19487)
-- Name: calculo_mensual; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calculo_mensual (
    id_calculo integer NOT NULL,
    fecha timestamp without time zone NOT NULL,
    mes_anio date NOT NULL
);


ALTER TABLE public.calculo_mensual OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 19485)
-- Name: calculo_mensual_id_calculo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.calculo_mensual_id_calculo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calculo_mensual_id_calculo_seq OWNER TO postgres;

--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 256
-- Name: calculo_mensual_id_calculo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.calculo_mensual_id_calculo_seq OWNED BY public.calculo_mensual.id_calculo;


--
-- TOC entry 213 (class 1259 OID 19272)
-- Name: calendario_feriados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calendario_feriados (
    id bigint NOT NULL,
    id_calendario integer NOT NULL,
    id_feriado integer NOT NULL,
    fecha date
);


ALTER TABLE public.calendario_feriados OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 19270)
-- Name: calendario_feriados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.calendario_feriados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calendario_feriados_id_seq OWNER TO postgres;

--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 212
-- Name: calendario_feriados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.calendario_feriados_id_seq OWNED BY public.calendario_feriados.id;


--
-- TOC entry 211 (class 1259 OID 19261)
-- Name: calendarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calendarios (
    id_calendario integer NOT NULL,
    anio integer NOT NULL,
    leyenda_anual text
);


ALTER TABLE public.calendarios OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 19259)
-- Name: calendarios_id_calendario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.calendarios_id_calendario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calendarios_id_calendario_seq OWNER TO postgres;

--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 210
-- Name: calendarios_id_calendario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.calendarios_id_calendario_seq OWNED BY public.calendarios.id_calendario;


--
-- TOC entry 251 (class 1259 OID 19454)
-- Name: comprobantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comprobantes (
    id_comprobante integer NOT NULL,
    comprobante text NOT NULL
);


ALTER TABLE public.comprobantes OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 19452)
-- Name: comprobantes_id_comprobante_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comprobantes_id_comprobante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comprobantes_id_comprobante_seq OWNER TO postgres;

--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 250
-- Name: comprobantes_id_comprobante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comprobantes_id_comprobante_seq OWNED BY public.comprobantes.id_comprobante;


--
-- TOC entry 247 (class 1259 OID 19435)
-- Name: control_proceso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.control_proceso (
    id bigint NOT NULL,
    fecha date NOT NULL,
    proceso_ok boolean NOT NULL
);


ALTER TABLE public.control_proceso OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 19433)
-- Name: control_proceso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.control_proceso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.control_proceso_id_seq OWNER TO postgres;

--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 246
-- Name: control_proceso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.control_proceso_id_seq OWNED BY public.control_proceso.id;


--
-- TOC entry 259 (class 1259 OID 19495)
-- Name: det_calculo_mensual; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.det_calculo_mensual (
    id bigint NOT NULL,
    id_turno integer NOT NULL,
    id_empleado integer NOT NULL,
    id_marca integer NOT NULL,
    cant_tarde integer,
    id_calculo_mensual integer NOT NULL
);


ALTER TABLE public.det_calculo_mensual OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 19493)
-- Name: det_calculo_mensual_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.det_calculo_mensual_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.det_calculo_mensual_id_seq OWNER TO postgres;

--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 258
-- Name: det_calculo_mensual_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.det_calculo_mensual_id_seq OWNED BY public.det_calculo_mensual.id;


--
-- TOC entry 279 (class 1259 OID 19825)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 19823)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 278
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 265 (class 1259 OID 19711)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 19709)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 264
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 263 (class 1259 OID 19700)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 19698)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 262
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 280 (class 1259 OID 19856)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 19416)
-- Name: empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleados (
    id_empleado integer NOT NULL,
    id_tipo_empleado integer NOT NULL,
    id_estado integer NOT NULL,
    id_persona integer NOT NULL,
    id_sucursal integer NOT NULL,
    id_sector integer NOT NULL,
    id_puesto integer NOT NULL,
    fecha_ingreso date NOT NULL,
    computar_hs_extras boolean NOT NULL,
    email_tardanza boolean NOT NULL,
    whatapps_tardanza boolean NOT NULL,
    incluir_reportes boolean NOT NULL,
    id_turno integer NOT NULL,
    cant_hs time without time zone,
    id_tarjeta integer NOT NULL
);


ALTER TABLE public.empleados OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 19414)
-- Name: empleados_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleados_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empleados_id_empleado_seq OWNER TO postgres;

--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 242
-- Name: empleados_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleados_id_empleado_seq OWNED BY public.empleados.id_empleado;


--
-- TOC entry 215 (class 1259 OID 19280)
-- Name: empresas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empresas (
    id_empresa integer NOT NULL,
    id_localidad integer NOT NULL,
    razon_social text NOT NULL,
    cuit character varying(15),
    telefonos text,
    web text
);


ALTER TABLE public.empresas OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 19278)
-- Name: empresas_id_empresa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empresas_id_empresa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empresas_id_empresa_seq OWNER TO postgres;

--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 214
-- Name: empresas_id_empresa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empresas_id_empresa_seq OWNED BY public.empresas.id_empresa;


--
-- TOC entry 229 (class 1259 OID 19351)
-- Name: estados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estados (
    id_estado integer NOT NULL,
    estado text NOT NULL
);


ALTER TABLE public.estados OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 19349)
-- Name: estados_id_estado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estados_id_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estados_id_estado_seq OWNER TO postgres;

--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 228
-- Name: estados_id_estado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estados_id_estado_seq OWNED BY public.estados.id_estado;


--
-- TOC entry 209 (class 1259 OID 19250)
-- Name: feriados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feriados (
    id_feriado integer NOT NULL,
    feriado text NOT NULL,
    inamovible date,
    inasistencia boolean NOT NULL,
    computa_extra boolean NOT NULL,
    porcentaje double precision NOT NULL
);


ALTER TABLE public.feriados OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 19248)
-- Name: feriados_id_feriado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.feriados_id_feriado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.feriados_id_feriado_seq OWNER TO postgres;

--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 208
-- Name: feriados_id_feriado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.feriados_id_feriado_seq OWNED BY public.feriados.id_feriado;


--
-- TOC entry 253 (class 1259 OID 19465)
-- Name: licencias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.licencias (
    id_licencia integer NOT NULL,
    id_empleado integer NOT NULL,
    desde date NOT NULL,
    hasta date NOT NULL,
    id_motivo integer NOT NULL,
    id_comprobante integer NOT NULL,
    comprobante text,
    observaciones text
);


ALTER TABLE public.licencias OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 19463)
-- Name: licencias_id_licencia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.licencias_id_licencia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.licencias_id_licencia_seq OWNER TO postgres;

--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 252
-- Name: licencias_id_licencia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.licencias_id_licencia_seq OWNED BY public.licencias.id_licencia;


--
-- TOC entry 207 (class 1259 OID 19239)
-- Name: localidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.localidades (
    id_localidad integer NOT NULL,
    localidad text NOT NULL,
    id_provincia integer NOT NULL
);


ALTER TABLE public.localidades OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 19237)
-- Name: localidades_id_localidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.localidades_id_localidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.localidades_id_localidad_seq OWNER TO postgres;

--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 206
-- Name: localidades_id_localidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.localidades_id_localidad_seq OWNED BY public.localidades.id_localidad;


--
-- TOC entry 255 (class 1259 OID 19476)
-- Name: marcas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marcas (
    id_marca bigint NOT NULL,
    id_empleado integer NOT NULL,
    entrada timestamp without time zone,
    salida timestamp without time zone,
    marcadas time without time zone,
    proyectadas time without time zone,
    reales_turno time without time zone,
    descanso time without time zone,
    inconsistencia boolean NOT NULL,
    origen_marca character varying(30),
    id_motivo integer NOT NULL,
    observaciones text
);


ALTER TABLE public.marcas OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 19474)
-- Name: marcas_id_marca_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marcas_id_marca_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marcas_id_marca_seq OWNER TO postgres;

--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 254
-- Name: marcas_id_marca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marcas_id_marca_seq OWNED BY public.marcas.id_marca;


--
-- TOC entry 249 (class 1259 OID 19443)
-- Name: motivos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.motivos (
    id_motivo integer NOT NULL,
    motivo character varying(30) NOT NULL,
    detalle text,
    dia_trabajado boolean NOT NULL,
    max_mes integer,
    max_anio integer
);


ALTER TABLE public.motivos OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 19441)
-- Name: motivos_id_motivo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.motivos_id_motivo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.motivos_id_motivo_seq OWNER TO postgres;

--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 248
-- Name: motivos_id_motivo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.motivos_id_motivo_seq OWNED BY public.motivos.id_motivo;


--
-- TOC entry 203 (class 1259 OID 19217)
-- Name: paises; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paises (
    id_pais integer NOT NULL,
    pais text NOT NULL
);


ALTER TABLE public.paises OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 19215)
-- Name: paises_id_pais_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.paises_id_pais_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.paises_id_pais_seq OWNER TO postgres;

--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 202
-- Name: paises_id_pais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.paises_id_pais_seq OWNED BY public.paises.id_pais;


--
-- TOC entry 225 (class 1259 OID 19329)
-- Name: personas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personas (
    id_persona integer NOT NULL,
    apellido text NOT NULL,
    nombres text NOT NULL,
    id_tipo_doc integer NOT NULL,
    nrodoc character varying(20) NOT NULL,
    id_sexo integer NOT NULL,
    fecha_nac date,
    id_localidad integer NOT NULL,
    direccion text NOT NULL,
    email text,
    telefono text
);


ALTER TABLE public.personas OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 19327)
-- Name: personas_id_persona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personas_id_persona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personas_id_persona_seq OWNER TO postgres;

--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 224
-- Name: personas_id_persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personas_id_persona_seq OWNED BY public.personas.id_persona;


--
-- TOC entry 239 (class 1259 OID 19400)
-- Name: presentismos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.presentismos (
    id_presentismo integer NOT NULL,
    presentismo character varying(30) NOT NULL,
    cant_tardanza integer NOT NULL
);


ALTER TABLE public.presentismos OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 19398)
-- Name: presentismos_id_presentismo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.presentismos_id_presentismo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.presentismos_id_presentismo_seq OWNER TO postgres;

--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 238
-- Name: presentismos_id_presentismo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.presentismos_id_presentismo_seq OWNED BY public.presentismos.id_presentismo;


--
-- TOC entry 205 (class 1259 OID 19228)
-- Name: provincias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provincias (
    id_provincia integer NOT NULL,
    provincia text NOT NULL,
    id_pais integer NOT NULL
);


ALTER TABLE public.provincias OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 19226)
-- Name: provincias_id_provincia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.provincias_id_provincia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.provincias_id_provincia_seq OWNER TO postgres;

--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 204
-- Name: provincias_id_provincia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.provincias_id_provincia_seq OWNED BY public.provincias.id_provincia;


--
-- TOC entry 245 (class 1259 OID 19424)
-- Name: puestos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.puestos (
    id_puesto integer NOT NULL,
    puesto text NOT NULL
);


ALTER TABLE public.puestos OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 19422)
-- Name: puestos_id_puesto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.puestos_id_puesto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.puestos_id_puesto_seq OWNER TO postgres;

--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 244
-- Name: puestos_id_puesto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.puestos_id_puesto_seq OWNED BY public.puestos.id_puesto;


--
-- TOC entry 261 (class 1259 OID 19503)
-- Name: relojes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relojes (
    id_reloj integer NOT NULL,
    marca character varying(30) NOT NULL,
    modelo character varying(30) NOT NULL,
    id_sucursal integer NOT NULL,
    id_sector integer NOT NULL,
    ubicacion text NOT NULL,
    ip_reloj character varying(100) NOT NULL,
    "user" character varying(30),
    password character varying(30)
);


ALTER TABLE public.relojes OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 19501)
-- Name: relojes_id_reloj_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.relojes_id_reloj_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.relojes_id_reloj_seq OWNER TO postgres;

--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 260
-- Name: relojes_id_reloj_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.relojes_id_reloj_seq OWNED BY public.relojes.id_reloj;


--
-- TOC entry 219 (class 1259 OID 19302)
-- Name: sectores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sectores (
    id_sector integer NOT NULL,
    sector text NOT NULL,
    id_empleado_jefe integer NOT NULL,
    horario_notif time without time zone
);


ALTER TABLE public.sectores OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 19300)
-- Name: sectores_id_sector_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sectores_id_sector_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sectores_id_sector_seq OWNER TO postgres;

--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 218
-- Name: sectores_id_sector_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sectores_id_sector_seq OWNED BY public.sectores.id_sector;


--
-- TOC entry 221 (class 1259 OID 19313)
-- Name: sectores_sucursales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sectores_sucursales (
    id integer NOT NULL,
    id_sucursal integer NOT NULL,
    id_sector integer NOT NULL,
    id_empleado_jefe integer NOT NULL,
    horario_notif time without time zone
);


ALTER TABLE public.sectores_sucursales OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 19311)
-- Name: sectores_sucursales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sectores_sucursales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sectores_sucursales_id_seq OWNER TO postgres;

--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 220
-- Name: sectores_sucursales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sectores_sucursales_id_seq OWNED BY public.sectores_sucursales.id;


--
-- TOC entry 223 (class 1259 OID 19321)
-- Name: sexos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sexos (
    id_sexo integer NOT NULL,
    sexo character varying(20) NOT NULL
);


ALTER TABLE public.sexos OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 19319)
-- Name: sexos_id_sexo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sexos_id_sexo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sexos_id_sexo_seq OWNER TO postgres;

--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 222
-- Name: sexos_id_sexo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sexos_id_sexo_seq OWNED BY public.sexos.id_sexo;


--
-- TOC entry 217 (class 1259 OID 19291)
-- Name: sucursales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sucursales (
    id_sucursal integer NOT NULL,
    id_empresa integer NOT NULL,
    id_localidad integer NOT NULL,
    sucursal text NOT NULL,
    direccion text,
    telefonos text
);


ALTER TABLE public.sucursales OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 19289)
-- Name: sucursales_id_sucursal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sucursales_id_sucursal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sucursales_id_sucursal_seq OWNER TO postgres;

--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 216
-- Name: sucursales_id_sucursal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sucursales_id_sucursal_seq OWNED BY public.sucursales.id_sucursal;


--
-- TOC entry 231 (class 1259 OID 19362)
-- Name: tarjetas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tarjetas (
    id_tarjeta integer NOT NULL,
    tarjeta text NOT NULL,
    codigo_tarjeta text
);


ALTER TABLE public.tarjetas OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 19360)
-- Name: tarjetas_id_tarjeta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tarjetas_id_tarjeta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tarjetas_id_tarjeta_seq OWNER TO postgres;

--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 230
-- Name: tarjetas_id_tarjeta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tarjetas_id_tarjeta_seq OWNED BY public.tarjetas.id_tarjeta;


--
-- TOC entry 227 (class 1259 OID 19340)
-- Name: tipos_doc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_doc (
    id_tipo_doc integer NOT NULL,
    tipo_doc text NOT NULL
);


ALTER TABLE public.tipos_doc OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 19338)
-- Name: tipos_doc_id_tipo_doc_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipos_doc_id_tipo_doc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_doc_id_tipo_doc_seq OWNER TO postgres;

--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 226
-- Name: tipos_doc_id_tipo_doc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_doc_id_tipo_doc_seq OWNED BY public.tipos_doc.id_tipo_doc;


--
-- TOC entry 235 (class 1259 OID 19384)
-- Name: tipos_empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_empleados (
    id_tipo_empleado integer NOT NULL,
    tipo_empleado character varying(30) NOT NULL
);


ALTER TABLE public.tipos_empleados OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 19382)
-- Name: tipos_empleados_id_tipo_empleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipos_empleados_id_tipo_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_empleados_id_tipo_empleado_seq OWNER TO postgres;

--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 234
-- Name: tipos_empleados_id_tipo_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_empleados_id_tipo_empleado_seq OWNED BY public.tipos_empleados.id_tipo_empleado;


--
-- TOC entry 237 (class 1259 OID 19392)
-- Name: turnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.turnos (
    id_turno integer NOT NULL,
    id_presentismo integer NOT NULL,
    turno character varying(30) NOT NULL,
    cant_hs time without time zone NOT NULL,
    porcentaje double precision,
    estricto boolean NOT NULL
);


ALTER TABLE public.turnos OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 19408)
-- Name: turnos_dias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.turnos_dias (
    id_turno_dia integer NOT NULL,
    id_turno integer NOT NULL,
    dia_semana integer NOT NULL,
    entrada time without time zone NOT NULL,
    salida time without time zone NOT NULL
);


ALTER TABLE public.turnos_dias OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 19406)
-- Name: turnos_dias_id_turno_dia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.turnos_dias_id_turno_dia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.turnos_dias_id_turno_dia_seq OWNER TO postgres;

--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 240
-- Name: turnos_dias_id_turno_dia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.turnos_dias_id_turno_dia_seq OWNED BY public.turnos_dias.id_turno_dia;


--
-- TOC entry 236 (class 1259 OID 19390)
-- Name: turnos_id_turno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.turnos_id_turno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.turnos_id_turno_seq OWNER TO postgres;

--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 236
-- Name: turnos_id_turno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.turnos_id_turno_seq OWNED BY public.turnos.id_turno;


--
-- TOC entry 233 (class 1259 OID 19373)
-- Name: visitas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.visitas (
    id_visita integer NOT NULL,
    apellido text NOT NULL,
    nombres text NOT NULL,
    id_tipo_doc integer NOT NULL,
    nro_doc character varying(20),
    id_sexo integer NOT NULL,
    empresa text,
    puesto text,
    fecha_ingreso date NOT NULL,
    id_sucursal integer NOT NULL,
    id_sector integer NOT NULL,
    motivo text,
    pertenencias text,
    id_tarjeta integer NOT NULL
);


ALTER TABLE public.visitas OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 19371)
-- Name: visitas_id_visita_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visitas_id_visita_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visitas_id_visita_seq OWNER TO postgres;

--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 232
-- Name: visitas_id_visita_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visitas_id_visita_seq OWNED BY public.visitas.id_visita;


--
-- TOC entry 3160 (class 2604 OID 19732)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3161 (class 2604 OID 19742)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3159 (class 2604 OID 19724)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3162 (class 2604 OID 19750)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3163 (class 2604 OID 19760)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3164 (class 2604 OID 19768)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3154 (class 2604 OID 19490)
-- Name: calculo_mensual id_calculo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calculo_mensual ALTER COLUMN id_calculo SET DEFAULT nextval('public.calculo_mensual_id_calculo_seq'::regclass);


--
-- TOC entry 3132 (class 2604 OID 19275)
-- Name: calendario_feriados id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calendario_feriados ALTER COLUMN id SET DEFAULT nextval('public.calendario_feriados_id_seq'::regclass);


--
-- TOC entry 3131 (class 2604 OID 19264)
-- Name: calendarios id_calendario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calendarios ALTER COLUMN id_calendario SET DEFAULT nextval('public.calendarios_id_calendario_seq'::regclass);


--
-- TOC entry 3151 (class 2604 OID 19457)
-- Name: comprobantes id_comprobante; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comprobantes ALTER COLUMN id_comprobante SET DEFAULT nextval('public.comprobantes_id_comprobante_seq'::regclass);


--
-- TOC entry 3149 (class 2604 OID 19438)
-- Name: control_proceso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.control_proceso ALTER COLUMN id SET DEFAULT nextval('public.control_proceso_id_seq'::regclass);


--
-- TOC entry 3155 (class 2604 OID 19498)
-- Name: det_calculo_mensual id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.det_calculo_mensual ALTER COLUMN id SET DEFAULT nextval('public.det_calculo_mensual_id_seq'::regclass);


--
-- TOC entry 3165 (class 2604 OID 19828)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3158 (class 2604 OID 19714)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3157 (class 2604 OID 19703)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3147 (class 2604 OID 19419)
-- Name: empleados id_empleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleados_id_empleado_seq'::regclass);


--
-- TOC entry 3133 (class 2604 OID 19283)
-- Name: empresas id_empresa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresas ALTER COLUMN id_empresa SET DEFAULT nextval('public.empresas_id_empresa_seq'::regclass);


--
-- TOC entry 3140 (class 2604 OID 19354)
-- Name: estados id_estado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estados ALTER COLUMN id_estado SET DEFAULT nextval('public.estados_id_estado_seq'::regclass);


--
-- TOC entry 3130 (class 2604 OID 19253)
-- Name: feriados id_feriado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feriados ALTER COLUMN id_feriado SET DEFAULT nextval('public.feriados_id_feriado_seq'::regclass);


--
-- TOC entry 3152 (class 2604 OID 19468)
-- Name: licencias id_licencia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licencias ALTER COLUMN id_licencia SET DEFAULT nextval('public.licencias_id_licencia_seq'::regclass);


--
-- TOC entry 3129 (class 2604 OID 19242)
-- Name: localidades id_localidad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.localidades ALTER COLUMN id_localidad SET DEFAULT nextval('public.localidades_id_localidad_seq'::regclass);


--
-- TOC entry 3153 (class 2604 OID 19479)
-- Name: marcas id_marca; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas ALTER COLUMN id_marca SET DEFAULT nextval('public.marcas_id_marca_seq'::regclass);


--
-- TOC entry 3150 (class 2604 OID 19446)
-- Name: motivos id_motivo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motivos ALTER COLUMN id_motivo SET DEFAULT nextval('public.motivos_id_motivo_seq'::regclass);


--
-- TOC entry 3127 (class 2604 OID 19220)
-- Name: paises id_pais; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paises ALTER COLUMN id_pais SET DEFAULT nextval('public.paises_id_pais_seq'::regclass);


--
-- TOC entry 3138 (class 2604 OID 19332)
-- Name: personas id_persona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personas ALTER COLUMN id_persona SET DEFAULT nextval('public.personas_id_persona_seq'::regclass);


--
-- TOC entry 3145 (class 2604 OID 19403)
-- Name: presentismos id_presentismo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.presentismos ALTER COLUMN id_presentismo SET DEFAULT nextval('public.presentismos_id_presentismo_seq'::regclass);


--
-- TOC entry 3128 (class 2604 OID 19231)
-- Name: provincias id_provincia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincias ALTER COLUMN id_provincia SET DEFAULT nextval('public.provincias_id_provincia_seq'::regclass);


--
-- TOC entry 3148 (class 2604 OID 19427)
-- Name: puestos id_puesto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puestos ALTER COLUMN id_puesto SET DEFAULT nextval('public.puestos_id_puesto_seq'::regclass);


--
-- TOC entry 3156 (class 2604 OID 19506)
-- Name: relojes id_reloj; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relojes ALTER COLUMN id_reloj SET DEFAULT nextval('public.relojes_id_reloj_seq'::regclass);


--
-- TOC entry 3135 (class 2604 OID 19305)
-- Name: sectores id_sector; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sectores ALTER COLUMN id_sector SET DEFAULT nextval('public.sectores_id_sector_seq'::regclass);


--
-- TOC entry 3136 (class 2604 OID 19316)
-- Name: sectores_sucursales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sectores_sucursales ALTER COLUMN id SET DEFAULT nextval('public.sectores_sucursales_id_seq'::regclass);


--
-- TOC entry 3137 (class 2604 OID 19324)
-- Name: sexos id_sexo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sexos ALTER COLUMN id_sexo SET DEFAULT nextval('public.sexos_id_sexo_seq'::regclass);


--
-- TOC entry 3134 (class 2604 OID 19294)
-- Name: sucursales id_sucursal; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sucursales ALTER COLUMN id_sucursal SET DEFAULT nextval('public.sucursales_id_sucursal_seq'::regclass);


--
-- TOC entry 3141 (class 2604 OID 19365)
-- Name: tarjetas id_tarjeta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarjetas ALTER COLUMN id_tarjeta SET DEFAULT nextval('public.tarjetas_id_tarjeta_seq'::regclass);


--
-- TOC entry 3139 (class 2604 OID 19343)
-- Name: tipos_doc id_tipo_doc; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_doc ALTER COLUMN id_tipo_doc SET DEFAULT nextval('public.tipos_doc_id_tipo_doc_seq'::regclass);


--
-- TOC entry 3143 (class 2604 OID 19387)
-- Name: tipos_empleados id_tipo_empleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_empleados ALTER COLUMN id_tipo_empleado SET DEFAULT nextval('public.tipos_empleados_id_tipo_empleado_seq'::regclass);


--
-- TOC entry 3144 (class 2604 OID 19395)
-- Name: turnos id_turno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnos ALTER COLUMN id_turno SET DEFAULT nextval('public.turnos_id_turno_seq'::regclass);


--
-- TOC entry 3146 (class 2604 OID 19411)
-- Name: turnos_dias id_turno_dia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnos_dias ALTER COLUMN id_turno_dia SET DEFAULT nextval('public.turnos_dias_id_turno_dia_seq'::regclass);


--
-- TOC entry 3142 (class 2604 OID 19376)
-- Name: visitas id_visita; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas ALTER COLUMN id_visita SET DEFAULT nextval('public.visitas_id_visita_seq'::regclass);


--
-- TOC entry 3513 (class 0 OID 19729)
-- Dependencies: 269
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3515 (class 0 OID 19739)
-- Dependencies: 271
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3511 (class 0 OID 19721)
-- Dependencies: 267
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
\.


--
-- TOC entry 3517 (class 0 OID 19747)
-- Dependencies: 273
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- TOC entry 3519 (class 0 OID 19757)
-- Dependencies: 275
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3521 (class 0 OID 19765)
-- Dependencies: 277
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3501 (class 0 OID 19487)
-- Dependencies: 257
-- Data for Name: calculo_mensual; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.calculo_mensual (id_calculo, fecha, mes_anio) FROM stdin;
\.


--
-- TOC entry 3457 (class 0 OID 19272)
-- Dependencies: 213
-- Data for Name: calendario_feriados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.calendario_feriados (id, id_calendario, id_feriado, fecha) FROM stdin;
\.


--
-- TOC entry 3455 (class 0 OID 19261)
-- Dependencies: 211
-- Data for Name: calendarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.calendarios (id_calendario, anio, leyenda_anual) FROM stdin;
\.


--
-- TOC entry 3495 (class 0 OID 19454)
-- Dependencies: 251
-- Data for Name: comprobantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comprobantes (id_comprobante, comprobante) FROM stdin;
\.


--
-- TOC entry 3491 (class 0 OID 19435)
-- Dependencies: 247
-- Data for Name: control_proceso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.control_proceso (id, fecha, proceso_ok) FROM stdin;
\.


--
-- TOC entry 3503 (class 0 OID 19495)
-- Dependencies: 259
-- Data for Name: det_calculo_mensual; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.det_calculo_mensual (id, id_turno, id_empleado, id_marca, cant_tarde, id_calculo_mensual) FROM stdin;
\.


--
-- TOC entry 3523 (class 0 OID 19825)
-- Dependencies: 279
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3509 (class 0 OID 19711)
-- Dependencies: 265
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
\.


--
-- TOC entry 3507 (class 0 OID 19700)
-- Dependencies: 263
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-04-28 09:48:32.202129-03
2	auth	0001_initial	2021-04-28 09:48:32.388677-03
3	admin	0001_initial	2021-04-28 09:48:32.44588-03
4	admin	0002_logentry_remove_auto_add	2021-04-28 09:48:32.46066-03
5	admin	0003_logentry_add_action_flag_choices	2021-04-28 09:48:32.474864-03
6	contenttypes	0002_remove_content_type_name	2021-04-28 09:48:32.496915-03
7	auth	0002_alter_permission_name_max_length	2021-04-28 09:48:32.50919-03
8	auth	0003_alter_user_email_max_length	2021-04-28 09:48:32.51801-03
9	auth	0004_alter_user_username_opts	2021-04-28 09:48:32.527165-03
10	auth	0005_alter_user_last_login_null	2021-04-28 09:48:32.536181-03
11	auth	0006_require_contenttypes_0002	2021-04-28 09:48:32.539265-03
12	auth	0007_alter_validators_add_error_messages	2021-04-28 09:48:32.547913-03
13	auth	0008_alter_user_username_max_length	2021-04-28 09:48:32.564976-03
14	auth	0009_alter_user_last_name_max_length	2021-04-28 09:48:32.587905-03
15	auth	0010_alter_group_name_max_length	2021-04-28 09:48:32.600418-03
16	auth	0011_update_proxy_permissions	2021-04-28 09:48:32.612374-03
17	auth	0012_alter_user_first_name_max_length	2021-04-28 09:48:32.623669-03
18	sessions	0001_initial	2021-04-28 09:48:32.642194-03
\.


--
-- TOC entry 3524 (class 0 OID 19856)
-- Dependencies: 280
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 3487 (class 0 OID 19416)
-- Dependencies: 243
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleados (id_empleado, id_tipo_empleado, id_estado, id_persona, id_sucursal, id_sector, id_puesto, fecha_ingreso, computar_hs_extras, email_tardanza, whatapps_tardanza, incluir_reportes, id_turno, cant_hs, id_tarjeta) FROM stdin;
\.


--
-- TOC entry 3459 (class 0 OID 19280)
-- Dependencies: 215
-- Data for Name: empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empresas (id_empresa, id_localidad, razon_social, cuit, telefonos, web) FROM stdin;
\.


--
-- TOC entry 3473 (class 0 OID 19351)
-- Dependencies: 229
-- Data for Name: estados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estados (id_estado, estado) FROM stdin;
\.


--
-- TOC entry 3453 (class 0 OID 19250)
-- Dependencies: 209
-- Data for Name: feriados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feriados (id_feriado, feriado, inamovible, inasistencia, computa_extra, porcentaje) FROM stdin;
\.


--
-- TOC entry 3497 (class 0 OID 19465)
-- Dependencies: 253
-- Data for Name: licencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.licencias (id_licencia, id_empleado, desde, hasta, id_motivo, id_comprobante, comprobante, observaciones) FROM stdin;
\.


--
-- TOC entry 3451 (class 0 OID 19239)
-- Dependencies: 207
-- Data for Name: localidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.localidades (id_localidad, localidad, id_provincia) FROM stdin;
\.


--
-- TOC entry 3499 (class 0 OID 19476)
-- Dependencies: 255
-- Data for Name: marcas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marcas (id_marca, id_empleado, entrada, salida, marcadas, proyectadas, reales_turno, descanso, inconsistencia, origen_marca, id_motivo, observaciones) FROM stdin;
\.


--
-- TOC entry 3493 (class 0 OID 19443)
-- Dependencies: 249
-- Data for Name: motivos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.motivos (id_motivo, motivo, detalle, dia_trabajado, max_mes, max_anio) FROM stdin;
\.


--
-- TOC entry 3447 (class 0 OID 19217)
-- Dependencies: 203
-- Data for Name: paises; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.paises (id_pais, pais) FROM stdin;
\.


--
-- TOC entry 3469 (class 0 OID 19329)
-- Dependencies: 225
-- Data for Name: personas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personas (id_persona, apellido, nombres, id_tipo_doc, nrodoc, id_sexo, fecha_nac, id_localidad, direccion, email, telefono) FROM stdin;
\.


--
-- TOC entry 3483 (class 0 OID 19400)
-- Dependencies: 239
-- Data for Name: presentismos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.presentismos (id_presentismo, presentismo, cant_tardanza) FROM stdin;
\.


--
-- TOC entry 3449 (class 0 OID 19228)
-- Dependencies: 205
-- Data for Name: provincias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.provincias (id_provincia, provincia, id_pais) FROM stdin;
\.


--
-- TOC entry 3489 (class 0 OID 19424)
-- Dependencies: 245
-- Data for Name: puestos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.puestos (id_puesto, puesto) FROM stdin;
\.


--
-- TOC entry 3505 (class 0 OID 19503)
-- Dependencies: 261
-- Data for Name: relojes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relojes (id_reloj, marca, modelo, id_sucursal, id_sector, ubicacion, ip_reloj, "user", password) FROM stdin;
\.


--
-- TOC entry 3463 (class 0 OID 19302)
-- Dependencies: 219
-- Data for Name: sectores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sectores (id_sector, sector, id_empleado_jefe, horario_notif) FROM stdin;
\.


--
-- TOC entry 3465 (class 0 OID 19313)
-- Dependencies: 221
-- Data for Name: sectores_sucursales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sectores_sucursales (id, id_sucursal, id_sector, id_empleado_jefe, horario_notif) FROM stdin;
\.


--
-- TOC entry 3467 (class 0 OID 19321)
-- Dependencies: 223
-- Data for Name: sexos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sexos (id_sexo, sexo) FROM stdin;
\.


--
-- TOC entry 3461 (class 0 OID 19291)
-- Dependencies: 217
-- Data for Name: sucursales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sucursales (id_sucursal, id_empresa, id_localidad, sucursal, direccion, telefonos) FROM stdin;
\.


--
-- TOC entry 3475 (class 0 OID 19362)
-- Dependencies: 231
-- Data for Name: tarjetas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tarjetas (id_tarjeta, tarjeta, codigo_tarjeta) FROM stdin;
\.


--
-- TOC entry 3471 (class 0 OID 19340)
-- Dependencies: 227
-- Data for Name: tipos_doc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipos_doc (id_tipo_doc, tipo_doc) FROM stdin;
\.


--
-- TOC entry 3479 (class 0 OID 19384)
-- Dependencies: 235
-- Data for Name: tipos_empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipos_empleados (id_tipo_empleado, tipo_empleado) FROM stdin;
\.


--
-- TOC entry 3481 (class 0 OID 19392)
-- Dependencies: 237
-- Data for Name: turnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.turnos (id_turno, id_presentismo, turno, cant_hs, porcentaje, estricto) FROM stdin;
\.


--
-- TOC entry 3485 (class 0 OID 19408)
-- Dependencies: 241
-- Data for Name: turnos_dias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.turnos_dias (id_turno_dia, id_turno, dia_semana, entrada, salida) FROM stdin;
\.


--
-- TOC entry 3477 (class 0 OID 19373)
-- Dependencies: 233
-- Data for Name: visitas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.visitas (id_visita, apellido, nombres, id_tipo_doc, nro_doc, id_sexo, empresa, puesto, fecha_ingreso, id_sucursal, id_sector, motivo, pertenencias, id_tarjeta) FROM stdin;
\.


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 268
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 270
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 266
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 24, true);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 274
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 272
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 276
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 256
-- Name: calculo_mensual_id_calculo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.calculo_mensual_id_calculo_seq', 1, false);


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 212
-- Name: calendario_feriados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.calendario_feriados_id_seq', 1, false);


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 210
-- Name: calendarios_id_calendario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.calendarios_id_calendario_seq', 1, false);


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 250
-- Name: comprobantes_id_comprobante_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comprobantes_id_comprobante_seq', 1, false);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 246
-- Name: control_proceso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.control_proceso_id_seq', 1, false);


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 258
-- Name: det_calculo_mensual_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.det_calculo_mensual_id_seq', 1, false);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 278
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 264
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 6, true);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 262
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 242
-- Name: empleados_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleados_id_empleado_seq', 1, false);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 214
-- Name: empresas_id_empresa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empresas_id_empresa_seq', 1, false);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 228
-- Name: estados_id_estado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estados_id_estado_seq', 1, false);


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 208
-- Name: feriados_id_feriado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.feriados_id_feriado_seq', 1, false);


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 252
-- Name: licencias_id_licencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.licencias_id_licencia_seq', 1, false);


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 206
-- Name: localidades_id_localidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.localidades_id_localidad_seq', 1, false);


--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 254
-- Name: marcas_id_marca_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marcas_id_marca_seq', 1, false);


--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 248
-- Name: motivos_id_motivo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.motivos_id_motivo_seq', 1, false);


--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 202
-- Name: paises_id_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.paises_id_pais_seq', 1, false);


--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 224
-- Name: personas_id_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personas_id_persona_seq', 1, false);


--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 238
-- Name: presentismos_id_presentismo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.presentismos_id_presentismo_seq', 1, false);


--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 204
-- Name: provincias_id_provincia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provincias_id_provincia_seq', 1, false);


--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 244
-- Name: puestos_id_puesto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.puestos_id_puesto_seq', 1, false);


--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 260
-- Name: relojes_id_reloj_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.relojes_id_reloj_seq', 1, false);


--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 218
-- Name: sectores_id_sector_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sectores_id_sector_seq', 1, false);


--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 220
-- Name: sectores_sucursales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sectores_sucursales_id_seq', 1, false);


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 222
-- Name: sexos_id_sexo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sexos_id_sexo_seq', 1, false);


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 216
-- Name: sucursales_id_sucursal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sucursales_id_sucursal_seq', 1, false);


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 230
-- Name: tarjetas_id_tarjeta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tarjetas_id_tarjeta_seq', 1, false);


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 226
-- Name: tipos_doc_id_tipo_doc_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_doc_id_tipo_doc_seq', 1, false);


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 234
-- Name: tipos_empleados_id_tipo_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_empleados_id_tipo_empleado_seq', 1, false);


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 240
-- Name: turnos_dias_id_turno_dia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.turnos_dias_id_turno_dia_seq', 1, false);


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 236
-- Name: turnos_id_turno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.turnos_id_turno_seq', 1, false);


--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 232
-- Name: visitas_id_visita_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visitas_id_visita_seq', 1, false);


--
-- TOC entry 3240 (class 2606 OID 19854)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3245 (class 2606 OID 19781)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3248 (class 2606 OID 19744)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 19734)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3235 (class 2606 OID 19772)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3237 (class 2606 OID 19726)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3256 (class 2606 OID 19762)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3259 (class 2606 OID 19796)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3250 (class 2606 OID 19752)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3262 (class 2606 OID 19770)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3265 (class 2606 OID 19810)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3253 (class 2606 OID 19848)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3222 (class 2606 OID 19492)
-- Name: calculo_mensual calculo_mensual_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calculo_mensual
    ADD CONSTRAINT calculo_mensual_pkey PRIMARY KEY (id_calculo);


--
-- TOC entry 3178 (class 2606 OID 19277)
-- Name: calendario_feriados calendario_feriados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calendario_feriados
    ADD CONSTRAINT calendario_feriados_pkey PRIMARY KEY (id);


--
-- TOC entry 3176 (class 2606 OID 19269)
-- Name: calendarios calendarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calendarios
    ADD CONSTRAINT calendarios_pkey PRIMARY KEY (id_calendario);


--
-- TOC entry 3216 (class 2606 OID 19462)
-- Name: comprobantes comprobantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comprobantes
    ADD CONSTRAINT comprobantes_pkey PRIMARY KEY (id_comprobante);


--
-- TOC entry 3212 (class 2606 OID 19440)
-- Name: control_proceso control_proceso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.control_proceso
    ADD CONSTRAINT control_proceso_pkey PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 19500)
-- Name: det_calculo_mensual det_calculo_mensual_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.det_calculo_mensual
    ADD CONSTRAINT det_calculo_mensual_pkey PRIMARY KEY (id);


--
-- TOC entry 3268 (class 2606 OID 19834)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3230 (class 2606 OID 19718)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3232 (class 2606 OID 19716)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3228 (class 2606 OID 19708)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3272 (class 2606 OID 19863)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3208 (class 2606 OID 19421)
-- Name: empleados empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_empleado);


--
-- TOC entry 3180 (class 2606 OID 19288)
-- Name: empresas empresas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT empresas_pkey PRIMARY KEY (id_empresa);


--
-- TOC entry 3194 (class 2606 OID 19359)
-- Name: estados estados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estados
    ADD CONSTRAINT estados_pkey PRIMARY KEY (id_estado);


--
-- TOC entry 3174 (class 2606 OID 19258)
-- Name: feriados feriados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feriados
    ADD CONSTRAINT feriados_pkey PRIMARY KEY (id_feriado);


--
-- TOC entry 3218 (class 2606 OID 19473)
-- Name: licencias licencias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licencias
    ADD CONSTRAINT licencias_pkey PRIMARY KEY (id_licencia);


--
-- TOC entry 3172 (class 2606 OID 19247)
-- Name: localidades localidades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.localidades
    ADD CONSTRAINT localidades_pkey PRIMARY KEY (id_localidad);


--
-- TOC entry 3220 (class 2606 OID 19484)
-- Name: marcas marcas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marcas_pkey PRIMARY KEY (id_marca);


--
-- TOC entry 3214 (class 2606 OID 19451)
-- Name: motivos motivos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motivos
    ADD CONSTRAINT motivos_pkey PRIMARY KEY (id_motivo);


--
-- TOC entry 3168 (class 2606 OID 19225)
-- Name: paises paises_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paises
    ADD CONSTRAINT paises_pkey PRIMARY KEY (id_pais);


--
-- TOC entry 3190 (class 2606 OID 19337)
-- Name: personas personas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (id_persona);


--
-- TOC entry 3204 (class 2606 OID 19405)
-- Name: presentismos presentismos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.presentismos
    ADD CONSTRAINT presentismos_pkey PRIMARY KEY (id_presentismo);


--
-- TOC entry 3170 (class 2606 OID 19236)
-- Name: provincias provincias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincias
    ADD CONSTRAINT provincias_pkey PRIMARY KEY (id_provincia);


--
-- TOC entry 3210 (class 2606 OID 19432)
-- Name: puestos puestos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puestos
    ADD CONSTRAINT puestos_pkey PRIMARY KEY (id_puesto);


--
-- TOC entry 3226 (class 2606 OID 19511)
-- Name: relojes relojes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relojes
    ADD CONSTRAINT relojes_pkey PRIMARY KEY (id_reloj);


--
-- TOC entry 3184 (class 2606 OID 19310)
-- Name: sectores sectores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sectores
    ADD CONSTRAINT sectores_pkey PRIMARY KEY (id_sector);


--
-- TOC entry 3186 (class 2606 OID 19318)
-- Name: sectores_sucursales sectores_sucursales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sectores_sucursales
    ADD CONSTRAINT sectores_sucursales_pkey PRIMARY KEY (id);


--
-- TOC entry 3188 (class 2606 OID 19326)
-- Name: sexos sexos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sexos
    ADD CONSTRAINT sexos_pkey PRIMARY KEY (id_sexo);


--
-- TOC entry 3182 (class 2606 OID 19299)
-- Name: sucursales sucursales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sucursales
    ADD CONSTRAINT sucursales_pkey PRIMARY KEY (id_sucursal);


--
-- TOC entry 3196 (class 2606 OID 19370)
-- Name: tarjetas tarjetas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarjetas
    ADD CONSTRAINT tarjetas_pkey PRIMARY KEY (id_tarjeta);


--
-- TOC entry 3192 (class 2606 OID 19348)
-- Name: tipos_doc tipos_doc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_doc
    ADD CONSTRAINT tipos_doc_pkey PRIMARY KEY (id_tipo_doc);


--
-- TOC entry 3200 (class 2606 OID 19389)
-- Name: tipos_empleados tipos_empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_empleados
    ADD CONSTRAINT tipos_empleados_pkey PRIMARY KEY (id_tipo_empleado);


--
-- TOC entry 3206 (class 2606 OID 19413)
-- Name: turnos_dias turnos_dias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnos_dias
    ADD CONSTRAINT turnos_dias_pkey PRIMARY KEY (id_turno_dia);


--
-- TOC entry 3202 (class 2606 OID 19397)
-- Name: turnos turnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnos
    ADD CONSTRAINT turnos_pkey PRIMARY KEY (id_turno);


--
-- TOC entry 3198 (class 2606 OID 19381)
-- Name: visitas visitas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT visitas_pkey PRIMARY KEY (id_visita);


--
-- TOC entry 3238 (class 1259 OID 19855)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3243 (class 1259 OID 19792)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3246 (class 1259 OID 19793)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3233 (class 1259 OID 19778)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3254 (class 1259 OID 19808)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3257 (class 1259 OID 19807)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3260 (class 1259 OID 19822)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3263 (class 1259 OID 19821)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3251 (class 1259 OID 19849)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3266 (class 1259 OID 19845)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3269 (class 1259 OID 19846)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3270 (class 1259 OID 19865)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3273 (class 1259 OID 19864)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3313 (class 2606 OID 19787)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3312 (class 2606 OID 19782)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3311 (class 2606 OID 19773)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3315 (class 2606 OID 19802)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3314 (class 2606 OID 19797)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3317 (class 2606 OID 19816)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3316 (class 2606 OID 19811)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3277 (class 2606 OID 19517)
-- Name: calendario_feriados calendario_feriados_id_calendario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calendario_feriados
    ADD CONSTRAINT calendario_feriados_id_calendario_fkey FOREIGN KEY (id_calendario) REFERENCES public.calendarios(id_calendario);


--
-- TOC entry 3276 (class 2606 OID 19512)
-- Name: calendario_feriados calendario_feriados_id_feriado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calendario_feriados
    ADD CONSTRAINT calendario_feriados_id_feriado_fkey FOREIGN KEY (id_feriado) REFERENCES public.feriados(id_feriado);


--
-- TOC entry 3308 (class 2606 OID 19682)
-- Name: det_calculo_mensual det_calculo_mensual_id_calculo_mensual_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.det_calculo_mensual
    ADD CONSTRAINT det_calculo_mensual_id_calculo_mensual_fkey FOREIGN KEY (id_calculo_mensual) REFERENCES public.calculo_mensual(id_calculo);


--
-- TOC entry 3306 (class 2606 OID 19672)
-- Name: det_calculo_mensual det_calculo_mensual_id_empleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.det_calculo_mensual
    ADD CONSTRAINT det_calculo_mensual_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleados(id_empleado);


--
-- TOC entry 3307 (class 2606 OID 19677)
-- Name: det_calculo_mensual det_calculo_mensual_id_marca_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.det_calculo_mensual
    ADD CONSTRAINT det_calculo_mensual_id_marca_fkey FOREIGN KEY (id_marca) REFERENCES public.marcas(id_marca);


--
-- TOC entry 3305 (class 2606 OID 19667)
-- Name: det_calculo_mensual det_calculo_mensual_id_turno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.det_calculo_mensual
    ADD CONSTRAINT det_calculo_mensual_id_turno_fkey FOREIGN KEY (id_turno) REFERENCES public.turnos(id_turno);


--
-- TOC entry 3318 (class 2606 OID 19835)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3319 (class 2606 OID 19840)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3295 (class 2606 OID 19607)
-- Name: empleados empleados_id_estado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_estado_fkey FOREIGN KEY (id_estado) REFERENCES public.estados(id_estado);


--
-- TOC entry 3296 (class 2606 OID 19612)
-- Name: empleados empleados_id_persona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_persona_fkey FOREIGN KEY (id_persona) REFERENCES public.personas(id_persona);


--
-- TOC entry 3299 (class 2606 OID 19627)
-- Name: empleados empleados_id_puesto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_puesto_fkey FOREIGN KEY (id_puesto) REFERENCES public.puestos(id_puesto);


--
-- TOC entry 3298 (class 2606 OID 19622)
-- Name: empleados empleados_id_sector_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_sector_fkey FOREIGN KEY (id_sector) REFERENCES public.sectores(id_sector);


--
-- TOC entry 3297 (class 2606 OID 19617)
-- Name: empleados empleados_id_sucursal_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_sucursal_fkey FOREIGN KEY (id_sucursal) REFERENCES public.sucursales(id_sucursal);


--
-- TOC entry 3294 (class 2606 OID 19602)
-- Name: empleados empleados_id_tipo_empleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_tipo_empleado_fkey FOREIGN KEY (id_tipo_empleado) REFERENCES public.tipos_empleados(id_tipo_empleado);


--
-- TOC entry 3278 (class 2606 OID 19532)
-- Name: empresas empresas_id_localidad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT empresas_id_localidad_fkey FOREIGN KEY (id_localidad) REFERENCES public.localidades(id_localidad);


--
-- TOC entry 3302 (class 2606 OID 19652)
-- Name: licencias licencias_id_comprobante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licencias
    ADD CONSTRAINT licencias_id_comprobante_fkey FOREIGN KEY (id_comprobante) REFERENCES public.comprobantes(id_comprobante);


--
-- TOC entry 3300 (class 2606 OID 19642)
-- Name: licencias licencias_id_empleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licencias
    ADD CONSTRAINT licencias_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleados(id_empleado);


--
-- TOC entry 3301 (class 2606 OID 19647)
-- Name: licencias licencias_id_motivo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licencias
    ADD CONSTRAINT licencias_id_motivo_fkey FOREIGN KEY (id_motivo) REFERENCES public.motivos(id_motivo);


--
-- TOC entry 3275 (class 2606 OID 19527)
-- Name: localidades localidades_id_provincia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.localidades
    ADD CONSTRAINT localidades_id_provincia_fkey FOREIGN KEY (id_provincia) REFERENCES public.provincias(id_provincia);


--
-- TOC entry 3303 (class 2606 OID 19657)
-- Name: marcas marcas_id_empleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marcas_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleados(id_empleado);


--
-- TOC entry 3304 (class 2606 OID 19662)
-- Name: marcas marcas_id_motivo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marcas_id_motivo_fkey FOREIGN KEY (id_motivo) REFERENCES public.motivos(id_motivo);


--
-- TOC entry 3286 (class 2606 OID 19562)
-- Name: personas personas_id_sexo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_id_sexo_fkey FOREIGN KEY (id_sexo) REFERENCES public.sexos(id_sexo);


--
-- TOC entry 3285 (class 2606 OID 19557)
-- Name: personas personas_id_tipo_doc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_id_tipo_doc_fkey FOREIGN KEY (id_tipo_doc) REFERENCES public.tipos_doc(id_tipo_doc);


--
-- TOC entry 3274 (class 2606 OID 19522)
-- Name: provincias provincias_id_pais_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincias
    ADD CONSTRAINT provincias_id_pais_fkey FOREIGN KEY (id_pais) REFERENCES public.paises(id_pais);


--
-- TOC entry 3310 (class 2606 OID 19692)
-- Name: relojes relojes_id_sector_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relojes
    ADD CONSTRAINT relojes_id_sector_fkey FOREIGN KEY (id_sector) REFERENCES public.sectores(id_sector);


--
-- TOC entry 3309 (class 2606 OID 19687)
-- Name: relojes relojes_id_sucursal_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relojes
    ADD CONSTRAINT relojes_id_sucursal_fkey FOREIGN KEY (id_sucursal) REFERENCES public.sucursales(id_sucursal);


--
-- TOC entry 3281 (class 2606 OID 19632)
-- Name: sectores sectores_id_empleado_jefe_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sectores
    ADD CONSTRAINT sectores_id_empleado_jefe_fkey FOREIGN KEY (id_empleado_jefe) REFERENCES public.empleados(id_empleado);


--
-- TOC entry 3284 (class 2606 OID 19637)
-- Name: sectores_sucursales sectores_sucursales_id_empleado_jefe_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sectores_sucursales
    ADD CONSTRAINT sectores_sucursales_id_empleado_jefe_fkey FOREIGN KEY (id_empleado_jefe) REFERENCES public.empleados(id_empleado);


--
-- TOC entry 3283 (class 2606 OID 19552)
-- Name: sectores_sucursales sectores_sucursales_id_sector_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sectores_sucursales
    ADD CONSTRAINT sectores_sucursales_id_sector_fkey FOREIGN KEY (id_sector) REFERENCES public.sectores(id_sector);


--
-- TOC entry 3282 (class 2606 OID 19547)
-- Name: sectores_sucursales sectores_sucursales_id_sucursal_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sectores_sucursales
    ADD CONSTRAINT sectores_sucursales_id_sucursal_fkey FOREIGN KEY (id_sucursal) REFERENCES public.sucursales(id_sucursal);


--
-- TOC entry 3280 (class 2606 OID 19542)
-- Name: sucursales sucursales_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sucursales
    ADD CONSTRAINT sucursales_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresas(id_empresa);


--
-- TOC entry 3279 (class 2606 OID 19537)
-- Name: sucursales sucursales_id_localidad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sucursales
    ADD CONSTRAINT sucursales_id_localidad_fkey FOREIGN KEY (id_localidad) REFERENCES public.localidades(id_localidad);


--
-- TOC entry 3293 (class 2606 OID 19597)
-- Name: turnos_dias turnos_dias_id_turno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnos_dias
    ADD CONSTRAINT turnos_dias_id_turno_fkey FOREIGN KEY (id_turno) REFERENCES public.turnos(id_turno);


--
-- TOC entry 3292 (class 2606 OID 19592)
-- Name: turnos turnos_id_presentismo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnos
    ADD CONSTRAINT turnos_id_presentismo_fkey FOREIGN KEY (id_presentismo) REFERENCES public.presentismos(id_presentismo);


--
-- TOC entry 3290 (class 2606 OID 19582)
-- Name: visitas visitas_id_sector_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT visitas_id_sector_fkey FOREIGN KEY (id_sector) REFERENCES public.sectores(id_sector);


--
-- TOC entry 3288 (class 2606 OID 19572)
-- Name: visitas visitas_id_sexo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT visitas_id_sexo_fkey FOREIGN KEY (id_sexo) REFERENCES public.sexos(id_sexo);


--
-- TOC entry 3289 (class 2606 OID 19577)
-- Name: visitas visitas_id_sucursal_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT visitas_id_sucursal_fkey FOREIGN KEY (id_sucursal) REFERENCES public.sucursales(id_sucursal);


--
-- TOC entry 3291 (class 2606 OID 19587)
-- Name: visitas visitas_id_tarjeta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT visitas_id_tarjeta_fkey FOREIGN KEY (id_tarjeta) REFERENCES public.tarjetas(id_tarjeta);


--
-- TOC entry 3287 (class 2606 OID 19567)
-- Name: visitas visitas_id_tipo_doc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT visitas_id_tipo_doc_fkey FOREIGN KEY (id_tipo_doc) REFERENCES public.tipos_doc(id_tipo_doc);


-- Completed on 2021-04-28 10:04:38 -03

--
-- PostgreSQL database dump complete
--

