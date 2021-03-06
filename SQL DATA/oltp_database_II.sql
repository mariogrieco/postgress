PGDMP     1    6                z            oltp_database_II    13.7    13.7 U    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16871    oltp_database_II    DATABASE     ]   CREATE DATABASE "oltp_database_II" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
 "   DROP DATABASE "oltp_database_II";
                postgres    false            ?            1259    17034 	   countries    TABLE     ?   CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying,
    city character varying,
    state character varying
);
    DROP TABLE public.countries;
       public         heap    postgres    false            ?            1259    17032    countries_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public          postgres    false    219            ?           0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
          public          postgres    false    218            ?            1259    16929    devices    TABLE     q   CREATE TABLE public.devices (
    id integer NOT NULL,
    id_os integer NOT NULL,
    name character varying
);
    DROP TABLE public.devices;
       public         heap    postgres    false            ?            1259    16927    devices_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.devices_id_seq;
       public          postgres    false    209            ?           0    0    devices_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;
          public          postgres    false    208            ?            1259    16885    items    TABLE     y   CREATE TABLE public.items (
    id integer NOT NULL,
    name character varying,
    price numeric,
    offer numeric
);
    DROP TABLE public.items;
       public         heap    postgres    false            ?            1259    16883    items_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.items_id_seq;
       public          postgres    false    203            ?           0    0    items_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;
          public          postgres    false    202            ?            1259    16947    items_payment_types    TABLE     ?   CREATE TABLE public.items_payment_types (
    id integer NOT NULL,
    id_item integer NOT NULL,
    id_payment_types integer
);
 '   DROP TABLE public.items_payment_types;
       public         heap    postgres    false            ?            1259    16945    items_payment_types_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.items_payment_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.items_payment_types_id_seq;
       public          postgres    false    211            ?           0    0    items_payment_types_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.items_payment_types_id_seq OWNED BY public.items_payment_types.id;
          public          postgres    false    210            ?            1259    16907    os    TABLE     P   CREATE TABLE public.os (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.os;
       public         heap    postgres    false            ?            1259    16905 	   os_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.os_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.os_id_seq;
       public          postgres    false    207            ?           0    0 	   os_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE public.os_id_seq OWNED BY public.os.id;
          public          postgres    false    206            ?            1259    16896    payment_types    TABLE     ?   CREATE TABLE public.payment_types (
    id integer NOT NULL,
    name character varying,
    sandbox boolean,
    token character varying
);
 !   DROP TABLE public.payment_types;
       public         heap    postgres    false            ?            1259    16894    payment_types_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.payment_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.payment_types_id_seq;
       public          postgres    false    205            ?           0    0    payment_types_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.payment_types_id_seq OWNED BY public.payment_types.id;
          public          postgres    false    204            ?            1259    16967    phone_numbers    TABLE     ?   CREATE TABLE public.phone_numbers (
    id integer NOT NULL,
    id_user integer NOT NULL,
    phone character varying,
    verified boolean,
    code_country character varying
);
 !   DROP TABLE public.phone_numbers;
       public         heap    postgres    false            ?            1259    16965    phone_numbers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.phone_numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.phone_numbers_id_seq;
       public          postgres    false    213            ?           0    0    phone_numbers_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.phone_numbers_id_seq OWNED BY public.phone_numbers.id;
          public          postgres    false    212            ?            1259    16985    sessions    TABLE     ?   CREATE TABLE public.sessions (
    id integer NOT NULL,
    id_user integer,
    id_devices integer,
    id_country integer,
    session_start date,
    session_end date
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            ?            1259    16983    sessions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sessions_id_seq;
       public          postgres    false    215            ?           0    0    sessions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;
          public          postgres    false    214            ?            1259    17006    transactions    TABLE     ?   CREATE TABLE public.transactions (
    id integer NOT NULL,
    id_user integer,
    id_item integer,
    id_payment_types integer,
    total numeric
);
     DROP TABLE public.transactions;
       public         heap    postgres    false            ?            1259    17004    transactions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.transactions_id_seq;
       public          postgres    false    217            ?           0    0    transactions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;
          public          postgres    false    216            ?            1259    16874    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    id_country integer,
    gender character varying,
    birthday date,
    name character varying,
    lastname character varying,
    nickname character varying,
    email character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16872    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    201            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    200                       2604    17037    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                       2604    16932 
   devices id    DEFAULT     h   ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);
 9   ALTER TABLE public.devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209                       2604    16888    items id    DEFAULT     d   ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);
 7   ALTER TABLE public.items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                       2604    16950    items_payment_types id    DEFAULT     ?   ALTER TABLE ONLY public.items_payment_types ALTER COLUMN id SET DEFAULT nextval('public.items_payment_types_id_seq'::regclass);
 E   ALTER TABLE public.items_payment_types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211                       2604    16910    os id    DEFAULT     ^   ALTER TABLE ONLY public.os ALTER COLUMN id SET DEFAULT nextval('public.os_id_seq'::regclass);
 4   ALTER TABLE public.os ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207                       2604    16899    payment_types id    DEFAULT     t   ALTER TABLE ONLY public.payment_types ALTER COLUMN id SET DEFAULT nextval('public.payment_types_id_seq'::regclass);
 ?   ALTER TABLE public.payment_types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205                       2604    16970    phone_numbers id    DEFAULT     t   ALTER TABLE ONLY public.phone_numbers ALTER COLUMN id SET DEFAULT nextval('public.phone_numbers_id_seq'::regclass);
 ?   ALTER TABLE public.phone_numbers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213                       2604    16988    sessions id    DEFAULT     j   ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);
 :   ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                       2604    17009    transactions id    DEFAULT     r   ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);
 >   ALTER TABLE public.transactions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                       2604    16877    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            ?          0    17034 	   countries 
   TABLE DATA           :   COPY public.countries (id, name, city, state) FROM stdin;
    public          postgres    false    219   `       ?          0    16929    devices 
   TABLE DATA           2   COPY public.devices (id, id_os, name) FROM stdin;
    public          postgres    false    209   1`       ?          0    16885    items 
   TABLE DATA           7   COPY public.items (id, name, price, offer) FROM stdin;
    public          postgres    false    203   N`       ?          0    16947    items_payment_types 
   TABLE DATA           L   COPY public.items_payment_types (id, id_item, id_payment_types) FROM stdin;
    public          postgres    false    211   k`       ?          0    16907    os 
   TABLE DATA           &   COPY public.os (id, name) FROM stdin;
    public          postgres    false    207   ?`       ?          0    16896    payment_types 
   TABLE DATA           A   COPY public.payment_types (id, name, sandbox, token) FROM stdin;
    public          postgres    false    205   ?`       ?          0    16967    phone_numbers 
   TABLE DATA           S   COPY public.phone_numbers (id, id_user, phone, verified, code_country) FROM stdin;
    public          postgres    false    213   ?`       ?          0    16985    sessions 
   TABLE DATA           c   COPY public.sessions (id, id_user, id_devices, id_country, session_start, session_end) FROM stdin;
    public          postgres    false    215   ?`       ?          0    17006    transactions 
   TABLE DATA           U   COPY public.transactions (id, id_user, id_item, id_payment_types, total) FROM stdin;
    public          postgres    false    217   ?`       ?          0    16874    users 
   TABLE DATA           b   COPY public.users (id, id_country, gender, birthday, name, lastname, nickname, email) FROM stdin;
    public          postgres    false    201   a       ?           0    0    countries_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.countries_id_seq', 1, false);
          public          postgres    false    218            ?           0    0    devices_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.devices_id_seq', 1, false);
          public          postgres    false    208            ?           0    0    items_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.items_id_seq', 1, false);
          public          postgres    false    202            ?           0    0    items_payment_types_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.items_payment_types_id_seq', 1, false);
          public          postgres    false    210            ?           0    0 	   os_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.os_id_seq', 1, false);
          public          postgres    false    206            ?           0    0    payment_types_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.payment_types_id_seq', 1, false);
          public          postgres    false    204            ?           0    0    phone_numbers_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.phone_numbers_id_seq', 1, false);
          public          postgres    false    212            ?           0    0    sessions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.sessions_id_seq', 1, false);
          public          postgres    false    214            ?           0    0    transactions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.transactions_id_seq', 1, false);
          public          postgres    false    216            ?           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    200            2           2606    17042    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    219            (           2606    16939    devices devices_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id) INCLUDE (id);
 >   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_pkey;
       public            postgres    false    209    209            *           2606    16954 ,   items_payment_types items_payment_types_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.items_payment_types
    ADD CONSTRAINT items_payment_types_pkey PRIMARY KEY (id) INCLUDE (id);
 V   ALTER TABLE ONLY public.items_payment_types DROP CONSTRAINT items_payment_types_pkey;
       public            postgres    false    211    211            "           2606    16893    items items_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public            postgres    false    203            &           2606    16915 
   os os_pkey 
   CONSTRAINT     H   ALTER TABLE ONLY public.os
    ADD CONSTRAINT os_pkey PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.os DROP CONSTRAINT os_pkey;
       public            postgres    false    207            $           2606    16901     payment_types payment_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.payment_types DROP CONSTRAINT payment_types_pkey;
       public            postgres    false    205            ,           2606    16977     phone_numbers phone_numbers_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.phone_numbers
    ADD CONSTRAINT phone_numbers_pkey PRIMARY KEY (id) INCLUDE (id);
 J   ALTER TABLE ONLY public.phone_numbers DROP CONSTRAINT phone_numbers_pkey;
       public            postgres    false    213    213            .           2606    16990    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    215            0           2606    17011    transactions transactions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_pkey;
       public            postgres    false    217                        2606    16882    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    201            4           2606    16940    devices devices_os_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_os_fkey FOREIGN KEY (id) REFERENCES public.os(id) NOT VALID;
 A   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_os_fkey;
       public          postgres    false    207    209    3110            5           2606    16955 2   items_payment_types items_payment_types_items_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.items_payment_types
    ADD CONSTRAINT items_payment_types_items_fkey FOREIGN KEY (id) REFERENCES public.items(id) NOT VALID;
 \   ALTER TABLE ONLY public.items_payment_types DROP CONSTRAINT items_payment_types_items_fkey;
       public          postgres    false    3106    211    203            6           2606    16960 :   items_payment_types items_payment_types_payment_types_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.items_payment_types
    ADD CONSTRAINT items_payment_types_payment_types_fkey FOREIGN KEY (id) REFERENCES public.payment_types(id) NOT VALID;
 d   ALTER TABLE ONLY public.items_payment_types DROP CONSTRAINT items_payment_types_payment_types_fkey;
       public          postgres    false    3108    211    205            7           2606    16978 &   phone_numbers phone_numbers_users_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.phone_numbers
    ADD CONSTRAINT phone_numbers_users_fkey FOREIGN KEY (id) REFERENCES public.users(id) NOT VALID;
 P   ALTER TABLE ONLY public.phone_numbers DROP CONSTRAINT phone_numbers_users_fkey;
       public          postgres    false    201    3104    213            :           2606    17048     sessions sessions_countries_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_countries_fkey FOREIGN KEY (id) REFERENCES public.countries(id) NOT VALID;
 J   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_countries_fkey;
       public          postgres    false    215    3122    219            9           2606    16999    sessions sessions_devices_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_devices_fkey FOREIGN KEY (id) REFERENCES public.devices(id) NOT VALID;
 H   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_devices_fkey;
       public          postgres    false    3112    209    215            8           2606    16994    sessions sessions_users_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_users_fkey FOREIGN KEY (id) REFERENCES public.users(id) NOT VALID;
 F   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_users_fkey;
       public          postgres    false    215    3104    201            <           2606    17021 $   transactions transactions_items_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_items_fkey FOREIGN KEY (id) REFERENCES public.items(id) NOT VALID;
 N   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_items_fkey;
       public          postgres    false    3106    217    203            =           2606    17026 ,   transactions transactions_payment_types_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_payment_types_fkey FOREIGN KEY (id) REFERENCES public.payment_types(id) NOT VALID;
 V   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_payment_types_fkey;
       public          postgres    false    217    3108    205            ;           2606    17016 $   transactions transactions_users_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_users_fkey FOREIGN KEY (id) REFERENCES public.users(id) NOT VALID;
 N   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_users_fkey;
       public          postgres    false    201    3104    217            3           2606    17043    users users_countries_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_countries_fkey FOREIGN KEY (id) REFERENCES public.countries(id) NOT VALID;
 D   ALTER TABLE ONLY public.users DROP CONSTRAINT users_countries_fkey;
       public          postgres    false    201    219    3122            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     