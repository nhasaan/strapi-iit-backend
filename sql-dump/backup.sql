PGDMP     ;                    {            iit-backend    14.2    14.2 Z   &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            '           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            (           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            )           1262    18683    iit-backend    DATABASE     X   CREATE DATABASE "iit-backend" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE "iit-backend";
                nhassan    false            �            1259    18866    abouts    TABLE       CREATE TABLE public.abouts (
    id integer NOT NULL,
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
    DROP TABLE public.abouts;
       public         heap    nhassan    false                       1259    19071    abouts_components    TABLE     �   CREATE TABLE public.abouts_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 %   DROP TABLE public.abouts_components;
       public         heap    nhassan    false                       1259    19070    abouts_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.abouts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.abouts_components_id_seq;
       public          nhassan    false    282            *           0    0    abouts_components_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.abouts_components_id_seq OWNED BY public.abouts_components.id;
          public          nhassan    false    281            �            1259    18865    abouts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.abouts_id_seq;
       public          nhassan    false    244            +           0    0    abouts_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.abouts_id_seq OWNED BY public.abouts.id;
          public          nhassan    false    243            2           1259    19571    actions    TABLE     y  CREATE TABLE public.actions (
    id integer NOT NULL,
    execute_at timestamp(6) without time zone,
    mode character varying(255),
    entity_id integer,
    entity_slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
    DROP TABLE public.actions;
       public         heap    nhassan    false            1           1259    19570    actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.actions_id_seq;
       public          nhassan    false    306            ,           0    0    actions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.actions_id_seq OWNED BY public.actions.id;
          public          nhassan    false    305            �            1259    18719    admin_permissions    TABLE     J  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    nhassan    false            �            1259    18718    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          nhassan    false    218            -           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          nhassan    false    217                       1259    18964    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    nhassan    false                       1259    18963 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          nhassan    false    264            .           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          nhassan    false    263            �            1259    18741    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    nhassan    false            �            1259    18740    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          nhassan    false    222            /           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          nhassan    false    221            �            1259    18730    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
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
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    nhassan    false            �            1259    18729    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          nhassan    false    220            0           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          nhassan    false    219            
           1259    18976    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    nhassan    false            	           1259    18975    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          nhassan    false    266            1           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          nhassan    false    265            �            1259    18875    articles    TABLE     �  CREATE TABLE public.articles (
    id integer NOT NULL,
    title character varying(255),
    description text,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean,
    subject character varying(255),
    publishedin character varying(255),
    publishedas character varying(255),
    intro text
);
    DROP TABLE public.articles;
       public         heap    nhassan    false                       1259    19099    articles_author_links    TABLE     �   CREATE TABLE public.articles_author_links (
    id integer NOT NULL,
    article_id integer,
    author_id integer,
    article_order double precision
);
 )   DROP TABLE public.articles_author_links;
       public         heap    nhassan    false                       1259    19098    articles_author_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_author_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.articles_author_links_id_seq;
       public          nhassan    false    286            2           0    0    articles_author_links_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.articles_author_links_id_seq OWNED BY public.articles_author_links.id;
          public          nhassan    false    285            D           1259    24956    articles_categories_links    TABLE     �   CREATE TABLE public.articles_categories_links (
    id integer NOT NULL,
    article_id integer,
    category_id integer,
    category_order double precision,
    article_order double precision
);
 -   DROP TABLE public.articles_categories_links;
       public         heap    nhassan    false            C           1259    24955     articles_categories_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_categories_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.articles_categories_links_id_seq;
       public          nhassan    false    324            3           0    0     articles_categories_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.articles_categories_links_id_seq OWNED BY public.articles_categories_links.id;
          public          nhassan    false    323                       1259    19085    articles_components    TABLE     �   CREATE TABLE public.articles_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 '   DROP TABLE public.articles_components;
       public         heap    nhassan    false                       1259    19084    articles_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.articles_components_id_seq;
       public          nhassan    false    284            4           0    0    articles_components_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.articles_components_id_seq OWNED BY public.articles_components.id;
          public          nhassan    false    283            �            1259    18874    articles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public          nhassan    false    246            5           0    0    articles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;
          public          nhassan    false    245            *           1259    19523    audience    TABLE     ,  CREATE TABLE public.audience (
    id integer NOT NULL,
    name character varying(255),
    key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
    DROP TABLE public.audience;
       public         heap    nhassan    false            )           1259    19522    audience_id_seq    SEQUENCE     �   CREATE SEQUENCE public.audience_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.audience_id_seq;
       public          nhassan    false    298            6           0    0    audience_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.audience_id_seq OWNED BY public.audience.id;
          public          nhassan    false    297            �            1259    18888    authors    TABLE     -  CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
    DROP TABLE public.authors;
       public         heap    nhassan    false            �            1259    18887    authors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.authors_id_seq;
       public          nhassan    false    248            7           0    0    authors_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;
          public          nhassan    false    247            �            1259    18899 
   categories    TABLE     E  CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
    DROP TABLE public.categories;
       public         heap    nhassan    false            �            1259    18898    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          nhassan    false    250            8           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          nhassan    false    249            �            1259    18923    components_shared_media    TABLE     I   CREATE TABLE public.components_shared_media (
    id integer NOT NULL
);
 +   DROP TABLE public.components_shared_media;
       public         heap    nhassan    false            �            1259    18922    components_shared_media_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_shared_media_id_seq;
       public          nhassan    false    254            9           0    0    components_shared_media_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_shared_media_id_seq OWNED BY public.components_shared_media.id;
          public          nhassan    false    253                        1259    18930    components_shared_quotes    TABLE     {   CREATE TABLE public.components_shared_quotes (
    id integer NOT NULL,
    title character varying(255),
    body text
);
 ,   DROP TABLE public.components_shared_quotes;
       public         heap    nhassan    false            �            1259    18929    components_shared_quotes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_shared_quotes_id_seq;
       public          nhassan    false    256            :           0    0    components_shared_quotes_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_shared_quotes_id_seq OWNED BY public.components_shared_quotes.id;
          public          nhassan    false    255                       1259    18939    components_shared_rich_texts    TABLE     ]   CREATE TABLE public.components_shared_rich_texts (
    id integer NOT NULL,
    body text
);
 0   DROP TABLE public.components_shared_rich_texts;
       public         heap    nhassan    false                       1259    18938 #   components_shared_rich_texts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_rich_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_shared_rich_texts_id_seq;
       public          nhassan    false    258            ;           0    0 #   components_shared_rich_texts_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_shared_rich_texts_id_seq OWNED BY public.components_shared_rich_texts.id;
          public          nhassan    false    257                       1259    18948    components_shared_seos    TABLE     �   CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);
 *   DROP TABLE public.components_shared_seos;
       public         heap    nhassan    false                       1259    18947    components_shared_seos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.components_shared_seos_id_seq;
       public          nhassan    false    260            <           0    0    components_shared_seos_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;
          public          nhassan    false    259                       1259    18957    components_shared_sliders    TABLE     K   CREATE TABLE public.components_shared_sliders (
    id integer NOT NULL
);
 -   DROP TABLE public.components_shared_sliders;
       public         heap    nhassan    false                       1259    18956     components_shared_sliders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_shared_sliders_id_seq;
       public          nhassan    false    262            =           0    0     components_shared_sliders_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_shared_sliders_id_seq OWNED BY public.components_shared_sliders.id;
          public          nhassan    false    261            $           1259    19460    ezforms_recipient    TABLE     Z  CREATE TABLE public.ezforms_recipient (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    number character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
 %   DROP TABLE public.ezforms_recipient;
       public         heap    nhassan    false            #           1259    19459    ezforms_recipient_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ezforms_recipient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.ezforms_recipient_id_seq;
       public          nhassan    false    292            >           0    0    ezforms_recipient_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.ezforms_recipient_id_seq OWNED BY public.ezforms_recipient.id;
          public          nhassan    false    291            "           1259    19449    ezforms_submission    TABLE     M  CREATE TABLE public.ezforms_submission (
    id integer NOT NULL,
    score character varying(255),
    form_name character varying(255),
    data jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
 &   DROP TABLE public.ezforms_submission;
       public         heap    nhassan    false            !           1259    19448    ezforms_submission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ezforms_submission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ezforms_submission_id_seq;
       public          nhassan    false    290            ?           0    0    ezforms_submission_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ezforms_submission_id_seq OWNED BY public.ezforms_submission.id;
          public          nhassan    false    289            �            1259    18792    files    TABLE     �  CREATE TABLE public.files (
    id integer NOT NULL,
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
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
    DROP TABLE public.files;
       public         heap    nhassan    false                       1259    19023    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    nhassan    false                       1259    19022    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          nhassan    false    274            @           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          nhassan    false    273            �            1259    18791    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          nhassan    false    232            A           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          nhassan    false    231                       1259    19013    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    nhassan    false                       1259    19012    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          nhassan    false    272            B           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          nhassan    false    271            �            1259    18912    globals    TABLE     +  CREATE TABLE public.globals (
    id integer NOT NULL,
    site_name character varying(255),
    site_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
    DROP TABLE public.globals;
       public         heap    nhassan    false                        1259    19123    globals_components    TABLE     �   CREATE TABLE public.globals_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 &   DROP TABLE public.globals_components;
       public         heap    nhassan    false                       1259    19122    globals_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.globals_components_id_seq;
       public          nhassan    false    288            C           0    0    globals_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.globals_components_id_seq OWNED BY public.globals_components.id;
          public          nhassan    false    287            �            1259    18911    globals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.globals_id_seq;
       public          nhassan    false    252            D           0    0    globals_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;
          public          nhassan    false    251            �            1259    18855    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    nhassan    false            �            1259    18854    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          nhassan    false    242            E           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          nhassan    false    241            (           1259    19512 
   menu_items    TABLE     g  CREATE TABLE public.menu_items (
    id integer NOT NULL,
    "order" integer,
    title character varying(255),
    url character varying(255),
    target character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
    DROP TABLE public.menu_items;
       public         heap    nhassan    false            '           1259    19511    menu_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.menu_items_id_seq;
       public          nhassan    false    296            F           0    0    menu_items_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;
          public          nhassan    false    295            6           1259    19594    menu_items_parent_links    TABLE     �   CREATE TABLE public.menu_items_parent_links (
    id integer NOT NULL,
    menu_item_id integer,
    inv_menu_item_id integer
);
 +   DROP TABLE public.menu_items_parent_links;
       public         heap    nhassan    false            5           1259    19593    menu_items_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_items_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.menu_items_parent_links_id_seq;
       public          nhassan    false    310            G           0    0    menu_items_parent_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.menu_items_parent_links_id_seq OWNED BY public.menu_items_parent_links.id;
          public          nhassan    false    309            4           1259    19582    menu_items_root_menu_links    TABLE     �   CREATE TABLE public.menu_items_root_menu_links (
    id integer NOT NULL,
    menu_item_id integer,
    menu_id integer,
    menu_item_order double precision
);
 .   DROP TABLE public.menu_items_root_menu_links;
       public         heap    nhassan    false            3           1259    19581 !   menu_items_root_menu_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_items_root_menu_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.menu_items_root_menu_links_id_seq;
       public          nhassan    false    308            H           0    0 !   menu_items_root_menu_links_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.menu_items_root_menu_links_id_seq OWNED BY public.menu_items_root_menu_links.id;
          public          nhassan    false    307            &           1259    19499    menus    TABLE     +  CREATE TABLE public.menus (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
    DROP TABLE public.menus;
       public         heap    nhassan    false            %           1259    19498    menus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.menus_id_seq;
       public          nhassan    false    294            I           0    0    menus_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;
          public          nhassan    false    293            ,           1259    19536    navigations    TABLE     [  CREATE TABLE public.navigations (
    id integer NOT NULL,
    name text,
    slug character varying(255),
    visible boolean,
    locale_code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
    DROP TABLE public.navigations;
       public         heap    nhassan    false            +           1259    19535    navigations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.navigations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.navigations_id_seq;
       public          nhassan    false    300            J           0    0    navigations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.navigations_id_seq OWNED BY public.navigations.id;
          public          nhassan    false    299            .           1259    19549    navigations_items    TABLE     �  CREATE TABLE public.navigations_items (
    id integer NOT NULL,
    title text,
    type character varying(255),
    path text,
    external_path text,
    ui_router_key character varying(255),
    menu_attached boolean,
    "order" integer,
    collapsed boolean,
    additional_fields jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
 %   DROP TABLE public.navigations_items;
       public         heap    nhassan    false            @           1259    19651     navigations_items_audience_links    TABLE     �   CREATE TABLE public.navigations_items_audience_links (
    id integer NOT NULL,
    navigation_item_id integer,
    audience_id integer,
    audience_order double precision
);
 4   DROP TABLE public.navigations_items_audience_links;
       public         heap    nhassan    false            ?           1259    19650 '   navigations_items_audience_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.navigations_items_audience_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.navigations_items_audience_links_id_seq;
       public          nhassan    false    320            K           0    0 '   navigations_items_audience_links_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.navigations_items_audience_links_id_seq OWNED BY public.navigations_items_audience_links.id;
          public          nhassan    false    319            -           1259    19548    navigations_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.navigations_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.navigations_items_id_seq;
       public          nhassan    false    302            L           0    0    navigations_items_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.navigations_items_id_seq OWNED BY public.navigations_items.id;
          public          nhassan    false    301            >           1259    19639    navigations_items_master_links    TABLE     �   CREATE TABLE public.navigations_items_master_links (
    id integer NOT NULL,
    navigation_item_id integer,
    navigation_id integer,
    navigation_item_order double precision
);
 2   DROP TABLE public.navigations_items_master_links;
       public         heap    nhassan    false            =           1259    19638 %   navigations_items_master_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.navigations_items_master_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.navigations_items_master_links_id_seq;
       public          nhassan    false    318            M           0    0 %   navigations_items_master_links_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.navigations_items_master_links_id_seq OWNED BY public.navigations_items_master_links.id;
          public          nhassan    false    317            <           1259    19628    navigations_items_parent_links    TABLE     �   CREATE TABLE public.navigations_items_parent_links (
    id integer NOT NULL,
    navigation_item_id integer,
    inv_navigation_item_id integer
);
 2   DROP TABLE public.navigations_items_parent_links;
       public         heap    nhassan    false            ;           1259    19627 %   navigations_items_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.navigations_items_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.navigations_items_parent_links_id_seq;
       public          nhassan    false    316            N           0    0 %   navigations_items_parent_links_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.navigations_items_parent_links_id_seq OWNED BY public.navigations_items_parent_links.id;
          public          nhassan    false    315            0           1259    19560    navigations_items_related    TABLE     �  CREATE TABLE public.navigations_items_related (
    id integer NOT NULL,
    related_id character varying(255),
    related_type character varying(255),
    field character varying(255),
    "order" integer,
    master character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
 -   DROP TABLE public.navigations_items_related;
       public         heap    nhassan    false            /           1259    19559     navigations_items_related_id_seq    SEQUENCE     �   CREATE SEQUENCE public.navigations_items_related_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.navigations_items_related_id_seq;
       public          nhassan    false    304            O           0    0     navigations_items_related_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.navigations_items_related_id_seq OWNED BY public.navigations_items_related.id;
          public          nhassan    false    303            :           1259    19617    navigations_items_related_links    TABLE     �   CREATE TABLE public.navigations_items_related_links (
    id integer NOT NULL,
    navigation_item_id integer,
    navigations_items_related_id integer
);
 3   DROP TABLE public.navigations_items_related_links;
       public         heap    nhassan    false            9           1259    19616 &   navigations_items_related_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.navigations_items_related_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.navigations_items_related_links_id_seq;
       public          nhassan    false    314            P           0    0 &   navigations_items_related_links_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.navigations_items_related_links_id_seq OWNED BY public.navigations_items_related_links.id;
          public          nhassan    false    313            8           1259    19605    navigations_localizations_links    TABLE     �   CREATE TABLE public.navigations_localizations_links (
    id integer NOT NULL,
    navigation_id integer,
    inv_navigation_id integer,
    navigation_order double precision
);
 3   DROP TABLE public.navigations_localizations_links;
       public         heap    nhassan    false            7           1259    19604 &   navigations_localizations_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.navigations_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.navigations_localizations_links_id_seq;
       public          nhassan    false    312            Q           0    0 &   navigations_localizations_links_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.navigations_localizations_links_id_seq OWNED BY public.navigations_localizations_links.id;
          public          nhassan    false    311            F           1259    24988    research_areas    TABLE     z  CREATE TABLE public.research_areas (
    id integer NOT NULL,
    area character varying(255),
    active boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    sitemap_exclude boolean
);
 "   DROP TABLE public.research_areas;
       public         heap    nhassan    false            H           1259    24999    research_areas_category_links    TABLE     �   CREATE TABLE public.research_areas_category_links (
    id integer NOT NULL,
    research_area_id integer,
    category_id integer,
    research_area_order double precision
);
 1   DROP TABLE public.research_areas_category_links;
       public         heap    nhassan    false            G           1259    24998 $   research_areas_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.research_areas_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.research_areas_category_links_id_seq;
       public          nhassan    false    328            R           0    0 $   research_areas_category_links_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.research_areas_category_links_id_seq OWNED BY public.research_areas_category_links.id;
          public          nhassan    false    327            E           1259    24987    research_areas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.research_areas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.research_areas_id_seq;
       public          nhassan    false    326            S           0    0    research_areas_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.research_areas_id_seq OWNED BY public.research_areas.id;
          public          nhassan    false    325            J           1259    25011 "   research_areas_localizations_links    TABLE     �   CREATE TABLE public.research_areas_localizations_links (
    id integer NOT NULL,
    research_area_id integer,
    inv_research_area_id integer,
    research_area_order double precision
);
 6   DROP TABLE public.research_areas_localizations_links;
       public         heap    nhassan    false            I           1259    25010 )   research_areas_localizations_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.research_areas_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.research_areas_localizations_links_id_seq;
       public          nhassan    false    330            T           0    0 )   research_areas_localizations_links_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.research_areas_localizations_links_id_seq OWNED BY public.research_areas_localizations_links.id;
          public          nhassan    false    329            B           1259    19820    slugs    TABLE     
  CREATE TABLE public.slugs (
    id integer NOT NULL,
    slug text,
    count integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
    DROP TABLE public.slugs;
       public         heap    nhassan    false            A           1259    19819    slugs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.slugs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.slugs_id_seq;
       public          nhassan    false    322            U           0    0    slugs_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.slugs_id_seq OWNED BY public.slugs.id;
          public          nhassan    false    321            �            1259    18763    strapi_api_token_permissions    TABLE     "  CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    nhassan    false            �            1259    18762 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          nhassan    false    226            V           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          nhassan    false    225                       1259    18989 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    nhassan    false                       1259    18988 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          nhassan    false    268            W           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          nhassan    false    267            �            1259    18752    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    nhassan    false            �            1259    18751    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          nhassan    false    224            X           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          nhassan    false    223            �            1259    18701    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    nhassan    false            �            1259    18700 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          nhassan    false    214            Y           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          nhassan    false    213            �            1259    18692    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    nhassan    false            �            1259    18691    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          nhassan    false    212            Z           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          nhassan    false    211            �            1259    18685    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    nhassan    false            �            1259    18684    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          nhassan    false    210            [           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          nhassan    false    209            �            1259    18783 !   strapi_transfer_token_permissions    TABLE     '  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    nhassan    false            �            1259    18782 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          nhassan    false    230            \           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          nhassan    false    229                       1259    19001 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    nhassan    false                       1259    19000 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          nhassan    false    270            ]           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          nhassan    false    269            �            1259    18772    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap    nhassan    false            �            1259    18771    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          nhassan    false    228            ^           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          nhassan    false    227            �            1259    18710    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    nhassan    false            �            1259    18709    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          nhassan    false    216            _           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          nhassan    false    215            L           1259    25061    tags    TABLE     ]  CREATE TABLE public.tags (
    id integer NOT NULL,
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    sitemap_exclude boolean
);
    DROP TABLE public.tags;
       public         heap    nhassan    false            P           1259    25112    tags_articles_links    TABLE     �   CREATE TABLE public.tags_articles_links (
    id integer NOT NULL,
    tag_id integer,
    article_id integer,
    article_order double precision,
    tag_order double precision
);
 '   DROP TABLE public.tags_articles_links;
       public         heap    nhassan    false            O           1259    25111    tags_articles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tags_articles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tags_articles_links_id_seq;
       public          nhassan    false    336            `           0    0    tags_articles_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tags_articles_links_id_seq OWNED BY public.tags_articles_links.id;
          public          nhassan    false    335            K           1259    25060    tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tags_id_seq;
       public          nhassan    false    332            a           0    0    tags_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;
          public          nhassan    false    331            N           1259    25072    tags_localizations_links    TABLE     �   CREATE TABLE public.tags_localizations_links (
    id integer NOT NULL,
    tag_id integer,
    inv_tag_id integer,
    tag_order double precision
);
 ,   DROP TABLE public.tags_localizations_links;
       public         heap    nhassan    false            M           1259    25071    tags_localizations_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tags_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tags_localizations_links_id_seq;
       public          nhassan    false    334            b           0    0    tags_localizations_links_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.tags_localizations_links_id_seq OWNED BY public.tags_localizations_links.id;
          public          nhassan    false    333            �            1259    18824    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    nhassan    false            �            1259    18823    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          nhassan    false    236            c           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          nhassan    false    235                       1259    19047    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    nhassan    false                       1259    19046     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          nhassan    false    278            d           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          nhassan    false    277            �            1259    18833    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    nhassan    false            �            1259    18832    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          nhassan    false    238            e           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          nhassan    false    237            �            1259    18844    up_users    TABLE       CREATE TABLE public.up_users (
    id integer NOT NULL,
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
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
    DROP TABLE public.up_users;
       public         heap    nhassan    false            �            1259    18843    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          nhassan    false    240            f           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          nhassan    false    239                       1259    19059    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    nhassan    false                       1259    19058    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          nhassan    false    280            g           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          nhassan    false    279            �            1259    18809    upload_folders    TABLE     H  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    sitemap_exclude boolean
);
 "   DROP TABLE public.upload_folders;
       public         heap    nhassan    false            �            1259    18808    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          nhassan    false    234            h           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          nhassan    false    233                       1259    19035    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    nhassan    false                       1259    19034 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          nhassan    false    276            i           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          nhassan    false    275            �           2604    18869 	   abouts id    DEFAULT     f   ALTER TABLE ONLY public.abouts ALTER COLUMN id SET DEFAULT nextval('public.abouts_id_seq'::regclass);
 8   ALTER TABLE public.abouts ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    243    244    244            �           2604    19074    abouts_components id    DEFAULT     |   ALTER TABLE ONLY public.abouts_components ALTER COLUMN id SET DEFAULT nextval('public.abouts_components_id_seq'::regclass);
 C   ALTER TABLE public.abouts_components ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    282    281    282            �           2604    19574 
   actions id    DEFAULT     h   ALTER TABLE ONLY public.actions ALTER COLUMN id SET DEFAULT nextval('public.actions_id_seq'::regclass);
 9   ALTER TABLE public.actions ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    305    306    306            �           2604    18722    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    218    217    218            �           2604    18967    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    264    263    264            �           2604    18744    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    222    221    222            �           2604    18733    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    219    220    220            �           2604    18979    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    266    265    266            �           2604    18878    articles id    DEFAULT     j   ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    245    246    246            �           2604    19102    articles_author_links id    DEFAULT     �   ALTER TABLE ONLY public.articles_author_links ALTER COLUMN id SET DEFAULT nextval('public.articles_author_links_id_seq'::regclass);
 G   ALTER TABLE public.articles_author_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    286    285    286            �           2604    24959    articles_categories_links id    DEFAULT     �   ALTER TABLE ONLY public.articles_categories_links ALTER COLUMN id SET DEFAULT nextval('public.articles_categories_links_id_seq'::regclass);
 K   ALTER TABLE public.articles_categories_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    323    324    324            �           2604    19088    articles_components id    DEFAULT     �   ALTER TABLE ONLY public.articles_components ALTER COLUMN id SET DEFAULT nextval('public.articles_components_id_seq'::regclass);
 E   ALTER TABLE public.articles_components ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    283    284    284            �           2604    19526    audience id    DEFAULT     j   ALTER TABLE ONLY public.audience ALTER COLUMN id SET DEFAULT nextval('public.audience_id_seq'::regclass);
 :   ALTER TABLE public.audience ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    298    297    298            �           2604    18891 
   authors id    DEFAULT     h   ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);
 9   ALTER TABLE public.authors ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    248    247    248            �           2604    18902    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    249    250    250            �           2604    18926    components_shared_media id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_media ALTER COLUMN id SET DEFAULT nextval('public.components_shared_media_id_seq'::regclass);
 I   ALTER TABLE public.components_shared_media ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    254    253    254            �           2604    18933    components_shared_quotes id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_quotes ALTER COLUMN id SET DEFAULT nextval('public.components_shared_quotes_id_seq'::regclass);
 J   ALTER TABLE public.components_shared_quotes ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    256    255    256            �           2604    18942    components_shared_rich_texts id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.components_shared_rich_texts_id_seq'::regclass);
 N   ALTER TABLE public.components_shared_rich_texts ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    258    257    258            �           2604    18951    components_shared_seos id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);
 H   ALTER TABLE public.components_shared_seos ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    259    260    260            �           2604    18960    components_shared_sliders id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_sliders ALTER COLUMN id SET DEFAULT nextval('public.components_shared_sliders_id_seq'::regclass);
 K   ALTER TABLE public.components_shared_sliders ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    262    261    262            �           2604    19463    ezforms_recipient id    DEFAULT     |   ALTER TABLE ONLY public.ezforms_recipient ALTER COLUMN id SET DEFAULT nextval('public.ezforms_recipient_id_seq'::regclass);
 C   ALTER TABLE public.ezforms_recipient ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    291    292    292            �           2604    19452    ezforms_submission id    DEFAULT     ~   ALTER TABLE ONLY public.ezforms_submission ALTER COLUMN id SET DEFAULT nextval('public.ezforms_submission_id_seq'::regclass);
 D   ALTER TABLE public.ezforms_submission ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    289    290    290            �           2604    18795    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    231    232    232            �           2604    19026    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    273    274    274            �           2604    19016    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    271    272    272            �           2604    18915 
   globals id    DEFAULT     h   ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);
 9   ALTER TABLE public.globals ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    251    252    252            �           2604    19126    globals_components id    DEFAULT     ~   ALTER TABLE ONLY public.globals_components ALTER COLUMN id SET DEFAULT nextval('public.globals_components_id_seq'::regclass);
 D   ALTER TABLE public.globals_components ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    288    287    288            �           2604    18858    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    242    241    242            �           2604    19515    menu_items id    DEFAULT     n   ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);
 <   ALTER TABLE public.menu_items ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    296    295    296            �           2604    19597    menu_items_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.menu_items_parent_links ALTER COLUMN id SET DEFAULT nextval('public.menu_items_parent_links_id_seq'::regclass);
 I   ALTER TABLE public.menu_items_parent_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    309    310    310            �           2604    19585    menu_items_root_menu_links id    DEFAULT     �   ALTER TABLE ONLY public.menu_items_root_menu_links ALTER COLUMN id SET DEFAULT nextval('public.menu_items_root_menu_links_id_seq'::regclass);
 L   ALTER TABLE public.menu_items_root_menu_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    307    308    308            �           2604    19502    menus id    DEFAULT     d   ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);
 7   ALTER TABLE public.menus ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    293    294    294            �           2604    19539    navigations id    DEFAULT     p   ALTER TABLE ONLY public.navigations ALTER COLUMN id SET DEFAULT nextval('public.navigations_id_seq'::regclass);
 =   ALTER TABLE public.navigations ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    300    299    300            �           2604    19552    navigations_items id    DEFAULT     |   ALTER TABLE ONLY public.navigations_items ALTER COLUMN id SET DEFAULT nextval('public.navigations_items_id_seq'::regclass);
 C   ALTER TABLE public.navigations_items ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    302    301    302            �           2604    19654 #   navigations_items_audience_links id    DEFAULT     �   ALTER TABLE ONLY public.navigations_items_audience_links ALTER COLUMN id SET DEFAULT nextval('public.navigations_items_audience_links_id_seq'::regclass);
 R   ALTER TABLE public.navigations_items_audience_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    320    319    320            �           2604    19642 !   navigations_items_master_links id    DEFAULT     �   ALTER TABLE ONLY public.navigations_items_master_links ALTER COLUMN id SET DEFAULT nextval('public.navigations_items_master_links_id_seq'::regclass);
 P   ALTER TABLE public.navigations_items_master_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    317    318    318            �           2604    19631 !   navigations_items_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.navigations_items_parent_links ALTER COLUMN id SET DEFAULT nextval('public.navigations_items_parent_links_id_seq'::regclass);
 P   ALTER TABLE public.navigations_items_parent_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    315    316    316            �           2604    19563    navigations_items_related id    DEFAULT     �   ALTER TABLE ONLY public.navigations_items_related ALTER COLUMN id SET DEFAULT nextval('public.navigations_items_related_id_seq'::regclass);
 K   ALTER TABLE public.navigations_items_related ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    303    304    304            �           2604    19620 "   navigations_items_related_links id    DEFAULT     �   ALTER TABLE ONLY public.navigations_items_related_links ALTER COLUMN id SET DEFAULT nextval('public.navigations_items_related_links_id_seq'::regclass);
 Q   ALTER TABLE public.navigations_items_related_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    314    313    314            �           2604    19608 "   navigations_localizations_links id    DEFAULT     �   ALTER TABLE ONLY public.navigations_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.navigations_localizations_links_id_seq'::regclass);
 Q   ALTER TABLE public.navigations_localizations_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    311    312    312            �           2604    24991    research_areas id    DEFAULT     v   ALTER TABLE ONLY public.research_areas ALTER COLUMN id SET DEFAULT nextval('public.research_areas_id_seq'::regclass);
 @   ALTER TABLE public.research_areas ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    325    326    326            �           2604    25002     research_areas_category_links id    DEFAULT     �   ALTER TABLE ONLY public.research_areas_category_links ALTER COLUMN id SET DEFAULT nextval('public.research_areas_category_links_id_seq'::regclass);
 O   ALTER TABLE public.research_areas_category_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    328    327    328            �           2604    25014 %   research_areas_localizations_links id    DEFAULT     �   ALTER TABLE ONLY public.research_areas_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.research_areas_localizations_links_id_seq'::regclass);
 T   ALTER TABLE public.research_areas_localizations_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    330    329    330            �           2604    19823    slugs id    DEFAULT     d   ALTER TABLE ONLY public.slugs ALTER COLUMN id SET DEFAULT nextval('public.slugs_id_seq'::regclass);
 7   ALTER TABLE public.slugs ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    322    321    322            �           2604    18766    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    226    225    226            �           2604    18992 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    268    267    268            �           2604    18755    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    224    223    224            �           2604    18704    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    213    214    214            �           2604    18695    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    212    211    212            �           2604    18688    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    209    210    210            �           2604    18786 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    229    230    230            �           2604    19004 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    270    269    270            �           2604    18775    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    227    228    228            �           2604    18713    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    216    215    216            �           2604    25064    tags id    DEFAULT     b   ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);
 6   ALTER TABLE public.tags ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    332    331    332            �           2604    25115    tags_articles_links id    DEFAULT     �   ALTER TABLE ONLY public.tags_articles_links ALTER COLUMN id SET DEFAULT nextval('public.tags_articles_links_id_seq'::regclass);
 E   ALTER TABLE public.tags_articles_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    336    335    336            �           2604    25075    tags_localizations_links id    DEFAULT     �   ALTER TABLE ONLY public.tags_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.tags_localizations_links_id_seq'::regclass);
 J   ALTER TABLE public.tags_localizations_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    334    333    334            �           2604    18827    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    235    236    236            �           2604    19050    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    278    277    278            �           2604    18836    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    238    237    238            �           2604    18847    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    239    240    240            �           2604    19062    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    280    279    280            �           2604    18812    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    234    233    234            �           2604    19038    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          nhassan    false    275    276    276            �           2606    19078 (   abouts_components abouts_components_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.abouts_components
    ADD CONSTRAINT abouts_components_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.abouts_components DROP CONSTRAINT abouts_components_pkey;
       public            nhassan    false    282            ,           2606    18871    abouts abouts_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.abouts DROP CONSTRAINT abouts_pkey;
       public            nhassan    false    244            �           2606    34871    abouts_components abouts_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.abouts_components
    ADD CONSTRAINT abouts_unique UNIQUE (entity_id, component_id, field, component_type);
 I   ALTER TABLE ONLY public.abouts_components DROP CONSTRAINT abouts_unique;
       public            nhassan    false    282    282    282    282            �           2606    19578    actions actions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.actions
    ADD CONSTRAINT actions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.actions DROP CONSTRAINT actions_pkey;
       public            nhassan    false    306            �           2606    18726 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            nhassan    false    218            P           2606    18969 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            nhassan    false    264            R           2606    18973 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            nhassan    false    264    264            �           2606    18748    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            nhassan    false    222            �           2606    18737    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            nhassan    false    220            X           2606    18981 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            nhassan    false    266            Z           2606    18985 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            nhassan    false    266    266            �           2606    19104 0   articles_author_links articles_author_links_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_pkey;
       public            nhassan    false    286            �           2606    19108 2   articles_author_links articles_author_links_unique 
   CONSTRAINT     ~   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_unique UNIQUE (article_id, author_id);
 \   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_unique;
       public            nhassan    false    286    286                       2606    24961 8   articles_categories_links articles_categories_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.articles_categories_links
    ADD CONSTRAINT articles_categories_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.articles_categories_links DROP CONSTRAINT articles_categories_links_pkey;
       public            nhassan    false    324            	           2606    24965 :   articles_categories_links articles_categories_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.articles_categories_links
    ADD CONSTRAINT articles_categories_links_unique UNIQUE (article_id, category_id);
 d   ALTER TABLE ONLY public.articles_categories_links DROP CONSTRAINT articles_categories_links_unique;
       public            nhassan    false    324    324            �           2606    19092 ,   articles_components articles_components_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.articles_components
    ADD CONSTRAINT articles_components_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.articles_components DROP CONSTRAINT articles_components_pkey;
       public            nhassan    false    284            0           2606    18882    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public            nhassan    false    246            2           2606    18884    articles articles_slug_unique 
   CONSTRAINT     X   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_slug_unique UNIQUE (slug);
 G   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_slug_unique;
       public            nhassan    false    246            �           2606    34873 #   articles_components articles_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.articles_components
    ADD CONSTRAINT articles_unique UNIQUE (entity_id, component_id, field, component_type);
 M   ALTER TABLE ONLY public.articles_components DROP CONSTRAINT articles_unique;
       public            nhassan    false    284    284    284    284            �           2606    19532    audience audience_key_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.audience
    ADD CONSTRAINT audience_key_unique UNIQUE (key);
 F   ALTER TABLE ONLY public.audience DROP CONSTRAINT audience_key_unique;
       public            nhassan    false    298            �           2606    19530    audience audience_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.audience
    ADD CONSTRAINT audience_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.audience DROP CONSTRAINT audience_pkey;
       public            nhassan    false    298            6           2606    18895    authors authors_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public            nhassan    false    248            :           2606    18906    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            nhassan    false    250            <           2606    18908 !   categories categories_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_slug_unique;
       public            nhassan    false    250            C           2606    18928 4   components_shared_media components_shared_media_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_shared_media
    ADD CONSTRAINT components_shared_media_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_shared_media DROP CONSTRAINT components_shared_media_pkey;
       public            nhassan    false    254            E           2606    18937 6   components_shared_quotes components_shared_quotes_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_shared_quotes
    ADD CONSTRAINT components_shared_quotes_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_shared_quotes DROP CONSTRAINT components_shared_quotes_pkey;
       public            nhassan    false    256            G           2606    18946 >   components_shared_rich_texts components_shared_rich_texts_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_shared_rich_texts
    ADD CONSTRAINT components_shared_rich_texts_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_shared_rich_texts DROP CONSTRAINT components_shared_rich_texts_pkey;
       public            nhassan    false    258            I           2606    18955 2   components_shared_seos components_shared_seos_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.components_shared_seos DROP CONSTRAINT components_shared_seos_pkey;
       public            nhassan    false    260            K           2606    18962 8   components_shared_sliders components_shared_sliders_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_shared_sliders
    ADD CONSTRAINT components_shared_sliders_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_shared_sliders DROP CONSTRAINT components_shared_sliders_pkey;
       public            nhassan    false    262            �           2606    19467 (   ezforms_recipient ezforms_recipient_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.ezforms_recipient
    ADD CONSTRAINT ezforms_recipient_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.ezforms_recipient DROP CONSTRAINT ezforms_recipient_pkey;
       public            nhassan    false    292            �           2606    19456 *   ezforms_submission ezforms_submission_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ezforms_submission
    ADD CONSTRAINT ezforms_submission_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.ezforms_submission DROP CONSTRAINT ezforms_submission_pkey;
       public            nhassan    false    290            r           2606    19028 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            nhassan    false    274            t           2606    19032 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            nhassan    false    274    274            
           2606    18799    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            nhassan    false    232            m           2606    19020 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            nhassan    false    272            �           2606    19130 *   globals_components globals_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_components_pkey;
       public            nhassan    false    288            @           2606    18919    globals globals_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_pkey;
       public            nhassan    false    252            �           2606    34875 !   globals_components globals_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_unique UNIQUE (entity_id, component_id, field, component_type);
 K   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_unique;
       public            nhassan    false    288    288    288    288            (           2606    18862    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            nhassan    false    242            �           2606    19599 4   menu_items_parent_links menu_items_parent_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.menu_items_parent_links
    ADD CONSTRAINT menu_items_parent_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.menu_items_parent_links DROP CONSTRAINT menu_items_parent_links_pkey;
       public            nhassan    false    310            �           2606    19603 6   menu_items_parent_links menu_items_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.menu_items_parent_links
    ADD CONSTRAINT menu_items_parent_links_unique UNIQUE (menu_item_id, inv_menu_item_id);
 `   ALTER TABLE ONLY public.menu_items_parent_links DROP CONSTRAINT menu_items_parent_links_unique;
       public            nhassan    false    310    310            �           2606    19519    menu_items menu_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_pkey;
       public            nhassan    false    296            �           2606    19587 :   menu_items_root_menu_links menu_items_root_menu_links_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.menu_items_root_menu_links
    ADD CONSTRAINT menu_items_root_menu_links_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.menu_items_root_menu_links DROP CONSTRAINT menu_items_root_menu_links_pkey;
       public            nhassan    false    308            �           2606    19591 <   menu_items_root_menu_links menu_items_root_menu_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.menu_items_root_menu_links
    ADD CONSTRAINT menu_items_root_menu_links_unique UNIQUE (menu_item_id, menu_id);
 f   ALTER TABLE ONLY public.menu_items_root_menu_links DROP CONSTRAINT menu_items_root_menu_links_unique;
       public            nhassan    false    308    308            �           2606    19506    menus menus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_pkey;
       public            nhassan    false    294            �           2606    19508    menus menus_slug_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_slug_unique UNIQUE (slug);
 A   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_slug_unique;
       public            nhassan    false    294            �           2606    19656 F   navigations_items_audience_links navigations_items_audience_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_audience_links
    ADD CONSTRAINT navigations_items_audience_links_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.navigations_items_audience_links DROP CONSTRAINT navigations_items_audience_links_pkey;
       public            nhassan    false    320            �           2606    19660 H   navigations_items_audience_links navigations_items_audience_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_audience_links
    ADD CONSTRAINT navigations_items_audience_links_unique UNIQUE (navigation_item_id, audience_id);
 r   ALTER TABLE ONLY public.navigations_items_audience_links DROP CONSTRAINT navigations_items_audience_links_unique;
       public            nhassan    false    320    320            �           2606    19644 B   navigations_items_master_links navigations_items_master_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_master_links
    ADD CONSTRAINT navigations_items_master_links_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.navigations_items_master_links DROP CONSTRAINT navigations_items_master_links_pkey;
       public            nhassan    false    318            �           2606    19648 D   navigations_items_master_links navigations_items_master_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_master_links
    ADD CONSTRAINT navigations_items_master_links_unique UNIQUE (navigation_item_id, navigation_id);
 n   ALTER TABLE ONLY public.navigations_items_master_links DROP CONSTRAINT navigations_items_master_links_unique;
       public            nhassan    false    318    318            �           2606    19633 B   navigations_items_parent_links navigations_items_parent_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_parent_links
    ADD CONSTRAINT navigations_items_parent_links_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.navigations_items_parent_links DROP CONSTRAINT navigations_items_parent_links_pkey;
       public            nhassan    false    316            �           2606    19637 D   navigations_items_parent_links navigations_items_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_parent_links
    ADD CONSTRAINT navigations_items_parent_links_unique UNIQUE (navigation_item_id, inv_navigation_item_id);
 n   ALTER TABLE ONLY public.navigations_items_parent_links DROP CONSTRAINT navigations_items_parent_links_unique;
       public            nhassan    false    316    316            �           2606    19556 (   navigations_items navigations_items_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.navigations_items
    ADD CONSTRAINT navigations_items_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.navigations_items DROP CONSTRAINT navigations_items_pkey;
       public            nhassan    false    302            �           2606    19622 D   navigations_items_related_links navigations_items_related_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_related_links
    ADD CONSTRAINT navigations_items_related_links_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.navigations_items_related_links DROP CONSTRAINT navigations_items_related_links_pkey;
       public            nhassan    false    314            �           2606    19626 F   navigations_items_related_links navigations_items_related_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_related_links
    ADD CONSTRAINT navigations_items_related_links_unique UNIQUE (navigation_item_id, navigations_items_related_id);
 p   ALTER TABLE ONLY public.navigations_items_related_links DROP CONSTRAINT navigations_items_related_links_unique;
       public            nhassan    false    314    314            �           2606    19567 8   navigations_items_related navigations_items_related_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.navigations_items_related
    ADD CONSTRAINT navigations_items_related_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.navigations_items_related DROP CONSTRAINT navigations_items_related_pkey;
       public            nhassan    false    304            �           2606    19610 D   navigations_localizations_links navigations_localizations_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.navigations_localizations_links
    ADD CONSTRAINT navigations_localizations_links_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.navigations_localizations_links DROP CONSTRAINT navigations_localizations_links_pkey;
       public            nhassan    false    312            �           2606    19614 F   navigations_localizations_links navigations_localizations_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.navigations_localizations_links
    ADD CONSTRAINT navigations_localizations_links_unique UNIQUE (navigation_id, inv_navigation_id);
 p   ALTER TABLE ONLY public.navigations_localizations_links DROP CONSTRAINT navigations_localizations_links_unique;
       public            nhassan    false    312    312            �           2606    19543    navigations navigations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.navigations
    ADD CONSTRAINT navigations_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.navigations DROP CONSTRAINT navigations_pkey;
       public            nhassan    false    300            �           2606    19545 #   navigations navigations_slug_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.navigations
    ADD CONSTRAINT navigations_slug_unique UNIQUE (slug);
 M   ALTER TABLE ONLY public.navigations DROP CONSTRAINT navigations_slug_unique;
       public            nhassan    false    300                       2606    25004 @   research_areas_category_links research_areas_category_links_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.research_areas_category_links
    ADD CONSTRAINT research_areas_category_links_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.research_areas_category_links DROP CONSTRAINT research_areas_category_links_pkey;
       public            nhassan    false    328                       2606    25008 B   research_areas_category_links research_areas_category_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.research_areas_category_links
    ADD CONSTRAINT research_areas_category_links_unique UNIQUE (research_area_id, category_id);
 l   ALTER TABLE ONLY public.research_areas_category_links DROP CONSTRAINT research_areas_category_links_unique;
       public            nhassan    false    328    328                       2606    25016 J   research_areas_localizations_links research_areas_localizations_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.research_areas_localizations_links
    ADD CONSTRAINT research_areas_localizations_links_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.research_areas_localizations_links DROP CONSTRAINT research_areas_localizations_links_pkey;
       public            nhassan    false    330                       2606    25020 L   research_areas_localizations_links research_areas_localizations_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.research_areas_localizations_links
    ADD CONSTRAINT research_areas_localizations_links_unique UNIQUE (research_area_id, inv_research_area_id);
 v   ALTER TABLE ONLY public.research_areas_localizations_links DROP CONSTRAINT research_areas_localizations_links_unique;
       public            nhassan    false    330    330                       2606    24995 "   research_areas research_areas_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.research_areas
    ADD CONSTRAINT research_areas_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.research_areas DROP CONSTRAINT research_areas_pkey;
       public            nhassan    false    326                        2606    19827    slugs slugs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.slugs DROP CONSTRAINT slugs_pkey;
       public            nhassan    false    322            �           2606    18768 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            nhassan    false    226            _           2606    18994 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            nhassan    false    268            a           2606    18998 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            nhassan    false    268    268            �           2606    18759 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            nhassan    false    224            �           2606    18708 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            nhassan    false    214            �           2606    18699 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            nhassan    false    212            �           2606    18690 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            nhassan    false    210                       2606    18788 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            nhassan    false    230            f           2606    19006 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            nhassan    false    270            h           2606    19010 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            nhassan    false    270    270                       2606    18779 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            nhassan    false    228            �           2606    18717 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            nhassan    false    216            ,           2606    25117 ,   tags_articles_links tags_articles_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tags_articles_links
    ADD CONSTRAINT tags_articles_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tags_articles_links DROP CONSTRAINT tags_articles_links_pkey;
       public            nhassan    false    336            .           2606    25121 .   tags_articles_links tags_articles_links_unique 
   CONSTRAINT     w   ALTER TABLE ONLY public.tags_articles_links
    ADD CONSTRAINT tags_articles_links_unique UNIQUE (tag_id, article_id);
 X   ALTER TABLE ONLY public.tags_articles_links DROP CONSTRAINT tags_articles_links_unique;
       public            nhassan    false    336    336            $           2606    25077 6   tags_localizations_links tags_localizations_links_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.tags_localizations_links
    ADD CONSTRAINT tags_localizations_links_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.tags_localizations_links DROP CONSTRAINT tags_localizations_links_pkey;
       public            nhassan    false    334            &           2606    25081 8   tags_localizations_links tags_localizations_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.tags_localizations_links
    ADD CONSTRAINT tags_localizations_links_unique UNIQUE (tag_id, inv_tag_id);
 b   ALTER TABLE ONLY public.tags_localizations_links DROP CONSTRAINT tags_localizations_links_unique;
       public            nhassan    false    334    334                       2606    25068    tags tags_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public            nhassan    false    332                       2606    18829 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            nhassan    false    236            �           2606    19052 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            nhassan    false    278            �           2606    19056 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            nhassan    false    278    278                        2606    18840    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            nhassan    false    238            $           2606    18851    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            nhassan    false    240            �           2606    19064 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            nhassan    false    280            �           2606    19068 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            nhassan    false    280    280            y           2606    19040 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            nhassan    false    276            {           2606    19044 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            nhassan    false    276    276                       2606    18818 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            nhassan    false    234                       2606    18820 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            nhassan    false    234                       2606    18816 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            nhassan    false    234            �           1259    19080    abouts_component_type_index    INDEX     c   CREATE INDEX abouts_component_type_index ON public.abouts_components USING btree (component_type);
 /   DROP INDEX public.abouts_component_type_index;
       public            nhassan    false    282            *           1259    18872    abouts_created_by_id_fk    INDEX     S   CREATE INDEX abouts_created_by_id_fk ON public.abouts USING btree (created_by_id);
 +   DROP INDEX public.abouts_created_by_id_fk;
       public            nhassan    false    244            �           1259    19081    abouts_entity_fk    INDEX     S   CREATE INDEX abouts_entity_fk ON public.abouts_components USING btree (entity_id);
 $   DROP INDEX public.abouts_entity_fk;
       public            nhassan    false    282            �           1259    19079    abouts_field_index    INDEX     Q   CREATE INDEX abouts_field_index ON public.abouts_components USING btree (field);
 &   DROP INDEX public.abouts_field_index;
       public            nhassan    false    282            -           1259    18873    abouts_updated_by_id_fk    INDEX     S   CREATE INDEX abouts_updated_by_id_fk ON public.abouts USING btree (updated_by_id);
 +   DROP INDEX public.abouts_updated_by_id_fk;
       public            nhassan    false    244            �           1259    19579    actions_created_by_id_fk    INDEX     U   CREATE INDEX actions_created_by_id_fk ON public.actions USING btree (created_by_id);
 ,   DROP INDEX public.actions_created_by_id_fk;
       public            nhassan    false    306            �           1259    19580    actions_updated_by_id_fk    INDEX     U   CREATE INDEX actions_updated_by_id_fk ON public.actions USING btree (updated_by_id);
 ,   DROP INDEX public.actions_updated_by_id_fk;
       public            nhassan    false    306            �           1259    18727 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            nhassan    false    218            L           1259    18970    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            nhassan    false    264            M           1259    18971 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            nhassan    false    264            N           1259    18974 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            nhassan    false    264            �           1259    18728 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            nhassan    false    218            �           1259    18749    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            nhassan    false    222            �           1259    18750    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            nhassan    false    222            �           1259    18738    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            nhassan    false    220            S           1259    18982    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            nhassan    false    266            T           1259    18983    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            nhassan    false    266            U           1259    18986     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            nhassan    false    266            V           1259    18987 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            nhassan    false    266            �           1259    18739    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            nhassan    false    220            �           1259    19105    articles_author_links_fk    INDEX     `   CREATE INDEX articles_author_links_fk ON public.articles_author_links USING btree (article_id);
 ,   DROP INDEX public.articles_author_links_fk;
       public            nhassan    false    286            �           1259    19106    articles_author_links_inv_fk    INDEX     c   CREATE INDEX articles_author_links_inv_fk ON public.articles_author_links USING btree (author_id);
 0   DROP INDEX public.articles_author_links_inv_fk;
       public            nhassan    false    286            �           1259    19109 "   articles_author_links_order_inv_fk    INDEX     m   CREATE INDEX articles_author_links_order_inv_fk ON public.articles_author_links USING btree (article_order);
 6   DROP INDEX public.articles_author_links_order_inv_fk;
       public            nhassan    false    286                       1259    24962    articles_categories_links_fk    INDEX     h   CREATE INDEX articles_categories_links_fk ON public.articles_categories_links USING btree (article_id);
 0   DROP INDEX public.articles_categories_links_fk;
       public            nhassan    false    324                       1259    24963     articles_categories_links_inv_fk    INDEX     m   CREATE INDEX articles_categories_links_inv_fk ON public.articles_categories_links USING btree (category_id);
 4   DROP INDEX public.articles_categories_links_inv_fk;
       public            nhassan    false    324                       1259    24966 "   articles_categories_links_order_fk    INDEX     r   CREATE INDEX articles_categories_links_order_fk ON public.articles_categories_links USING btree (category_order);
 6   DROP INDEX public.articles_categories_links_order_fk;
       public            nhassan    false    324                       1259    24967 &   articles_categories_links_order_inv_fk    INDEX     u   CREATE INDEX articles_categories_links_order_inv_fk ON public.articles_categories_links USING btree (article_order);
 :   DROP INDEX public.articles_categories_links_order_inv_fk;
       public            nhassan    false    324            �           1259    19094    articles_component_type_index    INDEX     g   CREATE INDEX articles_component_type_index ON public.articles_components USING btree (component_type);
 1   DROP INDEX public.articles_component_type_index;
       public            nhassan    false    284            .           1259    18885    articles_created_by_id_fk    INDEX     W   CREATE INDEX articles_created_by_id_fk ON public.articles USING btree (created_by_id);
 -   DROP INDEX public.articles_created_by_id_fk;
       public            nhassan    false    246            �           1259    19095    articles_entity_fk    INDEX     W   CREATE INDEX articles_entity_fk ON public.articles_components USING btree (entity_id);
 &   DROP INDEX public.articles_entity_fk;
       public            nhassan    false    284            �           1259    19093    articles_field_index    INDEX     U   CREATE INDEX articles_field_index ON public.articles_components USING btree (field);
 (   DROP INDEX public.articles_field_index;
       public            nhassan    false    284            3           1259    18886    articles_updated_by_id_fk    INDEX     W   CREATE INDEX articles_updated_by_id_fk ON public.articles USING btree (updated_by_id);
 -   DROP INDEX public.articles_updated_by_id_fk;
       public            nhassan    false    246            �           1259    19533    audience_created_by_id_fk    INDEX     W   CREATE INDEX audience_created_by_id_fk ON public.audience USING btree (created_by_id);
 -   DROP INDEX public.audience_created_by_id_fk;
       public            nhassan    false    298            �           1259    19534    audience_updated_by_id_fk    INDEX     W   CREATE INDEX audience_updated_by_id_fk ON public.audience USING btree (updated_by_id);
 -   DROP INDEX public.audience_updated_by_id_fk;
       public            nhassan    false    298            4           1259    18896    authors_created_by_id_fk    INDEX     U   CREATE INDEX authors_created_by_id_fk ON public.authors USING btree (created_by_id);
 ,   DROP INDEX public.authors_created_by_id_fk;
       public            nhassan    false    248            7           1259    18897    authors_updated_by_id_fk    INDEX     U   CREATE INDEX authors_updated_by_id_fk ON public.authors USING btree (updated_by_id);
 ,   DROP INDEX public.authors_updated_by_id_fk;
       public            nhassan    false    248            8           1259    18909    categories_created_by_id_fk    INDEX     [   CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);
 /   DROP INDEX public.categories_created_by_id_fk;
       public            nhassan    false    250            =           1259    18910    categories_updated_by_id_fk    INDEX     [   CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);
 /   DROP INDEX public.categories_updated_by_id_fk;
       public            nhassan    false    250            �           1259    19468 "   ezforms_recipient_created_by_id_fk    INDEX     i   CREATE INDEX ezforms_recipient_created_by_id_fk ON public.ezforms_recipient USING btree (created_by_id);
 6   DROP INDEX public.ezforms_recipient_created_by_id_fk;
       public            nhassan    false    292            �           1259    19469 "   ezforms_recipient_updated_by_id_fk    INDEX     i   CREATE INDEX ezforms_recipient_updated_by_id_fk ON public.ezforms_recipient USING btree (updated_by_id);
 6   DROP INDEX public.ezforms_recipient_updated_by_id_fk;
       public            nhassan    false    292            �           1259    19457 #   ezforms_submission_created_by_id_fk    INDEX     k   CREATE INDEX ezforms_submission_created_by_id_fk ON public.ezforms_submission USING btree (created_by_id);
 7   DROP INDEX public.ezforms_submission_created_by_id_fk;
       public            nhassan    false    290            �           1259    19458 #   ezforms_submission_updated_by_id_fk    INDEX     k   CREATE INDEX ezforms_submission_updated_by_id_fk ON public.ezforms_submission USING btree (updated_by_id);
 7   DROP INDEX public.ezforms_submission_updated_by_id_fk;
       public            nhassan    false    290                       1259    18806    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            nhassan    false    232            n           1259    19029    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            nhassan    false    274            o           1259    19030    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            nhassan    false    274            p           1259    19033    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            nhassan    false    274            i           1259    19021    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            nhassan    false    272            j           1259    34869 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            nhassan    false    272            k           1259    34868     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            nhassan    false    272                       1259    18807    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            nhassan    false    232            �           1259    19132    globals_component_type_index    INDEX     e   CREATE INDEX globals_component_type_index ON public.globals_components USING btree (component_type);
 0   DROP INDEX public.globals_component_type_index;
       public            nhassan    false    288            >           1259    18920    globals_created_by_id_fk    INDEX     U   CREATE INDEX globals_created_by_id_fk ON public.globals USING btree (created_by_id);
 ,   DROP INDEX public.globals_created_by_id_fk;
       public            nhassan    false    252            �           1259    19133    globals_entity_fk    INDEX     U   CREATE INDEX globals_entity_fk ON public.globals_components USING btree (entity_id);
 %   DROP INDEX public.globals_entity_fk;
       public            nhassan    false    288            �           1259    19131    globals_field_index    INDEX     S   CREATE INDEX globals_field_index ON public.globals_components USING btree (field);
 '   DROP INDEX public.globals_field_index;
       public            nhassan    false    288            A           1259    18921    globals_updated_by_id_fk    INDEX     U   CREATE INDEX globals_updated_by_id_fk ON public.globals USING btree (updated_by_id);
 ,   DROP INDEX public.globals_updated_by_id_fk;
       public            nhassan    false    252            &           1259    18863    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            nhassan    false    242            )           1259    18864    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            nhassan    false    242            �           1259    19520    menu_items_created_by_id_fk    INDEX     [   CREATE INDEX menu_items_created_by_id_fk ON public.menu_items USING btree (created_by_id);
 /   DROP INDEX public.menu_items_created_by_id_fk;
       public            nhassan    false    296            �           1259    19600    menu_items_parent_links_fk    INDEX     f   CREATE INDEX menu_items_parent_links_fk ON public.menu_items_parent_links USING btree (menu_item_id);
 .   DROP INDEX public.menu_items_parent_links_fk;
       public            nhassan    false    310            �           1259    19601    menu_items_parent_links_inv_fk    INDEX     n   CREATE INDEX menu_items_parent_links_inv_fk ON public.menu_items_parent_links USING btree (inv_menu_item_id);
 2   DROP INDEX public.menu_items_parent_links_inv_fk;
       public            nhassan    false    310            �           1259    19588    menu_items_root_menu_links_fk    INDEX     l   CREATE INDEX menu_items_root_menu_links_fk ON public.menu_items_root_menu_links USING btree (menu_item_id);
 1   DROP INDEX public.menu_items_root_menu_links_fk;
       public            nhassan    false    308            �           1259    19589 !   menu_items_root_menu_links_inv_fk    INDEX     k   CREATE INDEX menu_items_root_menu_links_inv_fk ON public.menu_items_root_menu_links USING btree (menu_id);
 5   DROP INDEX public.menu_items_root_menu_links_inv_fk;
       public            nhassan    false    308            �           1259    19592 '   menu_items_root_menu_links_order_inv_fk    INDEX     y   CREATE INDEX menu_items_root_menu_links_order_inv_fk ON public.menu_items_root_menu_links USING btree (menu_item_order);
 ;   DROP INDEX public.menu_items_root_menu_links_order_inv_fk;
       public            nhassan    false    308            �           1259    19521    menu_items_updated_by_id_fk    INDEX     [   CREATE INDEX menu_items_updated_by_id_fk ON public.menu_items USING btree (updated_by_id);
 /   DROP INDEX public.menu_items_updated_by_id_fk;
       public            nhassan    false    296            �           1259    19509    menus_created_by_id_fk    INDEX     Q   CREATE INDEX menus_created_by_id_fk ON public.menus USING btree (created_by_id);
 *   DROP INDEX public.menus_created_by_id_fk;
       public            nhassan    false    294            �           1259    19510    menus_updated_by_id_fk    INDEX     Q   CREATE INDEX menus_updated_by_id_fk ON public.menus USING btree (updated_by_id);
 *   DROP INDEX public.menus_updated_by_id_fk;
       public            nhassan    false    294            �           1259    19546    navigations_created_by_id_fk    INDEX     ]   CREATE INDEX navigations_created_by_id_fk ON public.navigations USING btree (created_by_id);
 0   DROP INDEX public.navigations_created_by_id_fk;
       public            nhassan    false    300            �           1259    19657 #   navigations_items_audience_links_fk    INDEX     ~   CREATE INDEX navigations_items_audience_links_fk ON public.navigations_items_audience_links USING btree (navigation_item_id);
 7   DROP INDEX public.navigations_items_audience_links_fk;
       public            nhassan    false    320            �           1259    19658 '   navigations_items_audience_links_inv_fk    INDEX     {   CREATE INDEX navigations_items_audience_links_inv_fk ON public.navigations_items_audience_links USING btree (audience_id);
 ;   DROP INDEX public.navigations_items_audience_links_inv_fk;
       public            nhassan    false    320            �           1259    19661 )   navigations_items_audience_links_order_fk    INDEX     �   CREATE INDEX navigations_items_audience_links_order_fk ON public.navigations_items_audience_links USING btree (audience_order);
 =   DROP INDEX public.navigations_items_audience_links_order_fk;
       public            nhassan    false    320            �           1259    19557 "   navigations_items_created_by_id_fk    INDEX     i   CREATE INDEX navigations_items_created_by_id_fk ON public.navigations_items USING btree (created_by_id);
 6   DROP INDEX public.navigations_items_created_by_id_fk;
       public            nhassan    false    302            �           1259    19645 !   navigations_items_master_links_fk    INDEX     z   CREATE INDEX navigations_items_master_links_fk ON public.navigations_items_master_links USING btree (navigation_item_id);
 5   DROP INDEX public.navigations_items_master_links_fk;
       public            nhassan    false    318            �           1259    19646 %   navigations_items_master_links_inv_fk    INDEX     y   CREATE INDEX navigations_items_master_links_inv_fk ON public.navigations_items_master_links USING btree (navigation_id);
 9   DROP INDEX public.navigations_items_master_links_inv_fk;
       public            nhassan    false    318            �           1259    19649 +   navigations_items_master_links_order_inv_fk    INDEX     �   CREATE INDEX navigations_items_master_links_order_inv_fk ON public.navigations_items_master_links USING btree (navigation_item_order);
 ?   DROP INDEX public.navigations_items_master_links_order_inv_fk;
       public            nhassan    false    318            �           1259    19634 !   navigations_items_parent_links_fk    INDEX     z   CREATE INDEX navigations_items_parent_links_fk ON public.navigations_items_parent_links USING btree (navigation_item_id);
 5   DROP INDEX public.navigations_items_parent_links_fk;
       public            nhassan    false    316            �           1259    19635 %   navigations_items_parent_links_inv_fk    INDEX     �   CREATE INDEX navigations_items_parent_links_inv_fk ON public.navigations_items_parent_links USING btree (inv_navigation_item_id);
 9   DROP INDEX public.navigations_items_parent_links_inv_fk;
       public            nhassan    false    316            �           1259    19568 *   navigations_items_related_created_by_id_fk    INDEX     y   CREATE INDEX navigations_items_related_created_by_id_fk ON public.navigations_items_related USING btree (created_by_id);
 >   DROP INDEX public.navigations_items_related_created_by_id_fk;
       public            nhassan    false    304            �           1259    19623 "   navigations_items_related_links_fk    INDEX     |   CREATE INDEX navigations_items_related_links_fk ON public.navigations_items_related_links USING btree (navigation_item_id);
 6   DROP INDEX public.navigations_items_related_links_fk;
       public            nhassan    false    314            �           1259    19624 &   navigations_items_related_links_inv_fk    INDEX     �   CREATE INDEX navigations_items_related_links_inv_fk ON public.navigations_items_related_links USING btree (navigations_items_related_id);
 :   DROP INDEX public.navigations_items_related_links_inv_fk;
       public            nhassan    false    314            �           1259    19569 *   navigations_items_related_updated_by_id_fk    INDEX     y   CREATE INDEX navigations_items_related_updated_by_id_fk ON public.navigations_items_related USING btree (updated_by_id);
 >   DROP INDEX public.navigations_items_related_updated_by_id_fk;
       public            nhassan    false    304            �           1259    19558 "   navigations_items_updated_by_id_fk    INDEX     i   CREATE INDEX navigations_items_updated_by_id_fk ON public.navigations_items USING btree (updated_by_id);
 6   DROP INDEX public.navigations_items_updated_by_id_fk;
       public            nhassan    false    302            �           1259    19611 "   navigations_localizations_links_fk    INDEX     w   CREATE INDEX navigations_localizations_links_fk ON public.navigations_localizations_links USING btree (navigation_id);
 6   DROP INDEX public.navigations_localizations_links_fk;
       public            nhassan    false    312            �           1259    19612 &   navigations_localizations_links_inv_fk    INDEX        CREATE INDEX navigations_localizations_links_inv_fk ON public.navigations_localizations_links USING btree (inv_navigation_id);
 :   DROP INDEX public.navigations_localizations_links_inv_fk;
       public            nhassan    false    312            �           1259    19615 (   navigations_localizations_links_order_fk    INDEX     �   CREATE INDEX navigations_localizations_links_order_fk ON public.navigations_localizations_links USING btree (navigation_order);
 <   DROP INDEX public.navigations_localizations_links_order_fk;
       public            nhassan    false    312            �           1259    19547    navigations_updated_by_id_fk    INDEX     ]   CREATE INDEX navigations_updated_by_id_fk ON public.navigations USING btree (updated_by_id);
 0   DROP INDEX public.navigations_updated_by_id_fk;
       public            nhassan    false    300                       1259    25005     research_areas_category_links_fk    INDEX     v   CREATE INDEX research_areas_category_links_fk ON public.research_areas_category_links USING btree (research_area_id);
 4   DROP INDEX public.research_areas_category_links_fk;
       public            nhassan    false    328                       1259    25006 $   research_areas_category_links_inv_fk    INDEX     u   CREATE INDEX research_areas_category_links_inv_fk ON public.research_areas_category_links USING btree (category_id);
 8   DROP INDEX public.research_areas_category_links_inv_fk;
       public            nhassan    false    328                       1259    25009 *   research_areas_category_links_order_inv_fk    INDEX     �   CREATE INDEX research_areas_category_links_order_inv_fk ON public.research_areas_category_links USING btree (research_area_order);
 >   DROP INDEX public.research_areas_category_links_order_inv_fk;
       public            nhassan    false    328            
           1259    24996    research_areas_created_by_id_fk    INDEX     c   CREATE INDEX research_areas_created_by_id_fk ON public.research_areas USING btree (created_by_id);
 3   DROP INDEX public.research_areas_created_by_id_fk;
       public            nhassan    false    326                       1259    25017 %   research_areas_localizations_links_fk    INDEX     �   CREATE INDEX research_areas_localizations_links_fk ON public.research_areas_localizations_links USING btree (research_area_id);
 9   DROP INDEX public.research_areas_localizations_links_fk;
       public            nhassan    false    330                       1259    25018 )   research_areas_localizations_links_inv_fk    INDEX     �   CREATE INDEX research_areas_localizations_links_inv_fk ON public.research_areas_localizations_links USING btree (inv_research_area_id);
 =   DROP INDEX public.research_areas_localizations_links_inv_fk;
       public            nhassan    false    330                       1259    25021 +   research_areas_localizations_links_order_fk    INDEX     �   CREATE INDEX research_areas_localizations_links_order_fk ON public.research_areas_localizations_links USING btree (research_area_order);
 ?   DROP INDEX public.research_areas_localizations_links_order_fk;
       public            nhassan    false    330                       1259    24997    research_areas_updated_by_id_fk    INDEX     c   CREATE INDEX research_areas_updated_by_id_fk ON public.research_areas USING btree (updated_by_id);
 3   DROP INDEX public.research_areas_updated_by_id_fk;
       public            nhassan    false    326            �           1259    19828    slugs_created_by_id_fk    INDEX     Q   CREATE INDEX slugs_created_by_id_fk ON public.slugs USING btree (created_by_id);
 *   DROP INDEX public.slugs_created_by_id_fk;
       public            nhassan    false    322                       1259    19829    slugs_updated_by_id_fk    INDEX     Q   CREATE INDEX slugs_updated_by_id_fk ON public.slugs USING btree (updated_by_id);
 *   DROP INDEX public.slugs_updated_by_id_fk;
       public            nhassan    false    322            �           1259    18769 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            nhassan    false    226            [           1259    18995 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            nhassan    false    268            \           1259    18996 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            nhassan    false    268            ]           1259    18999 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            nhassan    false    268            �           1259    18770 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            nhassan    false    226            �           1259    18760 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            nhassan    false    224            �           1259    18761 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            nhassan    false    224                       1259    18789 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            nhassan    false    230            b           1259    19007 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            nhassan    false    270            c           1259    19008 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            nhassan    false    270            d           1259    19011 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            nhassan    false    270                       1259    18790 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            nhassan    false    230                        1259    18780 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            nhassan    false    228                       1259    18781 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            nhassan    false    228            '           1259    25118    tags_articles_links_fk    INDEX     X   CREATE INDEX tags_articles_links_fk ON public.tags_articles_links USING btree (tag_id);
 *   DROP INDEX public.tags_articles_links_fk;
       public            nhassan    false    336            (           1259    25119    tags_articles_links_inv_fk    INDEX     `   CREATE INDEX tags_articles_links_inv_fk ON public.tags_articles_links USING btree (article_id);
 .   DROP INDEX public.tags_articles_links_inv_fk;
       public            nhassan    false    336            )           1259    25122    tags_articles_links_order_fk    INDEX     e   CREATE INDEX tags_articles_links_order_fk ON public.tags_articles_links USING btree (article_order);
 0   DROP INDEX public.tags_articles_links_order_fk;
       public            nhassan    false    336            *           1259    25123     tags_articles_links_order_inv_fk    INDEX     e   CREATE INDEX tags_articles_links_order_inv_fk ON public.tags_articles_links USING btree (tag_order);
 4   DROP INDEX public.tags_articles_links_order_inv_fk;
       public            nhassan    false    336                       1259    25069    tags_created_by_id_fk    INDEX     O   CREATE INDEX tags_created_by_id_fk ON public.tags USING btree (created_by_id);
 )   DROP INDEX public.tags_created_by_id_fk;
       public            nhassan    false    332                        1259    25078    tags_localizations_links_fk    INDEX     b   CREATE INDEX tags_localizations_links_fk ON public.tags_localizations_links USING btree (tag_id);
 /   DROP INDEX public.tags_localizations_links_fk;
       public            nhassan    false    334            !           1259    25079    tags_localizations_links_inv_fk    INDEX     j   CREATE INDEX tags_localizations_links_inv_fk ON public.tags_localizations_links USING btree (inv_tag_id);
 3   DROP INDEX public.tags_localizations_links_inv_fk;
       public            nhassan    false    334            "           1259    25082 !   tags_localizations_links_order_fk    INDEX     k   CREATE INDEX tags_localizations_links_order_fk ON public.tags_localizations_links USING btree (tag_order);
 5   DROP INDEX public.tags_localizations_links_order_fk;
       public            nhassan    false    334                       1259    25070    tags_updated_by_id_fk    INDEX     O   CREATE INDEX tags_updated_by_id_fk ON public.tags USING btree (updated_by_id);
 )   DROP INDEX public.tags_updated_by_id_fk;
       public            nhassan    false    332                       1259    18830    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            nhassan    false    236            |           1259    19053    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            nhassan    false    278            }           1259    19054     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            nhassan    false    278            ~           1259    19057 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            nhassan    false    278                       1259    18831    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            nhassan    false    236                       1259    18841    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            nhassan    false    238            !           1259    18842    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            nhassan    false    238            "           1259    18852    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            nhassan    false    240            �           1259    19065    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            nhassan    false    280            �           1259    19066    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            nhassan    false    280            �           1259    19069     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            nhassan    false    280            %           1259    18853    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            nhassan    false    240                       1259    18801    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            nhassan    false    232                       1259    18805    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            nhassan    false    232                       1259    18800    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            nhassan    false    232                       1259    18803    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            nhassan    false    232                       1259    18804    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            nhassan    false    232                       1259    18802    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            nhassan    false    232                       1259    18821    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            nhassan    false    234            u           1259    19041    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            nhassan    false    276            v           1259    19042 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            nhassan    false    276            w           1259    19045 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            nhassan    false    276                       1259    18822    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            nhassan    false    234            I           2606    19266    abouts abouts_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.abouts DROP CONSTRAINT abouts_created_by_id_fk;
       public          nhassan    false    220    244    3826            d           2606    19401 "   abouts_components abouts_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.abouts_components
    ADD CONSTRAINT abouts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.abouts(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.abouts_components DROP CONSTRAINT abouts_entity_fk;
       public          nhassan    false    244    3884    282            J           2606    19271    abouts abouts_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.abouts DROP CONSTRAINT abouts_updated_by_id_fk;
       public          nhassan    false    3826    244    220            y           2606    19722     actions actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.actions
    ADD CONSTRAINT actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.actions DROP CONSTRAINT actions_created_by_id_fk;
       public          nhassan    false    3826    306    220            z           2606    19727     actions actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.actions
    ADD CONSTRAINT actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.actions DROP CONSTRAINT actions_updated_by_id_fk;
       public          nhassan    false    3826    306    220            /           2606    19136 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          nhassan    false    3826    220    218            S           2606    19316 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          nhassan    false    264    218    3822            T           2606    19321 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          nhassan    false    3830    222    264            0           2606    19141 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          nhassan    false    218    220    3826            3           2606    19156 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          nhassan    false    220    3826    222            4           2606    19161 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          nhassan    false    220    3826    222            1           2606    19146 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          nhassan    false    220    220    3826            U           2606    19326 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          nhassan    false    266    3826    220            V           2606    19331 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          nhassan    false    3830    266    222            2           2606    19151 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          nhassan    false    220    220    3826            f           2606    19411 .   articles_author_links articles_author_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_fk;
       public          nhassan    false    3888    286    246            g           2606    19416 2   articles_author_links articles_author_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_inv_fk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_inv_fk;
       public          nhassan    false    3894    248    286            �           2606    24968 6   articles_categories_links articles_categories_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_categories_links
    ADD CONSTRAINT articles_categories_links_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.articles_categories_links DROP CONSTRAINT articles_categories_links_fk;
       public          nhassan    false    324    3888    246            �           2606    24973 :   articles_categories_links articles_categories_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_categories_links
    ADD CONSTRAINT articles_categories_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.articles_categories_links DROP CONSTRAINT articles_categories_links_inv_fk;
       public          nhassan    false    3898    324    250            K           2606    19276 "   articles articles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_created_by_id_fk;
       public          nhassan    false    3826    246    220            e           2606    19406 &   articles_components articles_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_components
    ADD CONSTRAINT articles_entity_fk FOREIGN KEY (entity_id) REFERENCES public.articles(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.articles_components DROP CONSTRAINT articles_entity_fk;
       public          nhassan    false    284    246    3888            L           2606    19281 "   articles articles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_updated_by_id_fk;
       public          nhassan    false    220    3826    246            q           2606    19682 "   audience audience_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.audience
    ADD CONSTRAINT audience_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.audience DROP CONSTRAINT audience_created_by_id_fk;
       public          nhassan    false    3826    298    220            r           2606    19687 "   audience audience_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.audience
    ADD CONSTRAINT audience_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.audience DROP CONSTRAINT audience_updated_by_id_fk;
       public          nhassan    false    3826    298    220            M           2606    19286     authors authors_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_created_by_id_fk;
       public          nhassan    false    3826    248    220            N           2606    19291     authors authors_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_updated_by_id_fk;
       public          nhassan    false    3826    248    220            O           2606    19296 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public          nhassan    false    220    250    3826            P           2606    19301 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public          nhassan    false    250    3826    220            k           2606    19480 4   ezforms_recipient ezforms_recipient_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ezforms_recipient
    ADD CONSTRAINT ezforms_recipient_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.ezforms_recipient DROP CONSTRAINT ezforms_recipient_created_by_id_fk;
       public          nhassan    false    220    3826    292            l           2606    19485 4   ezforms_recipient ezforms_recipient_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ezforms_recipient
    ADD CONSTRAINT ezforms_recipient_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.ezforms_recipient DROP CONSTRAINT ezforms_recipient_updated_by_id_fk;
       public          nhassan    false    220    3826    292            i           2606    19470 6   ezforms_submission ezforms_submission_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ezforms_submission
    ADD CONSTRAINT ezforms_submission_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 `   ALTER TABLE ONLY public.ezforms_submission DROP CONSTRAINT ezforms_submission_created_by_id_fk;
       public          nhassan    false    290    220    3826            j           2606    19475 6   ezforms_submission ezforms_submission_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ezforms_submission
    ADD CONSTRAINT ezforms_submission_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 `   ALTER TABLE ONLY public.ezforms_submission DROP CONSTRAINT ezforms_submission_updated_by_id_fk;
       public          nhassan    false    290    220    3826            =           2606    19206    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          nhassan    false    220    232    3826            \           2606    19361 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          nhassan    false    3850    232    274            ]           2606    19366 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          nhassan    false    3864    234    274            [           2606    19356 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          nhassan    false    232    272    3850            >           2606    19211    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          nhassan    false    3826    232    220            Q           2606    19306     globals globals_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_created_by_id_fk;
       public          nhassan    false    3826    252    220            h           2606    19431 $   globals_components globals_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES public.globals(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_entity_fk;
       public          nhassan    false    252    288    3904            R           2606    19311     globals globals_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_updated_by_id_fk;
       public          nhassan    false    3826    252    220            G           2606    19256 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          nhassan    false    242    220    3826            H           2606    19261 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          nhassan    false    242    220    3826            o           2606    19672 &   menu_items menu_items_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_created_by_id_fk;
       public          nhassan    false    296    3826    220            }           2606    19742 2   menu_items_parent_links menu_items_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_items_parent_links
    ADD CONSTRAINT menu_items_parent_links_fk FOREIGN KEY (menu_item_id) REFERENCES public.menu_items(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.menu_items_parent_links DROP CONSTRAINT menu_items_parent_links_fk;
       public          nhassan    false    310    296    4022            ~           2606    19747 6   menu_items_parent_links menu_items_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_items_parent_links
    ADD CONSTRAINT menu_items_parent_links_inv_fk FOREIGN KEY (inv_menu_item_id) REFERENCES public.menu_items(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.menu_items_parent_links DROP CONSTRAINT menu_items_parent_links_inv_fk;
       public          nhassan    false    310    296    4022            {           2606    19732 8   menu_items_root_menu_links menu_items_root_menu_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_items_root_menu_links
    ADD CONSTRAINT menu_items_root_menu_links_fk FOREIGN KEY (menu_item_id) REFERENCES public.menu_items(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.menu_items_root_menu_links DROP CONSTRAINT menu_items_root_menu_links_fk;
       public          nhassan    false    4022    296    308            |           2606    19737 <   menu_items_root_menu_links menu_items_root_menu_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_items_root_menu_links
    ADD CONSTRAINT menu_items_root_menu_links_inv_fk FOREIGN KEY (menu_id) REFERENCES public.menus(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.menu_items_root_menu_links DROP CONSTRAINT menu_items_root_menu_links_inv_fk;
       public          nhassan    false    4016    308    294            p           2606    19677 &   menu_items menu_items_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_updated_by_id_fk;
       public          nhassan    false    220    296    3826            m           2606    19662    menus menus_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_created_by_id_fk;
       public          nhassan    false    3826    294    220            n           2606    19667    menus menus_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_updated_by_id_fk;
       public          nhassan    false    220    294    3826            s           2606    19692 (   navigations navigations_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations
    ADD CONSTRAINT navigations_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.navigations DROP CONSTRAINT navigations_created_by_id_fk;
       public          nhassan    false    3826    300    220            �           2606    19792 D   navigations_items_audience_links navigations_items_audience_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_audience_links
    ADD CONSTRAINT navigations_items_audience_links_fk FOREIGN KEY (navigation_item_id) REFERENCES public.navigations_items(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.navigations_items_audience_links DROP CONSTRAINT navigations_items_audience_links_fk;
       public          nhassan    false    302    320    4038            �           2606    19797 H   navigations_items_audience_links navigations_items_audience_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_audience_links
    ADD CONSTRAINT navigations_items_audience_links_inv_fk FOREIGN KEY (audience_id) REFERENCES public.audience(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.navigations_items_audience_links DROP CONSTRAINT navigations_items_audience_links_inv_fk;
       public          nhassan    false    4028    320    298            u           2606    19702 4   navigations_items navigations_items_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items
    ADD CONSTRAINT navigations_items_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.navigations_items DROP CONSTRAINT navigations_items_created_by_id_fk;
       public          nhassan    false    302    220    3826            �           2606    19782 @   navigations_items_master_links navigations_items_master_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_master_links
    ADD CONSTRAINT navigations_items_master_links_fk FOREIGN KEY (navigation_item_id) REFERENCES public.navigations_items(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.navigations_items_master_links DROP CONSTRAINT navigations_items_master_links_fk;
       public          nhassan    false    4038    318    302            �           2606    19787 D   navigations_items_master_links navigations_items_master_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_master_links
    ADD CONSTRAINT navigations_items_master_links_inv_fk FOREIGN KEY (navigation_id) REFERENCES public.navigations(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.navigations_items_master_links DROP CONSTRAINT navigations_items_master_links_inv_fk;
       public          nhassan    false    300    318    4032            �           2606    19772 @   navigations_items_parent_links navigations_items_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_parent_links
    ADD CONSTRAINT navigations_items_parent_links_fk FOREIGN KEY (navigation_item_id) REFERENCES public.navigations_items(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.navigations_items_parent_links DROP CONSTRAINT navigations_items_parent_links_fk;
       public          nhassan    false    302    316    4038            �           2606    19777 D   navigations_items_parent_links navigations_items_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_parent_links
    ADD CONSTRAINT navigations_items_parent_links_inv_fk FOREIGN KEY (inv_navigation_item_id) REFERENCES public.navigations_items(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.navigations_items_parent_links DROP CONSTRAINT navigations_items_parent_links_inv_fk;
       public          nhassan    false    316    302    4038            w           2606    19712 D   navigations_items_related navigations_items_related_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_related
    ADD CONSTRAINT navigations_items_related_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 n   ALTER TABLE ONLY public.navigations_items_related DROP CONSTRAINT navigations_items_related_created_by_id_fk;
       public          nhassan    false    3826    304    220            �           2606    19762 B   navigations_items_related_links navigations_items_related_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_related_links
    ADD CONSTRAINT navigations_items_related_links_fk FOREIGN KEY (navigation_item_id) REFERENCES public.navigations_items(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.navigations_items_related_links DROP CONSTRAINT navigations_items_related_links_fk;
       public          nhassan    false    314    302    4038            �           2606    19767 F   navigations_items_related_links navigations_items_related_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_related_links
    ADD CONSTRAINT navigations_items_related_links_inv_fk FOREIGN KEY (navigations_items_related_id) REFERENCES public.navigations_items_related(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.navigations_items_related_links DROP CONSTRAINT navigations_items_related_links_inv_fk;
       public          nhassan    false    314    304    4042            x           2606    19717 D   navigations_items_related navigations_items_related_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items_related
    ADD CONSTRAINT navigations_items_related_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 n   ALTER TABLE ONLY public.navigations_items_related DROP CONSTRAINT navigations_items_related_updated_by_id_fk;
       public          nhassan    false    3826    304    220            v           2606    19707 4   navigations_items navigations_items_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_items
    ADD CONSTRAINT navigations_items_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.navigations_items DROP CONSTRAINT navigations_items_updated_by_id_fk;
       public          nhassan    false    302    220    3826                       2606    19752 B   navigations_localizations_links navigations_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_localizations_links
    ADD CONSTRAINT navigations_localizations_links_fk FOREIGN KEY (navigation_id) REFERENCES public.navigations(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.navigations_localizations_links DROP CONSTRAINT navigations_localizations_links_fk;
       public          nhassan    false    4032    300    312            �           2606    19757 F   navigations_localizations_links navigations_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations_localizations_links
    ADD CONSTRAINT navigations_localizations_links_inv_fk FOREIGN KEY (inv_navigation_id) REFERENCES public.navigations(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.navigations_localizations_links DROP CONSTRAINT navigations_localizations_links_inv_fk;
       public          nhassan    false    300    312    4032            t           2606    19697 (   navigations navigations_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.navigations
    ADD CONSTRAINT navigations_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.navigations DROP CONSTRAINT navigations_updated_by_id_fk;
       public          nhassan    false    220    3826    300            �           2606    25032 >   research_areas_category_links research_areas_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.research_areas_category_links
    ADD CONSTRAINT research_areas_category_links_fk FOREIGN KEY (research_area_id) REFERENCES public.research_areas(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.research_areas_category_links DROP CONSTRAINT research_areas_category_links_fk;
       public          nhassan    false    328    4108    326            �           2606    25037 B   research_areas_category_links research_areas_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.research_areas_category_links
    ADD CONSTRAINT research_areas_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.research_areas_category_links DROP CONSTRAINT research_areas_category_links_inv_fk;
       public          nhassan    false    328    3898    250            �           2606    25022 .   research_areas research_areas_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.research_areas
    ADD CONSTRAINT research_areas_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.research_areas DROP CONSTRAINT research_areas_created_by_id_fk;
       public          nhassan    false    3826    326    220            �           2606    25042 H   research_areas_localizations_links research_areas_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.research_areas_localizations_links
    ADD CONSTRAINT research_areas_localizations_links_fk FOREIGN KEY (research_area_id) REFERENCES public.research_areas(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.research_areas_localizations_links DROP CONSTRAINT research_areas_localizations_links_fk;
       public          nhassan    false    330    4108    326            �           2606    25047 L   research_areas_localizations_links research_areas_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.research_areas_localizations_links
    ADD CONSTRAINT research_areas_localizations_links_inv_fk FOREIGN KEY (inv_research_area_id) REFERENCES public.research_areas(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.research_areas_localizations_links DROP CONSTRAINT research_areas_localizations_links_inv_fk;
       public          nhassan    false    330    4108    326            �           2606    25027 .   research_areas research_areas_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.research_areas
    ADD CONSTRAINT research_areas_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.research_areas DROP CONSTRAINT research_areas_updated_by_id_fk;
       public          nhassan    false    326    3826    220            �           2606    19830    slugs slugs_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.slugs DROP CONSTRAINT slugs_created_by_id_fk;
       public          nhassan    false    220    322    3826            �           2606    19835    slugs slugs_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.slugs DROP CONSTRAINT slugs_updated_by_id_fk;
       public          nhassan    false    3826    322    220            7           2606    19176 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          nhassan    false    226    220    3826            W           2606    19336 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          nhassan    false    3838    268    226            X           2606    19341 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          nhassan    false    268    224    3834            8           2606    19181 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          nhassan    false    3826    220    226            5           2606    19166 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          nhassan    false    220    3826    224            6           2606    19171 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          nhassan    false    224    220    3826            ;           2606    19196 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          nhassan    false    230    220    3826            Y           2606    19346 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          nhassan    false    270    230    3846            Z           2606    19351 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          nhassan    false    3842    228    270            <           2606    19201 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          nhassan    false    220    230    3826            9           2606    19186 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          nhassan    false    220    3826    228            :           2606    19191 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          nhassan    false    220    3826    228            �           2606    25124 *   tags_articles_links tags_articles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tags_articles_links
    ADD CONSTRAINT tags_articles_links_fk FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.tags_articles_links DROP CONSTRAINT tags_articles_links_fk;
       public          nhassan    false    336    332    4126            �           2606    25129 .   tags_articles_links tags_articles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tags_articles_links
    ADD CONSTRAINT tags_articles_links_inv_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.tags_articles_links DROP CONSTRAINT tags_articles_links_inv_fk;
       public          nhassan    false    3888    336    246            �           2606    25083    tags tags_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_created_by_id_fk;
       public          nhassan    false    332    3826    220            �           2606    25093 4   tags_localizations_links tags_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tags_localizations_links
    ADD CONSTRAINT tags_localizations_links_fk FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.tags_localizations_links DROP CONSTRAINT tags_localizations_links_fk;
       public          nhassan    false    334    4126    332            �           2606    25098 8   tags_localizations_links tags_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tags_localizations_links
    ADD CONSTRAINT tags_localizations_links_inv_fk FOREIGN KEY (inv_tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.tags_localizations_links DROP CONSTRAINT tags_localizations_links_inv_fk;
       public          nhassan    false    4126    334    332            �           2606    25088    tags tags_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_updated_by_id_fk;
       public          nhassan    false    332    3826    220            A           2606    19226 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          nhassan    false    236    220    3826            `           2606    19381 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          nhassan    false    3868    236    278            a           2606    19386 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          nhassan    false    278    238    3872            B           2606    19231 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          nhassan    false    236    220    3826            C           2606    19236 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          nhassan    false    238    3826    220            D           2606    19241 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          nhassan    false    238    220    3826            E           2606    19246 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          nhassan    false    220    240    3826            b           2606    19391 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          nhassan    false    3876    280    240            c           2606    19396 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          nhassan    false    280    3872    238            F           2606    19251 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          nhassan    false    3826    240    220            ?           2606    19216 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          nhassan    false    234    220    3826            ^           2606    19371 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          nhassan    false    276    234    3864            _           2606    19376 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          nhassan    false    3864    276    234            @           2606    19221 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          nhassan    false    3826    220    234           