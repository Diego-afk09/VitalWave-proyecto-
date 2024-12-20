PGDMP                      |            jwt_db    17.2    17.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16387    jwt_db    DATABASE     y   CREATE DATABASE jwt_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE jwt_db;
                     postgres    false            �            1259    16527    datos    TABLE     �   CREATE TABLE public.datos (
    id integer NOT NULL,
    usuario character varying(50) NOT NULL,
    contrasena character varying(255) NOT NULL
);
    DROP TABLE public.datos;
       public         heap r       postgres    false            �            1259    16526    datos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.datos_id_seq;
       public               postgres    false    220                       0    0    datos_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.datos_id_seq OWNED BY public.datos.id;
          public               postgres    false    219            �            1259    16501    usuarios    TABLE     �  CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre_usuario character varying(50) NOT NULL,
    correo_electronico character varying(100) NOT NULL,
    contrasena_hash text NOT NULL,
    fecha_registro timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    ultima_sesion timestamp without time zone,
    estado boolean DEFAULT true,
    rol character varying(20) DEFAULT 'usuario'::character varying,
    intentos_fallidos integer DEFAULT 0
);
    DROP TABLE public.usuarios;
       public         heap r       postgres    false            �            1259    16500    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public               postgres    false    218                       0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public               postgres    false    217            a           2604    16530    datos id    DEFAULT     d   ALTER TABLE ONLY public.datos ALTER COLUMN id SET DEFAULT nextval('public.datos_id_seq'::regclass);
 7   ALTER TABLE public.datos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            \           2604    16504    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218                       0    16527    datos 
   TABLE DATA           8   COPY public.datos (id, usuario, contrasena) FROM stdin;
    public               postgres    false    220   �       �          0    16501    usuarios 
   TABLE DATA           �   COPY public.usuarios (id, nombre_usuario, correo_electronico, contrasena_hash, fecha_registro, ultima_sesion, estado, rol, intentos_fallidos) FROM stdin;
    public               postgres    false    218   �       	           0    0    datos_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.datos_id_seq', 1, false);
          public               postgres    false    219            
           0    0    usuarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuarios_id_seq', 1, false);
          public               postgres    false    217            i           2606    16532    datos datos_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.datos
    ADD CONSTRAINT datos_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.datos DROP CONSTRAINT datos_pkey;
       public                 postgres    false    220            k           2606    16534    datos datos_usuario_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.datos
    ADD CONSTRAINT datos_usuario_key UNIQUE (usuario);
 A   ALTER TABLE ONLY public.datos DROP CONSTRAINT datos_usuario_key;
       public                 postgres    false    220            c           2606    16516 (   usuarios usuarios_correo_electronico_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correo_electronico_key UNIQUE (correo_electronico);
 R   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_correo_electronico_key;
       public                 postgres    false    218            e           2606    16514 $   usuarios usuarios_nombre_usuario_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_nombre_usuario_key UNIQUE (nombre_usuario);
 N   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_nombre_usuario_key;
       public                 postgres    false    218            g           2606    16512    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public                 postgres    false    218                !   x�3��*M��44261�2�,��ˇrb���� v��      �      x������ � �     