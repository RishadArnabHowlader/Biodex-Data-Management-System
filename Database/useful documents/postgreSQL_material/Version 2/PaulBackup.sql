PGDMP         /                 y            biodexv2    13.1    13.1 E               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16776    biodexv2    DATABASE     e   CREATE DATABASE biodexv2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'German_Austria.1252';
    DROP DATABASE biodexv2;
                postgres    false            �            1259    17922    biodex_report    TABLE     a   CREATE TABLE public.biodex_report (
    report_id bigint,
    biodexreport_id bigint NOT NULL
);
 !   DROP TABLE public.biodex_report;
       public         heap    postgres    false            �            1259    17920 !   biodex_report_biodexreport_id_seq    SEQUENCE     �   CREATE SEQUENCE public.biodex_report_biodexreport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.biodex_report_biodexreport_id_seq;
       public          postgres    false    210                       0    0 !   biodex_report_biodexreport_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.biodex_report_biodexreport_id_seq OWNED BY public.biodex_report.biodexreport_id;
          public          postgres    false    209            �            1259    17950 
   elgareport    TABLE     V   CREATE TABLE public.elgareport (
    report_id bigint,
    elga_id bigint NOT NULL
);
    DROP TABLE public.elgareport;
       public         heap    postgres    false            �            1259    17948    elgareport_elga_id_seq    SEQUENCE        CREATE SEQUENCE public.elgareport_elga_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.elgareport_elga_id_seq;
       public          postgres    false    212                       0    0    elgareport_elga_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.elgareport_elga_id_seq OWNED BY public.elgareport.elga_id;
          public          postgres    false    211            �            1259    17868    exercise_data    TABLE     �   CREATE TABLE public.exercise_data (
    exercise_id bigint NOT NULL,
    torque real[],
    angle real[],
    velocity real[],
    muscle character varying(50),
    exercise character varying(50),
    repetition character varying(50)
);
 !   DROP TABLE public.exercise_data;
       public         heap    postgres    false            �            1259    17866    exercise_data_exercise_id_seq    SEQUENCE     �   CREATE SEQUENCE public.exercise_data_exercise_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.exercise_data_exercise_id_seq;
       public          postgres    false    205                       0    0    exercise_data_exercise_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.exercise_data_exercise_id_seq OWNED BY public.exercise_data.exercise_id;
          public          postgres    false    204            �            1259    17981    givesinforamtion    TABLE     �   CREATE TABLE public.givesinforamtion (
    elga_id bigint NOT NULL,
    sv_number character varying(10) NOT NULL,
    medicaldata_id bigint NOT NULL
);
 $   DROP TABLE public.givesinforamtion;
       public         heap    postgres    false            �            1259    17961 
   maycontain    TABLE     �   CREATE TABLE public.maycontain (
    report_id bigint NOT NULL,
    biodexreport_id bigint NOT NULL,
    elga_id bigint NOT NULL
);
    DROP TABLE public.maycontain;
       public         heap    postgres    false            �            1259    17901    medicaldata    TABLE       CREATE TABLE public.medicaldata (
    medicaldata_id bigint NOT NULL,
    hospitalstartdate character varying(50),
    hospitalenddate character varying(50),
    hospitaladress character varying(50),
    hospitaldepartment character varying(50),
    hospitaladmissionnumber character varying(50),
    hospitalname character varying(50),
    hospitalcontact character varying(50),
    hospitalresponsibledoctor character varying(50),
    diagstateatrelease character varying(50),
    diagsummary character varying(50),
    diagfuturemedication character varying(50),
    diagrehaaim character varying(50),
    diagrecommendedmeasurement character varying(50),
    diagphysicalissue character varying(50),
    medactionsbyhospital character varying(50),
    medmedicationduringstay character varying(50),
    medmedicationatarrival character varying(50),
    medriskalergies character varying(50),
    medpreviousdisease character varying(50),
    medanamnesis character varying(50),
    medadmissionreason character varying(50)
);
    DROP TABLE public.medicaldata;
       public         heap    postgres    false            �            1259    17899    medicaldata_medicaldata_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medicaldata_medicaldata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.medicaldata_medicaldata_id_seq;
       public          postgres    false    208                       0    0    medicaldata_medicaldata_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.medicaldata_medicaldata_id_seq OWNED BY public.medicaldata.medicaldata_id;
          public          postgres    false    207            �            1259    17890    personaldata    TABLE       CREATE TABLE public.personaldata (
    sv_number character varying(10) NOT NULL,
    familystatus character varying(50),
    email character varying(50),
    adress character varying(50),
    legalguardian character varying(50),
    religion character varying(50),
    language character varying(50),
    insurance character varying(50),
    telnumber character varying(50),
    birthplace character varying(50),
    birthdate character varying(50),
    gender character varying(50),
    nametitel character varying(50)
);
     DROP TABLE public.personaldata;
       public         heap    postgres    false            �            1259    17836    report_result    TABLE     p   CREATE TABLE public.report_result (
    report_id bigint NOT NULL,
    date_time timestamp without time zone
);
 !   DROP TABLE public.report_result;
       public         heap    postgres    false            �            1259    17834    report_result_report_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_result_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.report_result_report_id_seq;
       public          postgres    false    201                       0    0    report_result_report_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.report_result_report_id_seq OWNED BY public.report_result.report_id;
          public          postgres    false    200            �            1259    17857    settings    TABLE       CREATE TABLE public.settings (
    settings_id bigint NOT NULL,
    powerhead_orientation character varying(50),
    powerhead_height character varying(50),
    powerhead_position character varying(50),
    powerhead_attachment character varying(50),
    powerhead_tilt character varying(50),
    seat_height character varying(50),
    seat_orientation character varying(50),
    seat_tilt character varying(50),
    seat_position character varying(50),
    hip_flexion character varying(50),
    footplate_tilt character varying(50),
    knee_flexion character varying(50),
    ankle_flexion character varying(50),
    shoulder_abduction character varying(50),
    shoulder_flexion character varying(50),
    elbow_flexion character varying(50),
    controller_mode character varying(50),
    controller_cushion character varying(50),
    controller_sensitivity character varying(50),
    controller_rom_upper_limit character varying(50),
    controller_rom_lower_limit character varying(50),
    controller_rom_percentage character varying(50),
    controller_eccentric_speed character varying(50),
    controller_passive_speed character varying(50),
    controller_torque_limits character varying(50),
    controller_pause character varying(50),
    controller_isokinetic_speed character varying(50)
);
    DROP TABLE public.settings;
       public         heap    postgres    false            �            1259    17855    settings_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.settings_settings_id_seq;
       public          postgres    false    203                       0    0    settings_settings_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.settings_settings_id_seq OWNED BY public.settings.settings_id;
          public          postgres    false    202            �            1259    18001    uses    TABLE     �   CREATE TABLE public.uses (
    biodexreport_id bigint NOT NULL,
    exercise_id bigint NOT NULL,
    settings_id bigint NOT NULL
);
    DROP TABLE public.uses;
       public         heap    postgres    false            X           2604    17925    biodex_report biodexreport_id    DEFAULT     �   ALTER TABLE ONLY public.biodex_report ALTER COLUMN biodexreport_id SET DEFAULT nextval('public.biodex_report_biodexreport_id_seq'::regclass);
 L   ALTER TABLE public.biodex_report ALTER COLUMN biodexreport_id DROP DEFAULT;
       public          postgres    false    209    210    210            Y           2604    17953    elgareport elga_id    DEFAULT     x   ALTER TABLE ONLY public.elgareport ALTER COLUMN elga_id SET DEFAULT nextval('public.elgareport_elga_id_seq'::regclass);
 A   ALTER TABLE public.elgareport ALTER COLUMN elga_id DROP DEFAULT;
       public          postgres    false    211    212    212            V           2604    17871    exercise_data exercise_id    DEFAULT     �   ALTER TABLE ONLY public.exercise_data ALTER COLUMN exercise_id SET DEFAULT nextval('public.exercise_data_exercise_id_seq'::regclass);
 H   ALTER TABLE public.exercise_data ALTER COLUMN exercise_id DROP DEFAULT;
       public          postgres    false    204    205    205            W           2604    17904    medicaldata medicaldata_id    DEFAULT     �   ALTER TABLE ONLY public.medicaldata ALTER COLUMN medicaldata_id SET DEFAULT nextval('public.medicaldata_medicaldata_id_seq'::regclass);
 I   ALTER TABLE public.medicaldata ALTER COLUMN medicaldata_id DROP DEFAULT;
       public          postgres    false    207    208    208            T           2604    17839    report_result report_id    DEFAULT     �   ALTER TABLE ONLY public.report_result ALTER COLUMN report_id SET DEFAULT nextval('public.report_result_report_id_seq'::regclass);
 F   ALTER TABLE public.report_result ALTER COLUMN report_id DROP DEFAULT;
       public          postgres    false    201    200    201            U           2604    17860    settings settings_id    DEFAULT     |   ALTER TABLE ONLY public.settings ALTER COLUMN settings_id SET DEFAULT nextval('public.settings_settings_id_seq'::regclass);
 C   ALTER TABLE public.settings ALTER COLUMN settings_id DROP DEFAULT;
       public          postgres    false    202    203    203                      0    17922    biodex_report 
   TABLE DATA           C   COPY public.biodex_report (report_id, biodexreport_id) FROM stdin;
    public          postgres    false    210   �`                 0    17950 
   elgareport 
   TABLE DATA           8   COPY public.elgareport (report_id, elga_id) FROM stdin;
    public          postgres    false    212   a                  0    17868    exercise_data 
   TABLE DATA           k   COPY public.exercise_data (exercise_id, torque, angle, velocity, muscle, exercise, repetition) FROM stdin;
    public          postgres    false    205    a       	          0    17981    givesinforamtion 
   TABLE DATA           N   COPY public.givesinforamtion (elga_id, sv_number, medicaldata_id) FROM stdin;
    public          postgres    false    214   =a                 0    17961 
   maycontain 
   TABLE DATA           I   COPY public.maycontain (report_id, biodexreport_id, elga_id) FROM stdin;
    public          postgres    false    213   Za                 0    17901    medicaldata 
   TABLE DATA           �  COPY public.medicaldata (medicaldata_id, hospitalstartdate, hospitalenddate, hospitaladress, hospitaldepartment, hospitaladmissionnumber, hospitalname, hospitalcontact, hospitalresponsibledoctor, diagstateatrelease, diagsummary, diagfuturemedication, diagrehaaim, diagrecommendedmeasurement, diagphysicalissue, medactionsbyhospital, medmedicationduringstay, medmedicationatarrival, medriskalergies, medpreviousdisease, medanamnesis, medadmissionreason) FROM stdin;
    public          postgres    false    208   wa                 0    17890    personaldata 
   TABLE DATA           �   COPY public.personaldata (sv_number, familystatus, email, adress, legalguardian, religion, language, insurance, telnumber, birthplace, birthdate, gender, nametitel) FROM stdin;
    public          postgres    false    206   �a       �          0    17836    report_result 
   TABLE DATA           =   COPY public.report_result (report_id, date_time) FROM stdin;
    public          postgres    false    201   �a       �          0    17857    settings 
   TABLE DATA           I  COPY public.settings (settings_id, powerhead_orientation, powerhead_height, powerhead_position, powerhead_attachment, powerhead_tilt, seat_height, seat_orientation, seat_tilt, seat_position, hip_flexion, footplate_tilt, knee_flexion, ankle_flexion, shoulder_abduction, shoulder_flexion, elbow_flexion, controller_mode, controller_cushion, controller_sensitivity, controller_rom_upper_limit, controller_rom_lower_limit, controller_rom_percentage, controller_eccentric_speed, controller_passive_speed, controller_torque_limits, controller_pause, controller_isokinetic_speed) FROM stdin;
    public          postgres    false    203   �a       
          0    18001    uses 
   TABLE DATA           I   COPY public.uses (biodexreport_id, exercise_id, settings_id) FROM stdin;
    public          postgres    false    215   �a                  0    0 !   biodex_report_biodexreport_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.biodex_report_biodexreport_id_seq', 1, false);
          public          postgres    false    209                       0    0    elgareport_elga_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.elgareport_elga_id_seq', 1, false);
          public          postgres    false    211                       0    0    exercise_data_exercise_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.exercise_data_exercise_id_seq', 1, false);
          public          postgres    false    204                       0    0    medicaldata_medicaldata_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.medicaldata_medicaldata_id_seq', 1, false);
          public          postgres    false    207                       0    0    report_result_report_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.report_result_report_id_seq', 1, false);
          public          postgres    false    200                       0    0    settings_settings_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.settings_settings_id_seq', 1, false);
          public          postgres    false    202            e           2606    17927     biodex_report biodex_report_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.biodex_report
    ADD CONSTRAINT biodex_report_pkey PRIMARY KEY (biodexreport_id);
 J   ALTER TABLE ONLY public.biodex_report DROP CONSTRAINT biodex_report_pkey;
       public            postgres    false    210            g           2606    17955    elgareport elgareport_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.elgareport
    ADD CONSTRAINT elgareport_pkey PRIMARY KEY (elga_id);
 D   ALTER TABLE ONLY public.elgareport DROP CONSTRAINT elgareport_pkey;
       public            postgres    false    212            _           2606    17876     exercise_data exercise_data_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.exercise_data
    ADD CONSTRAINT exercise_data_pkey PRIMARY KEY (exercise_id);
 J   ALTER TABLE ONLY public.exercise_data DROP CONSTRAINT exercise_data_pkey;
       public            postgres    false    205            k           2606    17985 &   givesinforamtion givesinforamtion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.givesinforamtion
    ADD CONSTRAINT givesinforamtion_pkey PRIMARY KEY (elga_id, sv_number, medicaldata_id);
 P   ALTER TABLE ONLY public.givesinforamtion DROP CONSTRAINT givesinforamtion_pkey;
       public            postgres    false    214    214    214            i           2606    17965    maycontain maycontain_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.maycontain
    ADD CONSTRAINT maycontain_pkey PRIMARY KEY (report_id, biodexreport_id, elga_id);
 D   ALTER TABLE ONLY public.maycontain DROP CONSTRAINT maycontain_pkey;
       public            postgres    false    213    213    213            c           2606    17909    medicaldata medicaldata_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.medicaldata
    ADD CONSTRAINT medicaldata_pkey PRIMARY KEY (medicaldata_id);
 F   ALTER TABLE ONLY public.medicaldata DROP CONSTRAINT medicaldata_pkey;
       public            postgres    false    208            a           2606    17897    personaldata personaldata_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.personaldata
    ADD CONSTRAINT personaldata_pkey PRIMARY KEY (sv_number);
 H   ALTER TABLE ONLY public.personaldata DROP CONSTRAINT personaldata_pkey;
       public            postgres    false    206            [           2606    17841     report_result report_result_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.report_result
    ADD CONSTRAINT report_result_pkey PRIMARY KEY (report_id);
 J   ALTER TABLE ONLY public.report_result DROP CONSTRAINT report_result_pkey;
       public            postgres    false    201            ]           2606    17865    settings settings_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (settings_id);
 @   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
       public            postgres    false    203            m           2606    18005    uses uses_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.uses
    ADD CONSTRAINT uses_pkey PRIMARY KEY (biodexreport_id, exercise_id, settings_id);
 8   ALTER TABLE ONLY public.uses DROP CONSTRAINT uses_pkey;
       public            postgres    false    215    215    215            n           2606    17928 *   biodex_report biodex_report_report_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.biodex_report
    ADD CONSTRAINT biodex_report_report_id_fkey FOREIGN KEY (report_id) REFERENCES public.report_result(report_id);
 T   ALTER TABLE ONLY public.biodex_report DROP CONSTRAINT biodex_report_report_id_fkey;
       public          postgres    false    2907    201    210            o           2606    17956 $   elgareport elgareport_report_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.elgareport
    ADD CONSTRAINT elgareport_report_id_fkey FOREIGN KEY (report_id) REFERENCES public.report_result(report_id);
 N   ALTER TABLE ONLY public.elgareport DROP CONSTRAINT elgareport_report_id_fkey;
       public          postgres    false    201    2907    212            s           2606    17986 .   givesinforamtion givesinforamtion_elga_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.givesinforamtion
    ADD CONSTRAINT givesinforamtion_elga_id_fkey FOREIGN KEY (elga_id) REFERENCES public.elgareport(elga_id);
 X   ALTER TABLE ONLY public.givesinforamtion DROP CONSTRAINT givesinforamtion_elga_id_fkey;
       public          postgres    false    214    212    2919            u           2606    17996 5   givesinforamtion givesinforamtion_medicaldata_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.givesinforamtion
    ADD CONSTRAINT givesinforamtion_medicaldata_id_fkey FOREIGN KEY (medicaldata_id) REFERENCES public.medicaldata(medicaldata_id);
 _   ALTER TABLE ONLY public.givesinforamtion DROP CONSTRAINT givesinforamtion_medicaldata_id_fkey;
       public          postgres    false    2915    214    208            t           2606    17991 0   givesinforamtion givesinforamtion_sv_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.givesinforamtion
    ADD CONSTRAINT givesinforamtion_sv_number_fkey FOREIGN KEY (sv_number) REFERENCES public.personaldata(sv_number);
 Z   ALTER TABLE ONLY public.givesinforamtion DROP CONSTRAINT givesinforamtion_sv_number_fkey;
       public          postgres    false    2913    214    206            q           2606    17971 *   maycontain maycontain_biodexreport_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.maycontain
    ADD CONSTRAINT maycontain_biodexreport_id_fkey FOREIGN KEY (biodexreport_id) REFERENCES public.biodex_report(biodexreport_id);
 T   ALTER TABLE ONLY public.maycontain DROP CONSTRAINT maycontain_biodexreport_id_fkey;
       public          postgres    false    2917    210    213            r           2606    17976 "   maycontain maycontain_elga_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.maycontain
    ADD CONSTRAINT maycontain_elga_id_fkey FOREIGN KEY (elga_id) REFERENCES public.elgareport(elga_id);
 L   ALTER TABLE ONLY public.maycontain DROP CONSTRAINT maycontain_elga_id_fkey;
       public          postgres    false    212    2919    213            p           2606    17966 $   maycontain maycontain_report_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.maycontain
    ADD CONSTRAINT maycontain_report_id_fkey FOREIGN KEY (report_id) REFERENCES public.report_result(report_id);
 N   ALTER TABLE ONLY public.maycontain DROP CONSTRAINT maycontain_report_id_fkey;
       public          postgres    false    213    2907    201            v           2606    18006    uses uses_biodexreport_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.uses
    ADD CONSTRAINT uses_biodexreport_id_fkey FOREIGN KEY (biodexreport_id) REFERENCES public.biodex_report(biodexreport_id);
 H   ALTER TABLE ONLY public.uses DROP CONSTRAINT uses_biodexreport_id_fkey;
       public          postgres    false    2917    215    210            w           2606    18011    uses uses_exercise_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.uses
    ADD CONSTRAINT uses_exercise_id_fkey FOREIGN KEY (exercise_id) REFERENCES public.exercise_data(exercise_id);
 D   ALTER TABLE ONLY public.uses DROP CONSTRAINT uses_exercise_id_fkey;
       public          postgres    false    2911    205    215            x           2606    18016    uses uses_settings_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.uses
    ADD CONSTRAINT uses_settings_id_fkey FOREIGN KEY (settings_id) REFERENCES public.settings(settings_id);
 D   ALTER TABLE ONLY public.uses DROP CONSTRAINT uses_settings_id_fkey;
       public          postgres    false    203    2909    215                  x������ � �            x������ � �             x������ � �      	      x������ � �            x������ � �            x������ � �            x������ � �      �      x������ � �      �      x������ � �      
      x������ � �     