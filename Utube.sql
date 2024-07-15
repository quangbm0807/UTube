PGDMP      3                |         	   java4_asm    16.3    16.3 $    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397 	   java4_asm    DATABASE     �   CREATE DATABASE java4_asm WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE java4_asm;
                postgres    false            �            1259    16417    favorite    TABLE     |   CREATE TABLE public.favorite (
    id integer NOT NULL,
    "userId" integer,
    "videoId" integer,
    "likeDate" date
);
    DROP TABLE public.favorite;
       public         heap    postgres    false            �            1259    16416    Favorite_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Favorite_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Favorite_Id_seq";
       public          postgres    false    220            �           0    0    Favorite_Id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Favorite_Id_seq" OWNED BY public.favorite.id;
          public          postgres    false    219            �            1259    16434    share    TABLE     �   CREATE TABLE public.share (
    id integer NOT NULL,
    "userId" integer,
    "videoId" integer,
    email text[],
    "shareDate" date
);
    DROP TABLE public.share;
       public         heap    postgres    false            �            1259    16433    Share_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Share_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Share_Id_seq";
       public          postgres    false    222            �           0    0    Share_Id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Share_Id_seq" OWNED BY public.share.id;
          public          postgres    false    221            �            1259    16408    account    TABLE     �   CREATE TABLE public.account (
    id integer NOT NULL,
    password text,
    email text,
    fullname text,
    admin boolean
);
    DROP TABLE public.account;
       public         heap    postgres    false            �            1259    16407    User_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."User_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."User_Id_seq";
       public          postgres    false    218            �           0    0    User_Id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public."User_Id_seq" OWNED BY public.account.id;
          public          postgres    false    217            �            1259    16399    video    TABLE     �   CREATE TABLE public.video (
    id integer NOT NULL,
    title text,
    poster text,
    views bigint,
    description text,
    active boolean
);
    DROP TABLE public.video;
       public         heap    postgres    false            �            1259    16398    Video_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Video_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Video_Id_seq";
       public          postgres    false    216            �           0    0    Video_Id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Video_Id_seq" OWNED BY public.video.id;
          public          postgres    false    215            *           2604    16411 
   account id    DEFAULT     g   ALTER TABLE ONLY public.account ALTER COLUMN id SET DEFAULT nextval('public."User_Id_seq"'::regclass);
 9   ALTER TABLE public.account ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            +           2604    16420    favorite id    DEFAULT     l   ALTER TABLE ONLY public.favorite ALTER COLUMN id SET DEFAULT nextval('public."Favorite_Id_seq"'::regclass);
 :   ALTER TABLE public.favorite ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            ,           2604    16437    share id    DEFAULT     f   ALTER TABLE ONLY public.share ALTER COLUMN id SET DEFAULT nextval('public."Share_Id_seq"'::regclass);
 7   ALTER TABLE public.share ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            )           2604    16402    video id    DEFAULT     f   ALTER TABLE ONLY public.video ALTER COLUMN id SET DEFAULT nextval('public."Video_Id_seq"'::regclass);
 7   ALTER TABLE public.video ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16408    account 
   TABLE DATA           G   COPY public.account (id, password, email, fullname, admin) FROM stdin;
    public          postgres    false    218   �%       �          0    16417    favorite 
   TABLE DATA           G   COPY public.favorite (id, "userId", "videoId", "likeDate") FROM stdin;
    public          postgres    false    220   o&       �          0    16434    share 
   TABLE DATA           L   COPY public.share (id, "userId", "videoId", email, "shareDate") FROM stdin;
    public          postgres    false    222   �&       �          0    16399    video 
   TABLE DATA           N   COPY public.video (id, title, poster, views, description, active) FROM stdin;
    public          postgres    false    216   u'       �           0    0    Favorite_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Favorite_Id_seq"', 34, true);
          public          postgres    false    219            �           0    0    Share_Id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Share_Id_seq"', 4, true);
          public          postgres    false    221            �           0    0    User_Id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."User_Id_seq"', 5, true);
          public          postgres    false    217            �           0    0    Video_Id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Video_Id_seq"', 10, true);
          public          postgres    false    215            2           2606    16422    favorite Favorite_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.favorite
    ADD CONSTRAINT "Favorite_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.favorite DROP CONSTRAINT "Favorite_pkey";
       public            postgres    false    220            4           2606    16441    share Share_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.share
    ADD CONSTRAINT "Share_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.share DROP CONSTRAINT "Share_pkey";
       public            postgres    false    222            0           2606    16415    account User_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.account
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.account DROP CONSTRAINT "User_pkey";
       public            postgres    false    218            .           2606    16406    video Video_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.video
    ADD CONSTRAINT "Video_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.video DROP CONSTRAINT "Video_pkey";
       public            postgres    false    216            5           2606    16423    favorite FK_Fav_User    FK CONSTRAINT     x   ALTER TABLE ONLY public.favorite
    ADD CONSTRAINT "FK_Fav_User" FOREIGN KEY ("userId") REFERENCES public.account(id);
 @   ALTER TABLE ONLY public.favorite DROP CONSTRAINT "FK_Fav_User";
       public          postgres    false    218    220    4656            6           2606    16428    favorite FK_Fav_Vid    FK CONSTRAINT     v   ALTER TABLE ONLY public.favorite
    ADD CONSTRAINT "FK_Fav_Vid" FOREIGN KEY ("videoId") REFERENCES public.video(id);
 ?   ALTER TABLE ONLY public.favorite DROP CONSTRAINT "FK_Fav_Vid";
       public          postgres    false    216    220    4654            7           2606    16442    share FK_Share_User    FK CONSTRAINT     w   ALTER TABLE ONLY public.share
    ADD CONSTRAINT "FK_Share_User" FOREIGN KEY ("userId") REFERENCES public.account(id);
 ?   ALTER TABLE ONLY public.share DROP CONSTRAINT "FK_Share_User";
       public          postgres    false    4656    222    218            8           2606    16447    share FK_Share_Video    FK CONSTRAINT     w   ALTER TABLE ONLY public.share
    ADD CONSTRAINT "FK_Share_Video" FOREIGN KEY ("videoId") REFERENCES public.video(id);
 @   ALTER TABLE ONLY public.share DROP CONSTRAINT "FK_Share_Video";
       public          postgres    false    216    4654    222            �   �   x�3�442�,)�K/+qH�M���K���;�U!$#1/C!��μt�.#����D��d�GW*�p�9/]!$ə�e�P��������L�L���%\&�3S�R
