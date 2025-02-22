PGDMP     &                    y            conasis #   12.7 (Ubuntu 12.7-0ubuntu0.20.04.1) #   12.7 (Ubuntu 12.7-0ubuntu0.20.04.1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17589    conasis    DATABASE     y   CREATE DATABASE conasis WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_AR.UTF-8' LC_CTYPE = 'es_AR.UTF-8';
    DROP DATABASE conasis;
                postgres    false            �            1259    17621 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17619    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    17631    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17629    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    17613    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17611    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    17744    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    17742    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    221            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    220            �            1259    17603    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17601    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    17592    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17590    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    17876    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17822    estados    TABLE     S   CREATE TABLE public.estados (
    id integer NOT NULL,
    nombre text NOT NULL
);
    DROP TABLE public.estados;
       public         heap    postgres    false            �            1259    17820    estados_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.estados_id_seq;
       public          postgres    false    229            �           0    0    estados_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.estados_id_seq OWNED BY public.estados.id;
          public          postgres    false    228            �            1259    17792    localidades    TABLE     �   CREATE TABLE public.localidades (
    id integer NOT NULL,
    nombre text NOT NULL,
    codigo_postal text,
    pais_id integer NOT NULL,
    provincia_id integer NOT NULL
);
    DROP TABLE public.localidades;
       public         heap    postgres    false            �            1259    17790    localidades_id_seq    SEQUENCE     �   CREATE SEQUENCE public.localidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.localidades_id_seq;
       public          postgres    false    227            �           0    0    localidades_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.localidades_id_seq OWNED BY public.localidades.id;
          public          postgres    false    226            �            1259    17768    paises    TABLE     R   CREATE TABLE public.paises (
    id integer NOT NULL,
    nombre text NOT NULL
);
    DROP TABLE public.paises;
       public         heap    postgres    false            �            1259    17766    paises_id_seq    SEQUENCE     �   CREATE SEQUENCE public.paises_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.paises_id_seq;
       public          postgres    false    223            �           0    0    paises_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.paises_id_seq OWNED BY public.paises.id;
          public          postgres    false    222            �            1259    17781 
   provincias    TABLE     t   CREATE TABLE public.provincias (
    id integer NOT NULL,
    nombre text NOT NULL,
    pais_id integer NOT NULL
);
    DROP TABLE public.provincias;
       public         heap    postgres    false            �            1259    17779    provincias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.provincias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.provincias_id_seq;
       public          postgres    false    225            �           0    0    provincias_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.provincias_id_seq OWNED BY public.provincias.id;
          public          postgres    false    224            �            1259    17835    sexos    TABLE     Q   CREATE TABLE public.sexos (
    id integer NOT NULL,
    nombre text NOT NULL
);
    DROP TABLE public.sexos;
       public         heap    postgres    false            �            1259    17833    sexos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sexos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.sexos_id_seq;
       public          postgres    false    231            �           0    0    sexos_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.sexos_id_seq OWNED BY public.sexos.id;
          public          postgres    false    230            �            1259    17848    tarjetas_aproximacion    TABLE     r   CREATE TABLE public.tarjetas_aproximacion (
    id integer NOT NULL,
    nombre text NOT NULL,
    codigo text
);
 )   DROP TABLE public.tarjetas_aproximacion;
       public         heap    postgres    false            �            1259    17846    tarjetas_aproximacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tarjetas_aproximacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tarjetas_aproximacion_id_seq;
       public          postgres    false    233            �           0    0    tarjetas_aproximacion_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tarjetas_aproximacion_id_seq OWNED BY public.tarjetas_aproximacion.id;
          public          postgres    false    232            �            1259    17861    tipos_documentos    TABLE     r   CREATE TABLE public.tipos_documentos (
    id integer NOT NULL,
    nombre text NOT NULL,
    descripcion text
);
 $   DROP TABLE public.tipos_documentos;
       public         heap    postgres    false            �            1259    17859    tipos_documentos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipos_documentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tipos_documentos_id_seq;
       public          postgres    false    235            �           0    0    tipos_documentos_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tipos_documentos_id_seq OWNED BY public.tipos_documentos.id;
          public          postgres    false    234            �            1259    17665    usuarios_tipos    TABLE     Z   CREATE TABLE public.usuarios_tipos (
    id integer NOT NULL,
    nombre text NOT NULL
);
 "   DROP TABLE public.usuarios_tipos;
       public         heap    postgres    false            �            1259    17663    usuarios_tipos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_tipos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuarios_tipos_id_seq;
       public          postgres    false    213            �           0    0    usuarios_tipos_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.usuarios_tipos_id_seq OWNED BY public.usuarios_tipos.id;
          public          postgres    false    212            �            1259    17678    usuarios_usuarios    TABLE     �  CREATE TABLE public.usuarios_usuarios (
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
    date_joined timestamp with time zone NOT NULL,
    legajo character varying(10),
    dni integer,
    telefono text,
    tipo_id integer NOT NULL,
    CONSTRAINT usuarios_usuarios_dni_check CHECK ((dni >= 0))
);
 %   DROP TABLE public.usuarios_usuarios;
       public         heap    postgres    false            �            1259    17692    usuarios_usuarios_groups    TABLE     �   CREATE TABLE public.usuarios_usuarios_groups (
    id integer NOT NULL,
    usuarios_id integer NOT NULL,
    group_id integer NOT NULL
);
 ,   DROP TABLE public.usuarios_usuarios_groups;
       public         heap    postgres    false            �            1259    17690    usuarios_usuarios_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_usuarios_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.usuarios_usuarios_groups_id_seq;
       public          postgres    false    217            �           0    0    usuarios_usuarios_groups_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.usuarios_usuarios_groups_id_seq OWNED BY public.usuarios_usuarios_groups.id;
          public          postgres    false    216            �            1259    17676    usuarios_usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.usuarios_usuarios_id_seq;
       public          postgres    false    215            �           0    0    usuarios_usuarios_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.usuarios_usuarios_id_seq OWNED BY public.usuarios_usuarios.id;
          public          postgres    false    214            �            1259    17700 "   usuarios_usuarios_user_permissions    TABLE     �   CREATE TABLE public.usuarios_usuarios_user_permissions (
    id integer NOT NULL,
    usuarios_id integer NOT NULL,
    permission_id integer NOT NULL
);
 6   DROP TABLE public.usuarios_usuarios_user_permissions;
       public         heap    postgres    false            �            1259    17698 )   usuarios_usuarios_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_usuarios_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.usuarios_usuarios_user_permissions_id_seq;
       public          postgres    false    219            �           0    0 )   usuarios_usuarios_user_permissions_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.usuarios_usuarios_user_permissions_id_seq OWNED BY public.usuarios_usuarios_user_permissions.id;
          public          postgres    false    218            �           2604    17917    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �           2604    17918    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �           2604    17919    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �           2604    17920    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    17921    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �           2604    17922    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �           2604    17923 
   estados id    DEFAULT     h   ALTER TABLE ONLY public.estados ALTER COLUMN id SET DEFAULT nextval('public.estados_id_seq'::regclass);
 9   ALTER TABLE public.estados ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    17924    localidades id    DEFAULT     p   ALTER TABLE ONLY public.localidades ALTER COLUMN id SET DEFAULT nextval('public.localidades_id_seq'::regclass);
 =   ALTER TABLE public.localidades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    17925 	   paises id    DEFAULT     f   ALTER TABLE ONLY public.paises ALTER COLUMN id SET DEFAULT nextval('public.paises_id_seq'::regclass);
 8   ALTER TABLE public.paises ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    17926    provincias id    DEFAULT     n   ALTER TABLE ONLY public.provincias ALTER COLUMN id SET DEFAULT nextval('public.provincias_id_seq'::regclass);
 <   ALTER TABLE public.provincias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    17927    sexos id    DEFAULT     d   ALTER TABLE ONLY public.sexos ALTER COLUMN id SET DEFAULT nextval('public.sexos_id_seq'::regclass);
 7   ALTER TABLE public.sexos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    17928    tarjetas_aproximacion id    DEFAULT     �   ALTER TABLE ONLY public.tarjetas_aproximacion ALTER COLUMN id SET DEFAULT nextval('public.tarjetas_aproximacion_id_seq'::regclass);
 G   ALTER TABLE public.tarjetas_aproximacion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    17929    tipos_documentos id    DEFAULT     z   ALTER TABLE ONLY public.tipos_documentos ALTER COLUMN id SET DEFAULT nextval('public.tipos_documentos_id_seq'::regclass);
 B   ALTER TABLE public.tipos_documentos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    17930    usuarios_tipos id    DEFAULT     v   ALTER TABLE ONLY public.usuarios_tipos ALTER COLUMN id SET DEFAULT nextval('public.usuarios_tipos_id_seq'::regclass);
 @   ALTER TABLE public.usuarios_tipos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    17931    usuarios_usuarios id    DEFAULT     |   ALTER TABLE ONLY public.usuarios_usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_usuarios_id_seq'::regclass);
 C   ALTER TABLE public.usuarios_usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    17932    usuarios_usuarios_groups id    DEFAULT     �   ALTER TABLE ONLY public.usuarios_usuarios_groups ALTER COLUMN id SET DEFAULT nextval('public.usuarios_usuarios_groups_id_seq'::regclass);
 J   ALTER TABLE public.usuarios_usuarios_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    17933 %   usuarios_usuarios_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.usuarios_usuarios_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.usuarios_usuarios_user_permissions_id_seq'::regclass);
 T   ALTER TABLE public.usuarios_usuarios_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �          0    17621 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   _�       �          0    17631    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   ��       �          0    17613    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   �       �          0    17744    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    221   n�       �          0    17603    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   Q�       �          0    17592    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �       �          0    17876    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    236   )�       �          0    17822    estados 
   TABLE DATA           -   COPY public.estados (id, nombre) FROM stdin;
    public          postgres    false    229   ��       �          0    17792    localidades 
   TABLE DATA           W   COPY public.localidades (id, nombre, codigo_postal, pais_id, provincia_id) FROM stdin;
    public          postgres    false    227   ��       �          0    17768    paises 
   TABLE DATA           ,   COPY public.paises (id, nombre) FROM stdin;
    public          postgres    false    223   T�       �          0    17781 
   provincias 
   TABLE DATA           9   COPY public.provincias (id, nombre, pais_id) FROM stdin;
    public          postgres    false    225   ��       �          0    17835    sexos 
   TABLE DATA           +   COPY public.sexos (id, nombre) FROM stdin;
    public          postgres    false    231   
