PGDMP         
            	    z           postgres    14.5    14.5 8    T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            W           1262    14020    postgres    DATABASE     S   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE postgres;
                postgres    false            X           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3671                        2615    16475    David_Turner_DB_QAP1    SCHEMA     &   CREATE SCHEMA "David_Turner_DB_QAP1";
 $   DROP SCHEMA "David_Turner_DB_QAP1";
                postgres    false                        2615    16394    test_20220908    SCHEMA        CREATE SCHEMA test_20220908;
    DROP SCHEMA test_20220908;
                postgres    false                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            Y           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16495    aircraft    TABLE     ?   CREATE TABLE "David_Turner_DB_QAP1".aircraft (
    id bigint NOT NULL,
    craft_type character(255) NOT NULL,
    airline_name character(255) NOT NULL,
    number_passengers bigint NOT NULL
);
 ,   DROP TABLE "David_Turner_DB_QAP1".aircraft;
       David_Turner_DB_QAP1         heap    postgres    false    7            ?            1259    16490    airports    TABLE     ?   CREATE TABLE "David_Turner_DB_QAP1".airports (
    id bigint NOT NULL,
    airport_name character(255) NOT NULL,
    "airportCode" character(4) NOT NULL,
    city_id bigint
);
 ,   DROP TABLE "David_Turner_DB_QAP1".airports;
       David_Turner_DB_QAP1         heap    postgres    false    7            ?            1259    16660    airports_aircraft    TABLE     ?   CREATE TABLE "David_Turner_DB_QAP1".airports_aircraft (
    id bigint NOT NULL,
    airports_id bigint,
    aircrafts_id bigint
);
 5   DROP TABLE "David_Turner_DB_QAP1".airports_aircraft;
       David_Turner_DB_QAP1         heap    postgres    false    7            ?            1259    16532    arrivals    TABLE     m   CREATE TABLE "David_Turner_DB_QAP1".arrivals (
    id bigint NOT NULL,
    arrival_airport character(255)
);
 ,   DROP TABLE "David_Turner_DB_QAP1".arrivals;
       David_Turner_DB_QAP1         heap    postgres    false    7            ?            1259    16476    cities    TABLE     ?   CREATE TABLE "David_Turner_DB_QAP1".cities (
    id bigint NOT NULL,
    city_name character(255) NOT NULL,
    province character(255) NOT NULL,
    population bigint
);
 *   DROP TABLE "David_Turner_DB_QAP1".cities;
       David_Turner_DB_QAP1         heap    postgres    false    7            ?            1259    16521    passenger_aircraft    TABLE     ~   CREATE TABLE "David_Turner_DB_QAP1".passenger_aircraft (
    passenger_id bigint NOT NULL,
    aircraft_id bigint NOT NULL
);
 6   DROP TABLE "David_Turner_DB_QAP1".passenger_aircraft;
       David_Turner_DB_QAP1         heap    postgres    false    7            ?            1259    16537    passenger_airports    TABLE     ~   CREATE TABLE "David_Turner_DB_QAP1".passenger_airports (
    passenger_id bigint NOT NULL,
    airports_id bigint NOT NULL
);
 6   DROP TABLE "David_Turner_DB_QAP1".passenger_airports;
       David_Turner_DB_QAP1         heap    postgres    false    7            ?            1259    16483    passenger_list    TABLE     ?   CREATE TABLE "David_Turner_DB_QAP1".passenger_list (
    id bigint NOT NULL,
    first_name character(255) NOT NULL,
    last_name character(255) NOT NULL,
    phone_number bigint NOT NULL
);
 2   DROP TABLE "David_Turner_DB_QAP1".passenger_list;
       David_Turner_DB_QAP1         heap    postgres    false    7            ?            1259    16424    course_reviews    TABLE     ?   CREATE TABLE test_20220908.course_reviews (
    id bigint NOT NULL,
    description text NOT NULL,
    user_id bigint NOT NULL,
    course_id bigint NOT NULL
);
 )   DROP TABLE test_20220908.course_reviews;
       test_20220908         heap    postgres    false    6            ?            1259    16417    courses    TABLE     g   CREATE TABLE test_20220908.courses (
    id bigint NOT NULL,
    name text,
    scheduled_time date
);
 "   DROP TABLE test_20220908.courses;
       test_20220908         heap    postgres    false    6            ?            1259    16395    initial_table    TABLE     g   CREATE TABLE test_20220908.initial_table (
    id bigint NOT NULL,
    name character(255) NOT NULL
);
 (   DROP TABLE test_20220908.initial_table;
       test_20220908         heap    postgres    false    6            ?            1259    16441    user_courses    TABLE     h   CREATE TABLE test_20220908.user_courses (
    user_id bigint NOT NULL,
    course_id bigint NOT NULL
);
 '   DROP TABLE test_20220908.user_courses;
       test_20220908         heap    postgres    false    6            ?            1259    16400    users    TABLE     u   CREATE TABLE test_20220908.users (
    id bigint NOT NULL,
    name character(255) NOT NULL,
    course_id bigint
);
     DROP TABLE test_20220908.users;
       test_20220908         heap    postgres    false    6            M          0    16495    aircraft 
   TABLE DATA           c   COPY "David_Turner_DB_QAP1".aircraft (id, craft_type, airline_name, number_passengers) FROM stdin;
    David_Turner_DB_QAP1          postgres    false    220   ?C       L          0    16490    airports 
   TABLE DATA           \   COPY "David_Turner_DB_QAP1".airports (id, airport_name, "airportCode", city_id) FROM stdin;
    David_Turner_DB_QAP1          postgres    false    219   ?D       Q          0    16660    airports_aircraft 
   TABLE DATA           Z   COPY "David_Turner_DB_QAP1".airports_aircraft (id, airports_id, aircrafts_id) FROM stdin;
    David_Turner_DB_QAP1          postgres    false    224   VE       O          0    16532    arrivals 
   TABLE DATA           G   COPY "David_Turner_DB_QAP1".arrivals (id, arrival_airport) FROM stdin;
    David_Turner_DB_QAP1          postgres    false    222   ?E       J          0    16476    cities 
   TABLE DATA           U   COPY "David_Turner_DB_QAP1".cities (id, city_name, province, population) FROM stdin;
    David_Turner_DB_QAP1          postgres    false    217   ?F       N          0    16521    passenger_aircraft 
   TABLE DATA           W   COPY "David_Turner_DB_QAP1".passenger_aircraft (passenger_id, aircraft_id) FROM stdin;
    David_Turner_DB_QAP1          postgres    false    221   lG       P          0    16537    passenger_airports 
   TABLE DATA           W   COPY "David_Turner_DB_QAP1".passenger_airports (passenger_id, airports_id) FROM stdin;
    David_Turner_DB_QAP1          postgres    false    223   ?G       K          0    16483    passenger_list 
   TABLE DATA           a   COPY "David_Turner_DB_QAP1".passenger_list (id, first_name, last_name, phone_number) FROM stdin;
    David_Turner_DB_QAP1          postgres    false    218   H       H          0    16424    course_reviews 
   TABLE DATA           T   COPY test_20220908.course_reviews (id, description, user_id, course_id) FROM stdin;
    test_20220908          postgres    false    215   ?H       G          0    16417    courses 
   TABLE DATA           B   COPY test_20220908.courses (id, name, scheduled_time) FROM stdin;
    test_20220908          postgres    false    214   >I       E          0    16395    initial_table 
   TABLE DATA           8   COPY test_20220908.initial_table (id, name) FROM stdin;
    test_20220908          postgres    false    212   ?I       I          0    16441    user_courses 
   TABLE DATA           A   COPY test_20220908.user_courses (user_id, course_id) FROM stdin;
    test_20220908          postgres    false    216   ?I       F          0    16400    users 
   TABLE DATA           ;   COPY test_20220908.users (id, name, course_id) FROM stdin;
    test_20220908          postgres    false    213   ?I       ?           2606    16501    aircraft aircraft_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY "David_Turner_DB_QAP1".aircraft
    ADD CONSTRAINT aircraft_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY "David_Turner_DB_QAP1".aircraft DROP CONSTRAINT aircraft_pkey;
       David_Turner_DB_QAP1            postgres    false    220            ?           2606    16664 (   airports_aircraft airports_aircraft_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY "David_Turner_DB_QAP1".airports_aircraft
    ADD CONSTRAINT airports_aircraft_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY "David_Turner_DB_QAP1".airports_aircraft DROP CONSTRAINT airports_aircraft_pkey;
       David_Turner_DB_QAP1            postgres    false    224            ?           2606    16494    airports airports_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY "David_Turner_DB_QAP1".airports
    ADD CONSTRAINT airports_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY "David_Turner_DB_QAP1".airports DROP CONSTRAINT airports_pkey;
       David_Turner_DB_QAP1            postgres    false    219            ?           2606    16536    arrivals arrivals_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY "David_Turner_DB_QAP1".arrivals
    ADD CONSTRAINT arrivals_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY "David_Turner_DB_QAP1".arrivals DROP CONSTRAINT arrivals_pkey;
       David_Turner_DB_QAP1            postgres    false    222            ?           2606    16482    cities cities_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "David_Turner_DB_QAP1".cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY "David_Turner_DB_QAP1".cities DROP CONSTRAINT cities_pkey;
       David_Turner_DB_QAP1            postgres    false    217            ?           2606    16525 .   passenger_aircraft passengerList-aircraft_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY "David_Turner_DB_QAP1".passenger_aircraft
    ADD CONSTRAINT "passengerList-aircraft_pkey" PRIMARY KEY (passenger_id, aircraft_id);
 j   ALTER TABLE ONLY "David_Turner_DB_QAP1".passenger_aircraft DROP CONSTRAINT "passengerList-aircraft_pkey";
       David_Turner_DB_QAP1            postgres    false    221    221            ?           2606    16541 *   passenger_airports passenger_airports_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY "David_Turner_DB_QAP1".passenger_airports
    ADD CONSTRAINT passenger_airports_pkey PRIMARY KEY (passenger_id, airports_id);
 d   ALTER TABLE ONLY "David_Turner_DB_QAP1".passenger_airports DROP CONSTRAINT passenger_airports_pkey;
       David_Turner_DB_QAP1            postgres    false    223    223            ?           2606    16489 "   passenger_list passenger_list_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY "David_Turner_DB_QAP1".passenger_list
    ADD CONSTRAINT passenger_list_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY "David_Turner_DB_QAP1".passenger_list DROP CONSTRAINT passenger_list_pkey;
       David_Turner_DB_QAP1            postgres    false    218            ?           2606    16430 "   course_reviews course_reviews_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_20220908.course_reviews
    ADD CONSTRAINT course_reviews_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY test_20220908.course_reviews DROP CONSTRAINT course_reviews_pkey;
       test_20220908            postgres    false    215            ?           2606    16423    courses courses_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY test_20220908.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY test_20220908.courses DROP CONSTRAINT courses_pkey;
       test_20220908            postgres    false    214            ?           2606    16399     initial_table initial_table_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_20220908.initial_table
    ADD CONSTRAINT initial_table_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY test_20220908.initial_table DROP CONSTRAINT initial_table_pkey;
       test_20220908            postgres    false    212            ?           2606    16404    users redo_table_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY test_20220908.users
    ADD CONSTRAINT redo_table_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY test_20220908.users DROP CONSTRAINT redo_table_pkey;
       test_20220908            postgres    false    213            ?           2606    16445    user_courses user_courses_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.user_courses
    ADD CONSTRAINT user_courses_pkey PRIMARY KEY (user_id, course_id) INCLUDE (user_id, course_id);
 O   ALTER TABLE ONLY test_20220908.user_courses DROP CONSTRAINT user_courses_pkey;
       test_20220908            postgres    false    216    216            ?           2606    16670    airports_aircraft aircraft_id    FK CONSTRAINT     ?   ALTER TABLE ONLY "David_Turner_DB_QAP1".airports_aircraft
    ADD CONSTRAINT aircraft_id FOREIGN KEY (aircrafts_id) REFERENCES "David_Turner_DB_QAP1".aircraft(id);
 W   ALTER TABLE ONLY "David_Turner_DB_QAP1".airports_aircraft DROP CONSTRAINT aircraft_id;
       David_Turner_DB_QAP1          postgres    false    3497    224    220            ?           2606    16665    airports_aircraft airports_id    FK CONSTRAINT     ?   ALTER TABLE ONLY "David_Turner_DB_QAP1".airports_aircraft
    ADD CONSTRAINT airports_id FOREIGN KEY (airports_id) REFERENCES "David_Turner_DB_QAP1".airports(id);
 W   ALTER TABLE ONLY "David_Turner_DB_QAP1".airports_aircraft DROP CONSTRAINT airports_id;
       David_Turner_DB_QAP1          postgres    false    3495    224    219            ?           2606    16511    airports city_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "David_Turner_DB_QAP1".airports
    ADD CONSTRAINT city_fk FOREIGN KEY (city_id) REFERENCES "David_Turner_DB_QAP1".cities(id) NOT VALID;
 J   ALTER TABLE ONLY "David_Turner_DB_QAP1".airports DROP CONSTRAINT city_fk;
       David_Turner_DB_QAP1          postgres    false    217    219    3491            ?           2606    16436    course_reviews course    FK CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.course_reviews
    ADD CONSTRAINT course FOREIGN KEY (course_id) REFERENCES test_20220908.courses(id);
 F   ALTER TABLE ONLY test_20220908.course_reviews DROP CONSTRAINT course;
       test_20220908          postgres    false    3485    214    215            ?           2606    16446    user_courses courses    FK CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.user_courses
    ADD CONSTRAINT courses FOREIGN KEY (course_id) REFERENCES test_20220908.courses(id);
 E   ALTER TABLE ONLY test_20220908.user_courses DROP CONSTRAINT courses;
       test_20220908          postgres    false    3485    214    216            ?           2606    16456    users courses_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.users
    ADD CONSTRAINT courses_fk FOREIGN KEY (course_id) REFERENCES test_20220908.courses(id) NOT VALID;
 A   ALTER TABLE ONLY test_20220908.users DROP CONSTRAINT courses_fk;
       test_20220908          postgres    false    213    214    3485            ?           2606    16431    course_reviews user    FK CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.course_reviews
    ADD CONSTRAINT "user" FOREIGN KEY (user_id) REFERENCES test_20220908.users(id);
 F   ALTER TABLE ONLY test_20220908.course_reviews DROP CONSTRAINT "user";
       test_20220908          postgres    false    213    215    3483            ?           2606    16451    user_courses users    FK CONSTRAINT        ALTER TABLE ONLY test_20220908.user_courses
    ADD CONSTRAINT users FOREIGN KEY (user_id) REFERENCES test_20220908.users(id);
 C   ALTER TABLE ONLY test_20220908.user_courses DROP CONSTRAINT users;
       test_20220908          postgres    false    213    3483    216            M   }   x???1
?0@?Y:???i?0]?H`c?%?????????p%Q?Mn\X?8y??.`	?P?ݮa???I??ˡ?r*Z{w??k???w;???=}@?|S??D??d????>?-?끈_<U?E      L     x?啻N?0E뙯?/@$??^-H4??P?h&?71	??6???8)??DJ?????{s4;/??? ???}?A??/i-5T}Ѷ?N;26hg9??7?k????*?{???ŀO??׈?x#??F????I|?@??p????J?[־j@=??????W'??X??,??TA??$=,-?Hp?-L?!]?q:ғ??@??T?7??,?D????!??????)iq??"?"?tcl?1'?9??o??)?      Q   c   x????@??3?,ic/??!*?B??????	?K??????x4I(??%??,?g;??M/q??b??ۭ???Eġ?q"?B??g?*KI      O   ?   x???An?PD??)|??4M?ޥ?j#????*{??w???x?@	??A?Fv?S???g??????ً??J?O?d?VJR???s ?k?)w?????K?3?<??k?????l????ޝ?*	/???Z+@x??e??m??H=u?oY??+??a?*o??
?O??8%?r3??? ?i?\j??zA?[???      J   ?   x?????0?o???u~N/\???`K??D??*??L??HO?H?򌏐.e????@??k'9?1??b??
T???c??t?J(??[?
z?g
Rc????[?E?!he??,??>?K?l!H+[?
?u?<H????s,u?!t?Q#??>??????V???k?:q8??|?Rǡ?z????*"_?"O      N   0   x??I 0??wL??%S?8j?1??\n?T??BEk?j????H??XB      P   [   x????0C?3?*?@?K????^;V?\n??F?????F ?Z?E^??磤K??K>I???9\?F ??xp??U\j?5??5?f???K????      K   ?   x???A? E?3??	?Rڻ?!???m???ՅG??????ϴ??}S-???qk?J?F*???e??[??~ePP,ى[?p?Jn???m?1?Eh????>r1%?'?#`?7a4??n??jGbc˙?
? ????d??????/n'6?Nk??{43ql??jp9?\m<\???g&?????o????      H   C   x?3?,??,VH?/-*NU ?ҋRK89???K???J)???#.μ?(߄Ә+F??? ?"      G   :   x?3?LI,ILJ,N-?4202?5??54?2??J,K,N.?,(A??r??"f\1z\\\ ?d?      E      x?????? ? ?      I   '   x?3?4?2bCN# 6???ؘ?(fd?1z\\\ f9?      F   `   x????? D??LT`??x!dc???R?{?U?3?????f^?tȡ?Ep\Q%?Ec?+?IL|jK1k??g???hl??O???B??`?8     