�� Q�p��d��̇�����g�V�V�QZ	T���� a�L�      �   m   x�M�A�0��/�0I
�K���%jZEp�#S()n��B��h��r��������Y�O���	KD��j���Zm�u�[BST~{�/�2^��[���?)�!�      �   y   x�e��
� �ϻ����[$�TM����^sJ��\����8��m|�`����0���� �P�?I T�g{��b����Qlts����#�7�}٧�n�ݗ����#�ӈ�?�=t      �   �	  x��Wmo��<����� %��8/��IBl{C2��j�a2������K�%>��]Ԣ��۪�R�"`P���b�����4?�Ϲw���V-R��}9/�9�9grF��P^ğI�����|�,��,.�̥v��e�?�$����￐��/���6ɫ��BFy��S�.K��}ѻ���KM���lщ������;����Kt��}��=��br�J�rr�Bf�J�Z[�U�b�5s����,�"��QO��c�l��Nҵ?*U6�Eʾw��؜<.��������}���(j����Mw��˴d3��s��Y�ù?l����upu�p��Ý��krM��FV|iƲQ��#sxX�<3�\�� ��>�������e�wA��Ν�����;_��o �	c�rq~�\�/U���\��r4F�~�A�.&T�~�Lf����7z�ac�9B ���U�f�8�BR^�w0�RY9cBa>�x/���C_+�7m�L�g�F�.6�_��"U�ސ4����g�4��d;�3$F�&~v\�K:'颒�{/�oy�p-���=�&��pO]ۣ-�{~�~���2/��ܗ|V5�UQ��&(�\y�&�}�(;3,��Ĵ	�6��J�=4_�/}��l��ʪ���L�B�Y�B�-����O��{.�C�z!]�� �l$�]�t����q�v���Q�>����u����E�����:߾����ױ�������O��b6�|�g�m��E����g�呤��xvz<��2�Ɖ���=�:9����$�����;4A��m�T�a����m�TN�\p-F���̤��^I^a%_0
:��5���.�'j��|��ç1Brp������%iD�-��nۄ��0b���}�!Ϋ����+��r�B#PκGPY(/��!�:�A]1�XR��f�㶲E���^�~Rc���rv$�V;;R�Ae��eԶu�߻u!N�HEM+��1V	�������*�9ߎC��g~�8@~ ��2r�tVؾ'hUxhH���tj#n���uqژTa��BM��@�	���R�v>P�B�G����!�e�$�VDkː2�U
�d�-�2�mZ��C�D�o��/SGX�If�?����G-�*����۱����p PLe�5}2�V�K��K�$	=�EX�з]$�%�\�nl_n� ��En;<iL�fX��'&&�l����YE"(�V[!�}������&��3���Y�$=p����}�3���%!�M��~C��a�^
I`�;t����
J��Vd;������	���7!�V>�6�~w����@��E�@�N^�7wm^�s�MO��+�9i>Y1��W.,Ӻ��,P�≨������Ցʰ2bd!t�vi�E��WhΊ�u�^�%mAh����9�=7>f��������$]���&.���5Y���z�$.�
ƃ��6���I8�R=f*�?5���@\�Al� ��j�.�R���0j�q����M]iGr4&���t{�:];yS���
�&��8�l��pgK�E�AB���J��<e[����$.��&o2P�ڊ���ݔzr�eD;��n�ʨ@Ӱ�ʀ��;�}����.��m[������n;��}]��L�=en��ջ�J��޷������J�����t�V'�j*hGѲ@X��%�ԡFj��������R���x0 �2a/��%� D��IC�80S"Z��.�h��^�I���$4�Êw8��x���L��^*>o(CoC�.n�1A�r8ᎊe��1�ϪV���h��_Ah̨���ff&
�,z��.��)��b+Y���CpSC@*T��퇺�뗄�B70����������P���JĒ�Kx�MV}�IR��n�0��}}	X�\g��c�U�u�n�	�ׇB����a6��j�呃�k�\��T�J����GXa�MFLC��J:֤7�3
��3���iCe��?��*�:+�5I祪��uյ.F00�j��'���Y���1�3}���"�������]D��&r����d��oRB� ��N�
�؁�]f�<u�ђ�(5W�Q�N�Pq9T�����t1�?��/�,C�h����*�tr�[���ba���Dq�7�*�MN�)N掏��Òbv���e�8�&��<�>Ud RDx"_�N`�Ϋ�E���B�[Tl���:O���y;���³��5�f�e��8�(���HMq�b6�����OE��F.�G��D��#�Ύ'h:
E�����˔כ��PhƲ�n���f��+<��s�t1���)8�X	�E&�EM��+�<�ᩱ�������M�T]Ld��(.�!���C�����ă��v9�(����֎������ѻ��������Y���늌=K�w�Ͽ:�Пa5�W��MP�G�b�|6��PUu�H�0�G��U�岹=��OI���8C�����k]1 2��$rf-s�ĉT��y     