�       �          0    17848    tarjetas_aproximacion 
   TABLE DATA           C   COPY public.tarjetas_aproximacion (id, nombre, codigo) FROM stdin;
    public          postgres    false    233   H�       �          0    17861    tipos_documentos 
   TABLE DATA           C   COPY public.tipos_documentos (id, nombre, descripcion) FROM stdin;
    public          postgres    false    235   ��       �          0    17665    usuarios_tipos 
   TABLE DATA           4   COPY public.usuarios_tipos (id, nombre) FROM stdin;
    public          postgres    false    213   �       �          0    17678    usuarios_usuarios 
   TABLE DATA           �   COPY public.usuarios_usuarios (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, legajo, dni, telefono, tipo_id) FROM stdin;
    public          postgres    false    215   |�       �          0    17692    usuarios_usuarios_groups 
   TABLE DATA           M   COPY public.usuarios_usuarios_groups (id, usuarios_id, group_id) FROM stdin;
    public          postgres    false    217   ��       �          0    17700 "   usuarios_usuarios_user_permissions 
   TABLE DATA           \   COPY public.usuarios_usuarios_user_permissions (id, usuarios_id, permission_id) FROM stdin;
    public          postgres    false    219   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 32, true);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          postgres    false    206            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 6, true);
          public          postgres    false    220            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);
          public          postgres    false    202            �           0    0    estados_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.estados_id_seq', 3, true);
          public          postgres    false    228            �           0    0    localidades_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.localidades_id_seq', 7, true);
          public          postgres    false    226            �           0    0    paises_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.paises_id_seq', 14, true);
          public          postgres    false    222            �           0    0    provincias_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.provincias_id_seq', 6, true);
          public          postgres    false    224            �           0    0    sexos_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.sexos_id_seq', 4, true);
          public          postgres    false    230            �           0    0    tarjetas_aproximacion_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tarjetas_aproximacion_id_seq', 4, true);
          public          postgres    false    232            �           0    0    tipos_documentos_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tipos_documentos_id_seq', 6, true);
          public          postgres    false    234            �           0    0    usuarios_tipos_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.usuarios_tipos_id_seq', 6, true);
          public          postgres    false    212            �           0    0    usuarios_usuarios_groups_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.usuarios_usuarios_groups_id_seq', 2, true);
          public          postgres    false    216            �           0    0    usuarios_usuarios_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.usuarios_usuarios_id_seq', 7, true);
          public          postgres    false    214            �           0    0 )   usuarios_usuarios_user_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.usuarios_usuarios_user_permissions_id_seq', 4, true);
          public          postgres    false    218            �           2606    17661    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �           2606    17647 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            �           2606    17636 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �           2606    17626    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �           2606    17638 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �           2606    17618 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            �           2606    17753 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    221            �           2606    17610 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �           2606    17608 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �           2606    17600 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203                       2606    17883 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    236            �           2606    17832    estados estados_nombre_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.estados
    ADD CONSTRAINT estados_nombre_key UNIQUE (nombre);
 D   ALTER TABLE ONLY public.estados DROP CONSTRAINT estados_nombre_key;
       public            postgres    false    229            �           2606    17830    estados estados_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.estados
    ADD CONSTRAINT estados_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.estados DROP CONSTRAINT estados_pkey;
       public            postgres    false    229            �           2606    17800    localidades localidades_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.localidades
    ADD CONSTRAINT localidades_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.localidades DROP CONSTRAINT localidades_pkey;
       public            postgres    false    227            �           2606    17778    paises paises_nombre_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.paises
    ADD CONSTRAINT paises_nombre_key UNIQUE (nombre);
 B   ALTER TABLE ONLY public.paises DROP CONSTRAINT paises_nombre_key;
       public            postgres    false    223            �           2606    17776    paises paises_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.paises
    ADD CONSTRAINT paises_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.paises DROP CONSTRAINT paises_pkey;
       public            postgres    false    223            �           2606    17789    provincias provincias_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.provincias
    ADD CONSTRAINT provincias_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.provincias DROP CONSTRAINT provincias_pkey;
       public            postgres    false    225            �           2606    17845    sexos sexos_nombre_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.sexos
    ADD CONSTRAINT sexos_nombre_key UNIQUE (nombre);
 @   ALTER TABLE ONLY public.sexos DROP CONSTRAINT sexos_nombre_key;
       public            postgres    false    231                       2606    17843    sexos sexos_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sexos
    ADD CONSTRAINT sexos_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sexos DROP CONSTRAINT sexos_pkey;
       public            postgres    false    231                       2606    17858 6   tarjetas_aproximacion tarjetas_aproximacion_nombre_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.tarjetas_aproximacion
    ADD CONSTRAINT tarjetas_aproximacion_nombre_key UNIQUE (nombre);
 `   ALTER TABLE ONLY public.tarjetas_aproximacion DROP CONSTRAINT tarjetas_aproximacion_nombre_key;
       public            postgres    false    233                       2606    17856 0   tarjetas_aproximacion tarjetas_aproximacion_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tarjetas_aproximacion
    ADD CONSTRAINT tarjetas_aproximacion_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.tarjetas_aproximacion DROP CONSTRAINT tarjetas_aproximacion_pkey;
       public            postgres    false    233            	           2606    17871 ,   tipos_documentos tipos_documentos_nombre_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.tipos_documentos
    ADD CONSTRAINT tipos_documentos_nombre_key UNIQUE (nombre);
 V   ALTER TABLE ONLY public.tipos_documentos DROP CONSTRAINT tipos_documentos_nombre_key;
       public            postgres    false    235                       2606    17869 &   tipos_documentos tipos_documentos_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tipos_documentos
    ADD CONSTRAINT tipos_documentos_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tipos_documentos DROP CONSTRAINT tipos_documentos_pkey;
       public            postgres    false    235            �           2606    17675 (   usuarios_tipos usuarios_tipos_nombre_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.usuarios_tipos
    ADD CONSTRAINT usuarios_tipos_nombre_key UNIQUE (nombre);
 R   ALTER TABLE ONLY public.usuarios_tipos DROP CONSTRAINT usuarios_tipos_nombre_key;
       public            postgres    false    213            �           2606    17673 "   usuarios_tipos usuarios_tipos_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.usuarios_tipos
    ADD CONSTRAINT usuarios_tipos_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.usuarios_tipos DROP CONSTRAINT usuarios_tipos_pkey;
       public            postgres    false    213            �           2606    17697 6   usuarios_usuarios_groups usuarios_usuarios_groups_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.usuarios_usuarios_groups
    ADD CONSTRAINT usuarios_usuarios_groups_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.usuarios_usuarios_groups DROP CONSTRAINT usuarios_usuarios_groups_pkey;
       public            postgres    false    217            �           2606    17715 T   usuarios_usuarios_groups usuarios_usuarios_groups_usuarios_id_group_id_31056d4d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_usuarios_groups
    ADD CONSTRAINT usuarios_usuarios_groups_usuarios_id_group_id_31056d4d_uniq UNIQUE (usuarios_id, group_id);
 ~   ALTER TABLE ONLY public.usuarios_usuarios_groups DROP CONSTRAINT usuarios_usuarios_groups_usuarios_id_group_id_31056d4d_uniq;
       public            postgres    false    217    217            �           2606    17687 (   usuarios_usuarios usuarios_usuarios_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.usuarios_usuarios
    ADD CONSTRAINT usuarios_usuarios_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.usuarios_usuarios DROP CONSTRAINT usuarios_usuarios_pkey;
       public            postgres    false    215            �           2606    17729 b   usuarios_usuarios_user_permissions usuarios_usuarios_user_p_usuarios_id_permission_i_1fb72da5_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_usuarios_user_permissions
    ADD CONSTRAINT usuarios_usuarios_user_p_usuarios_id_permission_i_1fb72da5_uniq UNIQUE (usuarios_id, permission_id);
 �   ALTER TABLE ONLY public.usuarios_usuarios_user_permissions DROP CONSTRAINT usuarios_usuarios_user_p_usuarios_id_permission_i_1fb72da5_uniq;
       public            postgres    false    219    219            �           2606    17705 J   usuarios_usuarios_user_permissions usuarios_usuarios_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_usuarios_user_permissions
    ADD CONSTRAINT usuarios_usuarios_user_permissions_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.usuarios_usuarios_user_permissions DROP CONSTRAINT usuarios_usuarios_user_permissions_pkey;
       public            postgres    false    219            �           2606    17689 0   usuarios_usuarios usuarios_usuarios_username_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.usuarios_usuarios
    ADD CONSTRAINT usuarios_usuarios_username_key UNIQUE (username);
 Z   ALTER TABLE ONLY public.usuarios_usuarios DROP CONSTRAINT usuarios_usuarios_username_key;
       public            postgres    false    215            �           1259    17662    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �           1259    17658 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �           1259    17659 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �           1259    17644 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            �           1259    17764 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    221            �           1259    17765 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    221                       1259    17885 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    236                       1259    17884 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    236            �           1259    17872    estados_nombre_41ee7c89_like    INDEX     c   CREATE INDEX estados_nombre_41ee7c89_like ON public.estados USING btree (nombre text_pattern_ops);
 0   DROP INDEX public.estados_nombre_41ee7c89_like;
       public            postgres    false    229            �           1259    17818    localidades_pais_id_d3b2f5f9    INDEX     W   CREATE INDEX localidades_pais_id_d3b2f5f9 ON public.localidades USING btree (pais_id);
 0   DROP INDEX public.localidades_pais_id_d3b2f5f9;
       public            postgres    false    227            �           1259    17819 !   localidades_provincia_id_0bb33e1a    INDEX     a   CREATE INDEX localidades_provincia_id_0bb33e1a ON public.localidades USING btree (provincia_id);
 5   DROP INDEX public.localidades_provincia_id_0bb33e1a;
       public            postgres    false    227            �           1259    17801    paises_nombre_07bcedcc_like    INDEX     a   CREATE INDEX paises_nombre_07bcedcc_like ON public.paises USING btree (nombre text_pattern_ops);
 /   DROP INDEX public.paises_nombre_07bcedcc_like;
       public            postgres    false    223            �           1259    17807    provincias_pais_id_03cbdd0b    INDEX     U   CREATE INDEX provincias_pais_id_03cbdd0b ON public.provincias USING btree (pais_id);
 /   DROP INDEX public.provincias_pais_id_03cbdd0b;
       public            postgres    false    225            �           1259    17873    sexos_nombre_ace8caa4_like    INDEX     _   CREATE INDEX sexos_nombre_ace8caa4_like ON public.sexos USING btree (nombre text_pattern_ops);
 .   DROP INDEX public.sexos_nombre_ace8caa4_like;
       public            postgres    false    231                       1259    17874 *   tarjetas_aproximacion_nombre_f7adee59_like    INDEX        CREATE INDEX tarjetas_aproximacion_nombre_f7adee59_like ON public.tarjetas_aproximacion USING btree (nombre text_pattern_ops);
 >   DROP INDEX public.tarjetas_aproximacion_nombre_f7adee59_like;
       public            postgres    false    233                       1259    17875 %   tipos_documentos_nombre_5e8ed6ca_like    INDEX     u   CREATE INDEX tipos_documentos_nombre_5e8ed6ca_like ON public.tipos_documentos USING btree (nombre text_pattern_ops);
 9   DROP INDEX public.tipos_documentos_nombre_5e8ed6ca_like;
       public            postgres    false    235            �           1259    17706 #   usuarios_tipos_nombre_aa169b43_like    INDEX     q   CREATE INDEX usuarios_tipos_nombre_aa169b43_like ON public.usuarios_tipos USING btree (nombre text_pattern_ops);
 7   DROP INDEX public.usuarios_tipos_nombre_aa169b43_like;
       public            postgres    false    213            �           1259    17727 *   usuarios_usuarios_groups_group_id_1e265f46    INDEX     s   CREATE INDEX usuarios_usuarios_groups_group_id_1e265f46 ON public.usuarios_usuarios_groups USING btree (group_id);
 >   DROP INDEX public.usuarios_usuarios_groups_group_id_1e265f46;
       public            postgres    false    217            �           1259    17726 -   usuarios_usuarios_groups_usuarios_id_65c166be    INDEX     y   CREATE INDEX usuarios_usuarios_groups_usuarios_id_65c166be ON public.usuarios_usuarios_groups USING btree (usuarios_id);
 A   DROP INDEX public.usuarios_usuarios_groups_usuarios_id_65c166be;
       public            postgres    false    217            �           1259    17940 "   usuarios_usuarios_tipo_id_df652c50    INDEX     c   CREATE INDEX usuarios_usuarios_tipo_id_df652c50 ON public.usuarios_usuarios USING btree (tipo_id);
 6   DROP INDEX public.usuarios_usuarios_tipo_id_df652c50;
       public            postgres    false    215            �           1259    17741 9   usuarios_usuarios_user_permissions_permission_id_394f07a6    INDEX     �   CREATE INDEX usuarios_usuarios_user_permissions_permission_id_394f07a6 ON public.usuarios_usuarios_user_permissions USING btree (permission_id);
 M   DROP INDEX public.usuarios_usuarios_user_permissions_permission_id_394f07a6;
       public            postgres    false    219            �           1259    17740 7   usuarios_usuarios_user_permissions_usuarios_id_d860a7b5    INDEX     �   CREATE INDEX usuarios_usuarios_user_permissions_usuarios_id_d860a7b5 ON public.usuarios_usuarios_user_permissions USING btree (usuarios_id);
 K   DROP INDEX public.usuarios_usuarios_user_permissions_usuarios_id_d860a7b5;
       public            postgres    false    219            �           1259    17712 (   usuarios_usuarios_username_94c55da1_like    INDEX     ~   CREATE INDEX usuarios_usuarios_username_94c55da1_like ON public.usuarios_usuarios USING btree (username varchar_pattern_ops);
 <   DROP INDEX public.usuarios_usuarios_username_94c55da1_like;
       public            postgres    false    215                       2606    17653 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    211    3013                       2606    17648 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    3018    209                       2606    17639 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    207    3008                       2606    17754 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    221    205    3008                       2606    17759 J   django_admin_log django_admin_log_user_id_c564eba6_fk_usuarios_usuarios_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_usuarios_usuarios_id FOREIGN KEY (user_id) REFERENCES public.usuarios_usuarios(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_usuarios_usuarios_id;
       public          postgres    false    3031    215    221                       2606    17808 5   localidades localidades_pais_id_d3b2f5f9_fk_paises_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.localidades
    ADD CONSTRAINT localidades_pais_id_d3b2f5f9_fk_paises_id FOREIGN KEY (pais_id) REFERENCES public.paises(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.localidades DROP CONSTRAINT localidades_pais_id_d3b2f5f9_fk_paises_id;
       public          postgres    false    227    3056    223                       2606    17813 >   localidades localidades_provincia_id_0bb33e1a_fk_provincias_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.localidades
    ADD CONSTRAINT localidades_provincia_id_0bb33e1a_fk_provincias_id FOREIGN KEY (provincia_id) REFERENCES public.provincias(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.localidades DROP CONSTRAINT localidades_provincia_id_0bb33e1a_fk_provincias_id;
       public          postgres    false    227    3059    225                       2606    17802 3   provincias provincias_pais_id_03cbdd0b_fk_paises_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.provincias
    ADD CONSTRAINT provincias_pais_id_03cbdd0b_fk_paises_id FOREIGN KEY (pais_id) REFERENCES public.paises(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.provincias DROP CONSTRAINT provincias_pais_id_03cbdd0b_fk_paises_id;
       public          postgres    false    225    223    3056                       2606    17716 O   usuarios_usuarios_groups usuarios_usuarios_gr_usuarios_id_65c166be_fk_usuarios_    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_usuarios_groups
    ADD CONSTRAINT usuarios_usuarios_gr_usuarios_id_65c166be_fk_usuarios_ FOREIGN KEY (usuarios_id) REFERENCES public.usuarios_usuarios(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.usuarios_usuarios_groups DROP CONSTRAINT usuarios_usuarios_gr_usuarios_id_65c166be_fk_usuarios_;
       public          postgres    false    217    215    3031                       2606    17721 T   usuarios_usuarios_groups usuarios_usuarios_groups_group_id_1e265f46_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_usuarios_groups
    ADD CONSTRAINT usuarios_usuarios_groups_group_id_1e265f46_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.usuarios_usuarios_groups DROP CONSTRAINT usuarios_usuarios_groups_group_id_1e265f46_fk_auth_group_id;
       public          postgres    false    209    217    3018                       2606    17935 I   usuarios_usuarios usuarios_usuarios_tipo_id_df652c50_fk_usuarios_tipos_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_usuarios
    ADD CONSTRAINT usuarios_usuarios_tipo_id_df652c50_fk_usuarios_tipos_id FOREIGN KEY (tipo_id) REFERENCES public.usuarios_tipos(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.usuarios_usuarios DROP CONSTRAINT usuarios_usuarios_tipo_id_df652c50_fk_usuarios_tipos_id;
       public          postgres    false    3029    213    215                       2606    17735 [   usuarios_usuarios_user_permissions usuarios_usuarios_us_permission_id_394f07a6_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_usuarios_user_permissions
    ADD CONSTRAINT usuarios_usuarios_us_permission_id_394f07a6_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.usuarios_usuarios_user_permissions DROP CONSTRAINT usuarios_usuarios_us_permission_id_394f07a6_fk_auth_perm;
       public          postgres    false    3013    207    219                       2606    17730 Y   usuarios_usuarios_user_permissions usuarios_usuarios_us_usuarios_id_d860a7b5_fk_usuarios_    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_usuarios_user_permissions
    ADD CONSTRAINT usuarios_usuarios_us_usuarios_id_d860a7b5_fk_usuarios_ FOREIGN KEY (usuarios_id) REFERENCES public.usuarios_usuarios(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.usuarios_usuarios_user_permissions DROP CONSTRAINT usuarios_usuarios_us_usuarios_id_d860a7b5_fk_usuarios_;
       public          postgres    false    3031    215    219            �       x�3�t�KN,JOL�W
��������� X!      �   m   x�α�0��:&'R���K��#f�����~��i�4�ӄ����4Z��>�P��R1����%�Z��A�r�z�q��_�f�z#\o�����&���7����4�      �   R  x�}�Kn�0���)t� z��,���,�D�l���9W�Ћ�932��D~|Q��S��f(L���T�a�>U���������c��T<"���g;K0� �������lv���y��AU�Fz���v��s?�� c�(Hpd�1[��q���Y��\.ݣ"%wJ� R�J���lЍ��]1^�j@��]6\g���[��QQ�;���+�}��6~���M�.Kzf��	C��UϤFXe��F��:�����/~1����* �FR��(�!�2 ^��a�vR{��k�H�A"��A,������:č���Z$��"""�H�?DX��k�ה��i|wC�:F��(�v&Ɗ�s6�1����ѐq��cgή7�
����F]��_-�.�\�D7,��Ŧe$����M?�2��� }b�1c"���\�X�	��P��[���n��{��� �H{Br/ ²� ���������&���K����t���A����x�u+��X��<)���d��<����\��<U��['���r	>DC�ק�0�l��n��!�l�}x7�ۑO�d?��Q[��_OZ���A �      �   �   x���M��0��s�+J������Ӳ��C0Q�.�Q�ﶸ�p��00��J�F�T�#��K@�m$1`�>L���Jt��'�+1��}}��v����t�+NZ��p�h
��A�C��1�����wO�J�zI�k5��JӥϹ���hˆ���d��a���_�4��e��UH._d�w]��x$�P;�_7�[QU��e��      �   �   x�U��n1���0U������Ɇj�X�����m�dsc�aF���"f���]q���mwъ�2����Zc�Ƶ�o��/�Oн��:�4��·�qg�0�NFg�
�d���3������֘5�,��H�4�F��r��2��nK�V�߲ ��X�Ox=�h��xs�>_��'m<      �   
  x���Ꭻ �ۧ�/І@��rBZ꒨�����_@kۻvmb�!���3�8�.�.�ko���v6X�H�����1=x@�	�=�;��D�M뾌�TZQ�n�:J�eB�B��c{s�\pH
�(P�&�z�[;�uyG��o՘����(��/(:��!�L�m�M)��D)
{��W.��aXG0D��D4z�q�����cX�I�@�8����eyN*Y��!Q�B�¨�B�tc�:8?(}>+��5àk󢭒�4 N�Z�� 9& I�p�-�1%��2�j���M�,�̘%� j�EF��}_��#��K���X�f[���ŋq���
:�(����n[á͚���Ϙ0�� �#�����崱�C��2�O!��K�ku�p��"h�!ũ"Y���^_�ɽъ�0<$E�}4:�w|+9�����Cޖ	��2|��rm�>�`{���#���� #}b���x��  R� {��䑈#!�m&h��Q㿋e�
����a���=�ˇ      �   _  x���[��@ ��q���n?�?�t��F�TYMK��<l��O�=�,ᨄ�.&)���@x%[Y��i'�6�g��s_N��OSrq��"2�P�x��F>�^��-��Y6g����VON�|��1�?ٕ����@t=�?��F���l�>"��k�Χ��9.���*Z�ɴNyY��4ȹ�`뵒���Dm9n�si�����XWT�����ک��*����I���SJ��";A�F�`D�;�6���tt�q���F'X�q�+�r�Rn�����q(�`�����v�X���'��32��Z���\5i�C�8c��(�c�&�2�`��=�F�]��&      �   (   x�3�tt���2�tr�r�2��
u��qt������ r#�      �   t   x�%�K
�0����=A��8Y���b?6��?G�x�1�;����!,y�Y�_�0N�/�l�MX�}������z��ҴuIo�m��+m(\9��[�(Cj�=��
����D���2      �   E   x�3�trw���s�2�t
r���2�t���q�2�prtu��2�
�,9�}=��b���� ���      �   Q   x��=�0@�N��Կ�Bu�����oxn	1倊34s�>�@�sq��+���em���ɉ��բ����	?fX�      �   .   x�3�ts�u�����2��uv���9��\\�}��b���� ɿ	      �   G   x�3�q�rqT00�40003�0427S0�4�12��4�2B�0¦����
.�
l*L�b���� �:�      �   k   x�]�A�PE�1��H��� ?1����C�I���}����ng
�S��&Fi���)l�5*�%�_[.������*m��j���k)[|_�q���!�      �   R   x���� F�s;��8@���b
G��C<�/o!Iw�ڇIj�+A�X����/��F'����=��T.�)à�zf�  ��      �   :  x�m��n�@�������F���&ՈŶ
B1��4���*,`|�����L&'9����h�X')���TM�F|:�I�^�xU�L�!l�j���Ogn1}�ck�'��x�������ˣ�����` m����"�)I����2J�rGE%YW�y�mK��C̶Q��R�6��+4S�����Q5�^��@���<�8뱷s���&p_�E�w���X�������'��ӆ�>',I6���&? ��M �dPj`�\����-����"g�\����tc�0�?���
H���s�||^D��$�& }�      �      x�3�4�4����� 	_      �   "   x�3�4�45�2Q�\� ʄ�D�r��qqq L)e     