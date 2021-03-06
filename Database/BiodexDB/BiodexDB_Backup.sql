PGDMP         )                 y            BiodexDB    13.1    13.1 �    \           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ]           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ^           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            _           1262    18324    BiodexDB    DATABASE     g   CREATE DATABASE "BiodexDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'German_Austria.1252';
    DROP DATABASE "BiodexDB";
                postgres    false                       1255    18683    display_selection(text)    FUNCTION     �  CREATE FUNCTION public.display_selection(_selection text) RETURNS TABLE(id bigint, created_at timestamp without time zone, exercise character varying, muscle character varying, repetition character varying, name_title character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT
		exercise_data.exercise_id,
		report_result.created_at,
		exercise_data.exercise,
		exercise_data.muscle,
		exercise_data.repetition,
		personal_data.name_title
	FROM 
		exercise_data
		INNER JOIN report_result ON report_result.report_id = exercise_data.exercise_id
		INNER JOIN personal_data ON report_result.report_id = personal_data.personal_data_id
		WHERE exercise_data.exercise LIKE '%' || _selection || '%';
END $$;
 9   DROP FUNCTION public.display_selection(_selection text);
       public          postgres    false            �            1255    18485    display_table()    FUNCTION     �  CREATE FUNCTION public.display_table() RETURNS TABLE(id bigint, created_at timestamp without time zone, exercise character varying, muscle character varying, repetition character varying, name_title character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT
		exercise_data.exercise_id,
		report_result.created_at,
		exercise_data.exercise,
		exercise_data.muscle,
		exercise_data.repetition,
		personal_data.name_title
	FROM 
		exercise_data
		INNER JOIN report_result ON report_result.report_id = exercise_data.exercise_id
		INNER JOIN personal_data ON report_result.report_id = personal_data.personal_data_id;
END $$;
 &   DROP FUNCTION public.display_table();
       public          postgres    false                       1255    35085    get_address(integer)    FUNCTION     �   CREATE FUNCTION public.get_address(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT address FROM personal_data WHERE personal_data_id = _id);
END $$;
 /   DROP FUNCTION public.get_address(_id integer);
       public          postgres    false            �            1255    26921    get_ankle_flexion(integer)    FUNCTION     �   CREATE FUNCTION public.get_ankle_flexion(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT ankle_flexion FROM settings WHERE settings_id = _id);
END $$;
 5   DROP FUNCTION public.get_ankle_flexion(_id integer);
       public          postgres    false                       1255    35092    get_birth_date(integer)    FUNCTION     �   CREATE FUNCTION public.get_birth_date(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT birth_date FROM personal_data WHERE personal_data_id = _id);
END $$;
 2   DROP FUNCTION public.get_birth_date(_id integer);
       public          postgres    false                       1255    35091    get_birth_place(integer)    FUNCTION     �   CREATE FUNCTION public.get_birth_place(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT birth_place FROM personal_data WHERE personal_data_id = _id);
END $$;
 3   DROP FUNCTION public.get_birth_place(_id integer);
       public          postgres    false            �            1255    26909    get_controller_cushion(integer)    FUNCTION     �   CREATE FUNCTION public.get_controller_cushion(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT controller_cushion FROM settings WHERE settings_id = _id);
END $$;
 :   DROP FUNCTION public.get_controller_cushion(_id integer);
       public          postgres    false            �            1255    26914 '   get_controller_eccentric_speed(integer)    FUNCTION     �   CREATE FUNCTION public.get_controller_eccentric_speed(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT controller_eccentric_speed FROM settings WHERE settings_id = _id);
END $$;
 B   DROP FUNCTION public.get_controller_eccentric_speed(_id integer);
       public          postgres    false            �            1255    26918 (   get_controller_isokinetic_speed(integer)    FUNCTION     �   CREATE FUNCTION public.get_controller_isokinetic_speed(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT controller_isokinetic_speed FROM settings WHERE settings_id = _id);
END $$;
 C   DROP FUNCTION public.get_controller_isokinetic_speed(_id integer);
       public          postgres    false            �            1255    26908    get_controller_mode(integer)    FUNCTION     �   CREATE FUNCTION public.get_controller_mode(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT controller_mode FROM settings WHERE settings_id = _id);
END $$;
 7   DROP FUNCTION public.get_controller_mode(_id integer);
       public          postgres    false            �            1255    26915 %   get_controller_passive_speed(integer)    FUNCTION     �   CREATE FUNCTION public.get_controller_passive_speed(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT controller_passive_speed FROM settings WHERE settings_id = _id);
END $$;
 @   DROP FUNCTION public.get_controller_passive_speed(_id integer);
       public          postgres    false            �            1255    26917    get_controller_pause(integer)    FUNCTION     �   CREATE FUNCTION public.get_controller_pause(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT controller_pause FROM settings WHERE settings_id = _id);
END $$;
 8   DROP FUNCTION public.get_controller_pause(_id integer);
       public          postgres    false            �            1255    26912 '   get_controller_rom_lower_limit(integer)    FUNCTION     �   CREATE FUNCTION public.get_controller_rom_lower_limit(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT controller_rom_lower_limit FROM settings WHERE settings_id = _id);
END $$;
 B   DROP FUNCTION public.get_controller_rom_lower_limit(_id integer);
       public          postgres    false            �            1255    26913 &   get_controller_rom_percentage(integer)    FUNCTION     �   CREATE FUNCTION public.get_controller_rom_percentage(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT controller_rom_percentage FROM settings WHERE settings_id = _id);
END $$;
 A   DROP FUNCTION public.get_controller_rom_percentage(_id integer);
       public          postgres    false            �            1255    26911 '   get_controller_rom_upper_limit(integer)    FUNCTION     �   CREATE FUNCTION public.get_controller_rom_upper_limit(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT controller_rom_upper_limit FROM settings WHERE settings_id = _id);
END $$;
 B   DROP FUNCTION public.get_controller_rom_upper_limit(_id integer);
       public          postgres    false            �            1255    26910 #   get_controller_sensitivity(integer)    FUNCTION     �   CREATE FUNCTION public.get_controller_sensitivity(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT controller_sensitivity FROM settings WHERE settings_id = _id);
END $$;
 >   DROP FUNCTION public.get_controller_sensitivity(_id integer);
       public          postgres    false            �            1255    26916 %   get_controller_torque_limits(integer)    FUNCTION     �   CREATE FUNCTION public.get_controller_torque_limits(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT controller_torque_limits FROM settings WHERE settings_id = _id);
END $$;
 @   DROP FUNCTION public.get_controller_torque_limits(_id integer);
       public          postgres    false            *           1255    35104 (   get_diagnosis_future_medication(integer)    FUNCTION     �   CREATE FUNCTION public.get_diagnosis_future_medication(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT diagnosis_future_medication FROM medical_data WHERE medical_data_id = _id);
END $$;
 C   DROP FUNCTION public.get_diagnosis_future_medication(_id integer);
       public          postgres    false            #           1255    35107 %   get_diagnosis_physical_issue(integer)    FUNCTION     �   CREATE FUNCTION public.get_diagnosis_physical_issue(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT diagnosis_physical_issue FROM medical_data WHERE medical_data_id = _id);
END $$;
 @   DROP FUNCTION public.get_diagnosis_physical_issue(_id integer);
       public          postgres    false            ,           1255    35106 /   get_diagnosis_recommended_measurements(integer)    FUNCTION     �   CREATE FUNCTION public.get_diagnosis_recommended_measurements(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT diagnosis_recommended_measurements FROM medical_data WHERE medical_data_id = _id);
END $$;
 J   DROP FUNCTION public.get_diagnosis_recommended_measurements(_id integer);
       public          postgres    false            +           1255    35105 )   get_diagnosis_rehabilitation_aim(integer)    FUNCTION     �   CREATE FUNCTION public.get_diagnosis_rehabilitation_aim(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT diagnosis_rehabilitation_aim FROM medical_data WHERE medical_data_id = _id);
END $$;
 D   DROP FUNCTION public.get_diagnosis_rehabilitation_aim(_id integer);
       public          postgres    false            (           1255    35102 '   get_diagnosis_state_at_release(integer)    FUNCTION     �   CREATE FUNCTION public.get_diagnosis_state_at_release(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT diagnosis_state_at_release FROM medical_data WHERE medical_data_id = _id);
END $$;
 B   DROP FUNCTION public.get_diagnosis_state_at_release(_id integer);
       public          postgres    false            )           1255    35103    get_diagnosis_summary(integer)    FUNCTION     �   CREATE FUNCTION public.get_diagnosis_summary(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT diagnosis_summary FROM medical_data WHERE medical_data_id = _id);
END $$;
 9   DROP FUNCTION public.get_diagnosis_summary(_id integer);
       public          postgres    false                       1255    26924    get_elbow_flexion(integer)    FUNCTION     �   CREATE FUNCTION public.get_elbow_flexion(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT elbow_flexion FROM settings WHERE settings_id = _id);
END $$;
 5   DROP FUNCTION public.get_elbow_flexion(_id integer);
       public          postgres    false                       1255    35084    get_email(integer)    FUNCTION     �   CREATE FUNCTION public.get_email(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT email FROM personal_data WHERE personal_data_id = _id);
END $$;
 -   DROP FUNCTION public.get_email(_id integer);
       public          postgres    false                       1255    35083    get_family_status(integer)    FUNCTION     �   CREATE FUNCTION public.get_family_status(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT family_status FROM personal_data WHERE personal_data_id = _id);
END $$;
 5   DROP FUNCTION public.get_family_status(_id integer);
       public          postgres    false                       1255    26927    get_footplate_tilt(integer)    FUNCTION     �   CREATE FUNCTION public.get_footplate_tilt(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT footplate_tilt FROM settings WHERE settings_id = _id);
END $$;
 6   DROP FUNCTION public.get_footplate_tilt(_id integer);
       public          postgres    false                       1255    35093    get_gender(integer)    FUNCTION     �   CREATE FUNCTION public.get_gender(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT gender FROM personal_data WHERE personal_data_id = _id);
END $$;
 .   DROP FUNCTION public.get_gender(_id integer);
       public          postgres    false            �            1255    26919    get_hip_flexion(integer)    FUNCTION     �   CREATE FUNCTION public.get_hip_flexion(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT hip_flexion FROM settings WHERE settings_id = _id);
END $$;
 3   DROP FUNCTION public.get_hip_flexion(_id integer);
       public          postgres    false                       1255    35096    get_hospital_address(integer)    FUNCTION     �   CREATE FUNCTION public.get_hospital_address(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT hospital_address FROM medical_data WHERE medical_data_id = _id);
END $$;
 8   DROP FUNCTION public.get_hospital_address(_id integer);
       public          postgres    false                       1255    35098 &   get_hospital_admission_number(integer)    FUNCTION     �   CREATE FUNCTION public.get_hospital_admission_number(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT hospital_admission_number FROM medical_data WHERE medical_data_id = _id);
END $$;
 A   DROP FUNCTION public.get_hospital_admission_number(_id integer);
       public          postgres    false            !           1255    35101    get_hospital_contact(integer)    FUNCTION     �   CREATE FUNCTION public.get_hospital_contact(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT hospital_contact FROM medical_data WHERE medical_data_id = _id);
END $$;
 8   DROP FUNCTION public.get_hospital_contact(_id integer);
       public          postgres    false                       1255    35097     get_hospital_department(integer)    FUNCTION     �   CREATE FUNCTION public.get_hospital_department(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT hospital_department FROM medical_data WHERE medical_data_id = _id);
END $$;
 ;   DROP FUNCTION public.get_hospital_department(_id integer);
       public          postgres    false                       1255    35095    get_hospital_end_date(integer)    FUNCTION     �   CREATE FUNCTION public.get_hospital_end_date(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT hospital_end_date FROM medical_data WHERE medical_data_id = _id);
END $$;
 9   DROP FUNCTION public.get_hospital_end_date(_id integer);
       public          postgres    false                        1255    35099    get_hospital_name(integer)    FUNCTION     �   CREATE FUNCTION public.get_hospital_name(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT hospital_name FROM medical_data WHERE medical_data_id = _id);
END $$;
 5   DROP FUNCTION public.get_hospital_name(_id integer);
       public          postgres    false            "           1255    35100 (   get_hospital_responsible_doctor(integer)    FUNCTION     �   CREATE FUNCTION public.get_hospital_responsible_doctor(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT hospital_responsible_doctor FROM medical_data WHERE medical_data_id = _id);
END $$;
 C   DROP FUNCTION public.get_hospital_responsible_doctor(_id integer);
       public          postgres    false                       1255    35094     get_hospital_start_date(integer)    FUNCTION     �   CREATE FUNCTION public.get_hospital_start_date(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT hospital_start_date FROM medical_data WHERE medical_data_id = _id);
END $$;
 ;   DROP FUNCTION public.get_hospital_start_date(_id integer);
       public          postgres    false                       1255    35089    get_insurance(integer)    FUNCTION     �   CREATE FUNCTION public.get_insurance(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT insurance FROM personal_data WHERE personal_data_id = _id);
END $$;
 1   DROP FUNCTION public.get_insurance(_id integer);
       public          postgres    false            �            1255    26920    get_knee_flexion(integer)    FUNCTION     �   CREATE FUNCTION public.get_knee_flexion(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT knee_flexion FROM settings WHERE settings_id = _id);
END $$;
 4   DROP FUNCTION public.get_knee_flexion(_id integer);
       public          postgres    false                       1255    35088    get_language(integer)    FUNCTION     �   CREATE FUNCTION public.get_language(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT language FROM personal_data WHERE personal_data_id = _id);
END $$;
 0   DROP FUNCTION public.get_language(_id integer);
       public          postgres    false                       1255    35086    get_legal_guardian(integer)    FUNCTION     �   CREATE FUNCTION public.get_legal_guardian(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT legal_guardian FROM personal_data WHERE personal_data_id = _id);
END $$;
 6   DROP FUNCTION public.get_legal_guardian(_id integer);
       public          postgres    false            -           1255    35108 (   get_medical_actions_by_hospital(integer)    FUNCTION     �   CREATE FUNCTION public.get_medical_actions_by_hospital(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT medical_actions_by_hospital FROM medical_data WHERE medical_data_id = _id);
END $$;
 C   DROP FUNCTION public.get_medical_actions_by_hospital(_id integer);
       public          postgres    false            '           1255    35114 %   get_medical_admission_reason(integer)    FUNCTION     �   CREATE FUNCTION public.get_medical_admission_reason(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT medical_admission_reason FROM medical_data WHERE medical_data_id = _id);
END $$;
 @   DROP FUNCTION public.get_medical_admission_reason(_id integer);
       public          postgres    false            &           1255    35113    get_medical_anamnesis(integer)    FUNCTION     �   CREATE FUNCTION public.get_medical_anamnesis(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT medical_anamnesis FROM medical_data WHERE medical_data_id = _id);
END $$;
 9   DROP FUNCTION public.get_medical_anamnesis(_id integer);
       public          postgres    false            /           1255    35110 *   get_medical_medication_at_arrival(integer)    FUNCTION     �   CREATE FUNCTION public.get_medical_medication_at_arrival(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT medical_medication_at_arrival FROM medical_data WHERE medical_data_id = _id);
END $$;
 E   DROP FUNCTION public.get_medical_medication_at_arrival(_id integer);
       public          postgres    false            .           1255    35109 +   get_medical_medication_during_stay(integer)    FUNCTION     �   CREATE FUNCTION public.get_medical_medication_during_stay(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT medical_medication_during_stay FROM medical_data WHERE medical_data_id = _id);
END $$;
 F   DROP FUNCTION public.get_medical_medication_during_stay(_id integer);
       public          postgres    false            %           1255    35112 &   get_medical_previous_diseases(integer)    FUNCTION     �   CREATE FUNCTION public.get_medical_previous_diseases(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT medical_previous_diseases FROM medical_data WHERE medical_data_id = _id);
END $$;
 A   DROP FUNCTION public.get_medical_previous_diseases(_id integer);
       public          postgres    false            $           1255    35111 #   get_medical_risk_allergies(integer)    FUNCTION     �   CREATE FUNCTION public.get_medical_risk_allergies(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT medical_risk_allergies FROM medical_data WHERE medical_data_id = _id);
END $$;
 >   DROP FUNCTION public.get_medical_risk_allergies(_id integer);
       public          postgres    false            �            1255    26899    get_porientation(integer)    FUNCTION     �   CREATE FUNCTION public.get_porientation(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT powerhead_orientation FROM settings WHERE settings_id = _id);
END $$;
 4   DROP FUNCTION public.get_porientation(_id integer);
       public          postgres    false            �            1255    26902 !   get_powerhead_attachment(integer)    FUNCTION     �   CREATE FUNCTION public.get_powerhead_attachment(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT powerhead_attachment FROM settings WHERE settings_id = _id);
END $$;
 <   DROP FUNCTION public.get_powerhead_attachment(_id integer);
       public          postgres    false            �            1255    26900    get_powerhead_height(integer)    FUNCTION     �   CREATE FUNCTION public.get_powerhead_height(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT powerhead_height FROM settings WHERE settings_id = _id);
END $$;
 8   DROP FUNCTION public.get_powerhead_height(_id integer);
       public          postgres    false            �            1255    26901    get_powerhead_position(integer)    FUNCTION     �   CREATE FUNCTION public.get_powerhead_position(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT powerhead_position FROM settings WHERE settings_id = _id);
END $$;
 :   DROP FUNCTION public.get_powerhead_position(_id integer);
       public          postgres    false            �            1255    26903    get_powerhead_tilt(integer)    FUNCTION     �   CREATE FUNCTION public.get_powerhead_tilt(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT powerhead_tilt FROM settings WHERE settings_id = _id);
END $$;
 6   DROP FUNCTION public.get_powerhead_tilt(_id integer);
       public          postgres    false                       1255    35087    get_religion(integer)    FUNCTION     �   CREATE FUNCTION public.get_religion(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT religion FROM personal_data WHERE personal_data_id = _id);
END $$;
 0   DROP FUNCTION public.get_religion(_id integer);
       public          postgres    false            �            1255    26904    get_seat_height(integer)    FUNCTION     �   CREATE FUNCTION public.get_seat_height(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT seat_height FROM settings WHERE settings_id = _id);
END $$;
 3   DROP FUNCTION public.get_seat_height(_id integer);
       public          postgres    false            �            1255    26905    get_seat_orientation(integer)    FUNCTION     �   CREATE FUNCTION public.get_seat_orientation(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT seat_orientation FROM settings WHERE settings_id = _id);
END $$;
 8   DROP FUNCTION public.get_seat_orientation(_id integer);
       public          postgres    false            �            1255    26907    get_seat_position(integer)    FUNCTION     �   CREATE FUNCTION public.get_seat_position(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT seat_position FROM settings WHERE settings_id = _id);
END $$;
 5   DROP FUNCTION public.get_seat_position(_id integer);
       public          postgres    false            �            1255    26906    get_seat_tilt(integer)    FUNCTION     �   CREATE FUNCTION public.get_seat_tilt(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT seat_tilt FROM settings WHERE settings_id = _id);
END $$;
 1   DROP FUNCTION public.get_seat_tilt(_id integer);
       public          postgres    false                        1255    26922    get_shoulder_abduction(integer)    FUNCTION     �   CREATE FUNCTION public.get_shoulder_abduction(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT shoulder_abduction FROM settings WHERE settings_id = _id);
END $$;
 :   DROP FUNCTION public.get_shoulder_abduction(_id integer);
       public          postgres    false                       1255    26923    get_shoulder_flexion(integer)    FUNCTION     �   CREATE FUNCTION public.get_shoulder_flexion(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT shoulder_flexion FROM settings WHERE settings_id = _id);
END $$;
 8   DROP FUNCTION public.get_shoulder_flexion(_id integer);
       public          postgres    false                       1255    35082    get_sv_number(integer)    FUNCTION     �   CREATE FUNCTION public.get_sv_number(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT sv_number FROM personal_data WHERE personal_data_id = _id);
END $$;
 1   DROP FUNCTION public.get_sv_number(_id integer);
       public          postgres    false                       1255    35090    get_telephone_number(integer)    FUNCTION     �   CREATE FUNCTION public.get_telephone_number(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT telephone_number FROM personal_data WHERE personal_data_id = _id);
END $$;
 8   DROP FUNCTION public.get_telephone_number(_id integer);
       public          postgres    false                       1255    18604    insert_biodex_report()    FUNCTION     �   CREATE FUNCTION public.insert_biodex_report() RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO biodex_report DEFAULT VALUES;
	
	IF FOUND THEN RETURN (SELECT max(biodex_report_id) FROM biodex_report);
	ELSE RETURN 0;
	END IF;
	
END $$;
 -   DROP FUNCTION public.insert_biodex_report();
       public          postgres    false                       1255    18674 *   insert_contains(integer, integer, integer)    FUNCTION     `  CREATE FUNCTION public.insert_contains(_report_id integer, _biodex_report_id integer, _elga_report_id integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO contains (report_id, biodex_report_id, elga_report_id)
	VALUES (_report_id, _biodex_report_id, _elga_report_id);
	
	IF FOUND THEN RETURN 1;
	ELSE RETURN 0;
	END IF;
	
END $$;
 n   DROP FUNCTION public.insert_contains(_report_id integer, _biodex_report_id integer, _elga_report_id integer);
       public          postgres    false            	           1255    18670    insert_elga_report()    FUNCTION     �   CREATE FUNCTION public.insert_elga_report() RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO elga_report DEFAULT VALUES;
	
	IF FOUND THEN RETURN (SELECT max(elga_report_id) FROM elga_report);
	ELSE RETURN 0;
	END IF;
	
END $$;
 +   DROP FUNCTION public.insert_elga_report();
       public          postgres    false                       1255    18603 �   insert_exercise_data(character varying, character varying, character varying, character varying, character varying, character varying)    FUNCTION     =  CREATE FUNCTION public.insert_exercise_data(_torque character varying, _angle character varying, _velocity character varying, _muscle character varying, _exercise character varying, _repetition character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO exercise_data(
    torque,
    angle,
    velocity,
    muscle,
    exercise,
    repetition)
	VALUES(
    _torque,
    _angle,
    _velocity,
    _muscle,
    _exercise,
    _repetition);
	
	IF FOUND THEN RETURN (SELECT max(exercise_id) FROM exercise_data);
	ELSE RETURN 0;
	END IF;
	
END $$;
 �   DROP FUNCTION public.insert_exercise_data(_torque character varying, _angle character varying, _velocity character varying, _muscle character varying, _exercise character varying, _repetition character varying);
       public          postgres    false                       1255    18673 3   insert_gives_information(integer, integer, integer)    FUNCTION     �  CREATE FUNCTION public.insert_gives_information(_elga_report_id integer, _personal_data_id integer, _medical_data_id integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO gives_information (elga_report_id, personal_data_id, medical_data_id)
	VALUES (_elga_report_id, _personal_data_id, _medical_data_id);
	
	IF FOUND THEN RETURN 1;
	ELSE RETURN 0;
	END IF;
	
END $$;
 }   DROP FUNCTION public.insert_gives_information(_elga_report_id integer, _personal_data_id integer, _medical_data_id integer);
       public          postgres    false                       1255    18487 �  insert_medical_data(character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying)    FUNCTION     [	  CREATE FUNCTION public.insert_medical_data(_hospital_start_date character varying, _hospital_end_date character varying, _hospital_address character varying, _hospital_department character varying, _hospital_admission_number character varying, _hospital_name character varying, _hospital_contact character varying, _hospital_responsible_doctor character varying, _diagnosis_state_at_release character varying, _diagnosis_summary character varying, _diagnosis_future_medication character varying, _diagnosis_rehabilitation_aim character varying, _diagnosis_recommended_measurements character varying, _diagnosis_physical_issue character varying, _medical_actions_by_hospital character varying, _medical_medication_during_stay character varying, _medical_medication_at_arrival character varying, _medical_risk_allergies character varying, _medical_previous_diseases character varying, _medical_anamnesis character varying, _medical_admission_reason character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO medical_data(
	hospital_start_date,
    hospital_end_date,
    hospital_address,
    hospital_department,
    hospital_admission_number,
    hospital_name,
    hospital_contact,
    hospital_responsible_doctor,
    diagnosis_state_at_release,
    diagnosis_summary,
    diagnosis_future_medication,
    diagnosis_rehabilitation_aim,
    diagnosis_recommended_measurements,
    diagnosis_physical_issue,
    medical_actions_by_hospital,
    medical_medication_during_stay,
    medical_medication_at_arrival,
    medical_risk_allergies,
    medical_previous_diseases,
    medical_anamnesis,
    medical_admission_reason)
	VALUES(
	_hospital_start_date,
    _hospital_end_date,
    _hospital_address,
    _hospital_department,
    _hospital_admission_number,
    _hospital_name,
    _hospital_contact,
    _hospital_responsible_doctor,
    _diagnosis_state_at_release,
    _diagnosis_summary,
    _diagnosis_future_medication,
    _diagnosis_rehabilitation_aim,
    _diagnosis_recommended_measurements,
    _diagnosis_physical_issue,
    _medical_actions_by_hospital,
    _medical_medication_during_stay,
    _medical_medication_at_arrival,
    _medical_risk_allergies,
    _medical_previous_diseases,
    _medical_anamnesis,
    _medical_admission_reason);
	
	IF FOUND THEN RETURN (SELECT max(medical_data_id) FROM medical_data);
	ELSE RETURN 0;
	END IF;
	
END $$;
 �  DROP FUNCTION public.insert_medical_data(_hospital_start_date character varying, _hospital_end_date character varying, _hospital_address character varying, _hospital_department character varying, _hospital_admission_number character varying, _hospital_name character varying, _hospital_contact character varying, _hospital_responsible_doctor character varying, _diagnosis_state_at_release character varying, _diagnosis_summary character varying, _diagnosis_future_medication character varying, _diagnosis_rehabilitation_aim character varying, _diagnosis_recommended_measurements character varying, _diagnosis_physical_issue character varying, _medical_actions_by_hospital character varying, _medical_medication_during_stay character varying, _medical_medication_at_arrival character varying, _medical_risk_allergies character varying, _medical_previous_diseases character varying, _medical_anamnesis character varying, _medical_admission_reason character varying);
       public          postgres    false            �            1255    18483   insert_personal_data(character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying)    FUNCTION     )  CREATE FUNCTION public.insert_personal_data(_sv_number character varying, _family_status character varying, _email character varying, _address character varying, _legal_guardian character varying, _religion character varying, _language character varying, _insurance character varying, _telephone_number character varying, _birth_place character varying, _birth_date character varying, _gender character varying, _name_title character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO personal_data(
    sv_number,
    family_status,
    email,
    address,
    legal_guardian,
    religion,
    language,
    insurance,
    telephone_number,
    birth_place,
    birth_date,
    gender,
    name_title)
	VALUES(
    _sv_number,
    _family_status,
    _email,
    _address,
    _legal_guardian,
    _religion,
    _language,
    _insurance,
    _telephone_number,
    _birth_place,
    _birth_date,
    _gender,
    _name_title);
	
	IF FOUND THEN RETURN (SELECT max(personal_data_id) FROM personal_data);
	ELSE RETURN 0;
	END IF;
	
END $$;
 �  DROP FUNCTION public.insert_personal_data(_sv_number character varying, _family_status character varying, _email character varying, _address character varying, _legal_guardian character varying, _religion character varying, _language character varying, _insurance character varying, _telephone_number character varying, _birth_place character varying, _birth_date character varying, _gender character varying, _name_title character varying);
       public          postgres    false            
           1255    18671    insert_report_result()    FUNCTION     �   CREATE FUNCTION public.insert_report_result() RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO report_result DEFAULT VALUES;
	
	IF FOUND THEN RETURN (SELECT max(report_id) FROM report_result);
	ELSE RETURN 0;
	END IF;
	
END $$;
 -   DROP FUNCTION public.insert_report_result();
       public          postgres    false                       1255    18484   insert_settings(character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying)    FUNCTION     
  CREATE FUNCTION public.insert_settings(_powerhead_orientation character varying, _powerhead_height character varying, _powerhead_position character varying, _powerhead_attachment character varying, _powerhead_tilt character varying, _seat_height character varying, _seat_orientation character varying, _seat_tilt character varying, _seat_position character varying, _hip_flexion character varying, _footplate_tilt character varying, _knee_flexion character varying, _ankle_flexion character varying, _shoulder_abduction character varying, _shoulder_flexion character varying, _elbow_flexion character varying, _controller_mode character varying, _controller_cushion character varying, _controller_sensitivity character varying, _controller_rom_upper_limit character varying, _controller_rom_lower_limit character varying, _controller_rom_percentage character varying, _controller_eccentric_speed character varying, _controller_passive_speed character varying, _controller_torque_limits character varying, _controller_pause character varying, _controller_isokinetic_speed character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO settings(
	powerhead_orientation,
    powerhead_height,
    powerhead_position,
    powerhead_attachment,
    powerhead_tilt,
    seat_height,
    seat_orientation,
    seat_tilt,
    seat_position,
    hip_flexion,
    footplate_tilt,
    knee_flexion,
    ankle_flexion,
    shoulder_abduction,
    shoulder_flexion,
    elbow_flexion,
    controller_mode,
    controller_cushion,
    controller_sensitivity,
    controller_rom_upper_limit,
    controller_rom_lower_limit,
    controller_rom_percentage,
    controller_eccentric_speed,
    controller_passive_speed,
    controller_torque_limits,
    controller_pause,
    controller_isokinetic_speed)
	VALUES(
	_powerhead_orientation,
    _powerhead_height,
    _powerhead_position,
    _powerhead_attachment,
    _powerhead_tilt,
    _seat_height,
    _seat_orientation,
    _seat_tilt,
    _seat_position,
    _hip_flexion,
    _footplate_tilt,
    _knee_flexion,
    _ankle_flexion,
    _shoulder_abduction,
    _shoulder_flexion,
    _elbow_flexion,
    _controller_mode,
    _controller_cushion,
    _controller_sensitivity,
    _controller_rom_upper_limit,
    _controller_rom_lower_limit,
    _controller_rom_percentage,
    _controller_eccentric_speed,
    _controller_passive_speed,
    _controller_torque_limits,
    _controller_pause,
    _controller_isokinetic_speed);
	
	IF FOUND THEN RETURN (SELECT max(settings_id) FROM settings);
	ELSE RETURN 0;
	END IF;
	
END $$;
 A  DROP FUNCTION public.insert_settings(_powerhead_orientation character varying, _powerhead_height character varying, _powerhead_position character varying, _powerhead_attachment character varying, _powerhead_tilt character varying, _seat_height character varying, _seat_orientation character varying, _seat_tilt character varying, _seat_position character varying, _hip_flexion character varying, _footplate_tilt character varying, _knee_flexion character varying, _ankle_flexion character varying, _shoulder_abduction character varying, _shoulder_flexion character varying, _elbow_flexion character varying, _controller_mode character varying, _controller_cushion character varying, _controller_sensitivity character varying, _controller_rom_upper_limit character varying, _controller_rom_lower_limit character varying, _controller_rom_percentage character varying, _controller_eccentric_speed character varying, _controller_passive_speed character varying, _controller_torque_limits character varying, _controller_pause character varying, _controller_isokinetic_speed character varying);
       public          postgres    false                       1255    18672 &   insert_uses(integer, integer, integer)    FUNCTION     U  CREATE FUNCTION public.insert_uses(_biodex_report_id integer, _exercise_id integer, _settings_id integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO uses (biodex_report_id, exercise_id, settings_id)
	VALUES (_biodex_report_id, _exercise_id, _settings_id);
	
	IF FOUND THEN RETURN 1;
	ELSE RETURN 0;
	END IF;
	
END $$;
 i   DROP FUNCTION public.insert_uses(_biodex_report_id integer, _exercise_id integer, _settings_id integer);
       public          postgres    false                       1255    18926    renew_ids()    FUNCTION     (  CREATE FUNCTION public.renew_ids() RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
	SELECT setval('report_result_report_id_seq', (SELECT max(report_id) FROM report_result));
	SELECT setval('biodex_report_biodex_report_id_seq', (SELECT max(report_id) FROM report_result));
	SELECT setval('elga_report_elga_report_id_seq', (SELECT max(report_id) FROM report_result));
	SELECT setval('exercise_data_exercise_id_seq', (SELECT max(report_id) FROM report_result));
	SELECT setval('settings_settings_id_seq', (SELECT max(report_id) FROM report_result));
	SELECT setval('medical_data_medical_data_id_seq', (SELECT max(report_id) FROM report_result));
	SELECT setval('personal_data_personal_data_id_seq', (SELECT max(report_id) FROM report_result));
	
	IF FOUND THEN RETURN 1;
	ELSE RETURN 0;
	END IF;
	
END $$;
 "   DROP FUNCTION public.renew_ids();
       public          postgres    false            �            1255    18687    return_angle(integer)    FUNCTION     �   CREATE FUNCTION public.return_angle(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT angle FROM exercise_data WHERE exercise_id = _id);
END $$;
 0   DROP FUNCTION public.return_angle(_id integer);
       public          postgres    false            �            1255    18686    return_torque(integer)    FUNCTION     �   CREATE FUNCTION public.return_torque(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT torque FROM exercise_data WHERE exercise_id = _id);
END $$;
 1   DROP FUNCTION public.return_torque(_id integer);
       public          postgres    false            �            1255    18688    return_velocity(integer)    FUNCTION     �   CREATE FUNCTION public.return_velocity(_id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN (SELECT velocity FROM exercise_data WHERE exercise_id = _id);
END $$;
 3   DROP FUNCTION public.return_velocity(_id integer);
       public          postgres    false            �            1259    18746    biodex_report    TABLE     L   CREATE TABLE public.biodex_report (
    biodex_report_id bigint NOT NULL
);
 !   DROP TABLE public.biodex_report;
       public         heap    postgres    false            �            1259    18744 "   biodex_report_biodex_report_id_seq    SEQUENCE     �   CREATE SEQUENCE public.biodex_report_biodex_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.biodex_report_biodex_report_id_seq;
       public          postgres    false    203            `           0    0 "   biodex_report_biodex_report_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.biodex_report_biodex_report_id_seq OWNED BY public.biodex_report.biodex_report_id;
          public          postgres    false    202            �            1259    18804    contains    TABLE     �   CREATE TABLE public.contains (
    report_id bigint NOT NULL,
    biodex_report_id bigint NOT NULL,
    elga_report_id bigint NOT NULL
);
    DROP TABLE public.contains;
       public         heap    postgres    false            �            1259    18776    elga_report    TABLE     H   CREATE TABLE public.elga_report (
    elga_report_id bigint NOT NULL
);
    DROP TABLE public.elga_report;
       public         heap    postgres    false            �            1259    18774    elga_report_elga_report_id_seq    SEQUENCE     �   CREATE SEQUENCE public.elga_report_elga_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.elga_report_elga_report_id_seq;
       public          postgres    false    209            a           0    0    elga_report_elga_report_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.elga_report_elga_report_id_seq OWNED BY public.elga_report.elga_report_id;
          public          postgres    false    208            �            1259    18765    exercise_data    TABLE       CREATE TABLE public.exercise_data (
    exercise_id bigint NOT NULL,
    torque character varying,
    angle character varying,
    velocity character varying,
    muscle character varying,
    exercise character varying,
    repetition character varying
);
 !   DROP TABLE public.exercise_data;
       public         heap    postgres    false            �            1259    18763    exercise_data_exercise_id_seq    SEQUENCE     �   CREATE SEQUENCE public.exercise_data_exercise_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.exercise_data_exercise_id_seq;
       public          postgres    false    207            b           0    0    exercise_data_exercise_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.exercise_data_exercise_id_seq OWNED BY public.exercise_data.exercise_id;
          public          postgres    false    206            �            1259    18824    gives_information    TABLE     �   CREATE TABLE public.gives_information (
    elga_report_id bigint NOT NULL,
    personal_data_id bigint NOT NULL,
    medical_data_id bigint NOT NULL
);
 %   DROP TABLE public.gives_information;
       public         heap    postgres    false            �            1259    18795    medical_data    TABLE     $  CREATE TABLE public.medical_data (
    medical_data_id bigint NOT NULL,
    hospital_start_date character varying,
    hospital_end_date character varying,
    hospital_address character varying,
    hospital_department character varying,
    hospital_admission_number character varying,
    hospital_name character varying,
    hospital_contact character varying,
    hospital_responsible_doctor character varying,
    diagnosis_state_at_release character varying,
    diagnosis_summary character varying,
    diagnosis_future_medication character varying,
    diagnosis_rehabilitation_aim character varying,
    diagnosis_recommended_measurements character varying,
    diagnosis_physical_issue character varying,
    medical_actions_by_hospital character varying,
    medical_medication_during_stay character varying,
    medical_medication_at_arrival character varying,
    medical_risk_allergies character varying,
    medical_previous_diseases character varying,
    medical_anamnesis character varying,
    medical_admission_reason character varying
);
     DROP TABLE public.medical_data;
       public         heap    postgres    false            �            1259    18793     medical_data_medical_data_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medical_data_medical_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.medical_data_medical_data_id_seq;
       public          postgres    false    213            c           0    0     medical_data_medical_data_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.medical_data_medical_data_id_seq OWNED BY public.medical_data.medical_data_id;
          public          postgres    false    212            �            1259    18784    personal_data    TABLE       CREATE TABLE public.personal_data (
    personal_data_id bigint NOT NULL,
    sv_number character varying,
    family_status character varying,
    email character varying,
    address character varying,
    legal_guardian character varying,
    religion character varying,
    language character varying,
    insurance character varying,
    telephone_number character varying,
    birth_place character varying,
    birth_date character varying,
    gender character varying,
    name_title character varying
);
 !   DROP TABLE public.personal_data;
       public         heap    postgres    false            �            1259    18782 "   personal_data_personal_data_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_data_personal_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.personal_data_personal_data_id_seq;
       public          postgres    false    211            d           0    0 "   personal_data_personal_data_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.personal_data_personal_data_id_seq OWNED BY public.personal_data.personal_data_id;
          public          postgres    false    210            �            1259    18737    report_result    TABLE     �   CREATE TABLE public.report_result (
    report_id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP(0)
);
 !   DROP TABLE public.report_result;
       public         heap    postgres    false            �            1259    18735    report_result_report_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_result_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.report_result_report_id_seq;
       public          postgres    false    201            e           0    0    report_result_report_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.report_result_report_id_seq OWNED BY public.report_result.report_id;
          public          postgres    false    200            �            1259    18754    settings    TABLE     �  CREATE TABLE public.settings (
    settings_id bigint NOT NULL,
    powerhead_orientation character varying,
    powerhead_height character varying,
    powerhead_position character varying,
    powerhead_attachment character varying,
    powerhead_tilt character varying,
    seat_height character varying,
    seat_orientation character varying,
    seat_tilt character varying,
    seat_position character varying,
    hip_flexion character varying,
    footplate_tilt character varying,
    knee_flexion character varying,
    ankle_flexion character varying,
    shoulder_abduction character varying,
    shoulder_flexion character varying,
    elbow_flexion character varying,
    controller_mode character varying,
    controller_cushion character varying,
    controller_sensitivity character varying,
    controller_rom_upper_limit character varying,
    controller_rom_lower_limit character varying,
    controller_rom_percentage character varying,
    controller_eccentric_speed character varying,
    controller_passive_speed character varying,
    controller_torque_limits character varying,
    controller_pause character varying,
    controller_isokinetic_speed character varying
);
    DROP TABLE public.settings;
       public         heap    postgres    false            �            1259    18752    settings_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.settings_settings_id_seq;
       public          postgres    false    205            f           0    0    settings_settings_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.settings_settings_id_seq OWNED BY public.settings.settings_id;
          public          postgres    false    204            �            1259    18845    uses    TABLE     �   CREATE TABLE public.uses (
    biodex_report_id bigint NOT NULL,
    exercise_id bigint NOT NULL,
    settings_id bigint NOT NULL
);
    DROP TABLE public.uses;
       public         heap    postgres    false            �           2604    18749    biodex_report biodex_report_id    DEFAULT     �   ALTER TABLE ONLY public.biodex_report ALTER COLUMN biodex_report_id SET DEFAULT nextval('public.biodex_report_biodex_report_id_seq'::regclass);
 M   ALTER TABLE public.biodex_report ALTER COLUMN biodex_report_id DROP DEFAULT;
       public          postgres    false    202    203    203            �           2604    18779    elga_report elga_report_id    DEFAULT     �   ALTER TABLE ONLY public.elga_report ALTER COLUMN elga_report_id SET DEFAULT nextval('public.elga_report_elga_report_id_seq'::regclass);
 I   ALTER TABLE public.elga_report ALTER COLUMN elga_report_id DROP DEFAULT;
       public          postgres    false    208    209    209            �           2604    18768    exercise_data exercise_id    DEFAULT     �   ALTER TABLE ONLY public.exercise_data ALTER COLUMN exercise_id SET DEFAULT nextval('public.exercise_data_exercise_id_seq'::regclass);
 H   ALTER TABLE public.exercise_data ALTER COLUMN exercise_id DROP DEFAULT;
       public          postgres    false    207    206    207            �           2604    18798    medical_data medical_data_id    DEFAULT     �   ALTER TABLE ONLY public.medical_data ALTER COLUMN medical_data_id SET DEFAULT nextval('public.medical_data_medical_data_id_seq'::regclass);
 K   ALTER TABLE public.medical_data ALTER COLUMN medical_data_id DROP DEFAULT;
       public          postgres    false    213    212    213            �           2604    18787    personal_data personal_data_id    DEFAULT     �   ALTER TABLE ONLY public.personal_data ALTER COLUMN personal_data_id SET DEFAULT nextval('public.personal_data_personal_data_id_seq'::regclass);
 M   ALTER TABLE public.personal_data ALTER COLUMN personal_data_id DROP DEFAULT;
       public          postgres    false    210    211    211            �           2604    18740    report_result report_id    DEFAULT     �   ALTER TABLE ONLY public.report_result ALTER COLUMN report_id SET DEFAULT nextval('public.report_result_report_id_seq'::regclass);
 F   ALTER TABLE public.report_result ALTER COLUMN report_id DROP DEFAULT;
       public          postgres    false    200    201    201            �           2604    18757    settings settings_id    DEFAULT     |   ALTER TABLE ONLY public.settings ALTER COLUMN settings_id SET DEFAULT nextval('public.settings_settings_id_seq'::regclass);
 C   ALTER TABLE public.settings ALTER COLUMN settings_id DROP DEFAULT;
       public          postgres    false    205    204    205            L          0    18746    biodex_report 
   TABLE DATA           9   COPY public.biodex_report (biodex_report_id) FROM stdin;
    public          postgres    false    203   �      W          0    18804    contains 
   TABLE DATA           O   COPY public.contains (report_id, biodex_report_id, elga_report_id) FROM stdin;
    public          postgres    false    214          R          0    18776    elga_report 
   TABLE DATA           5   COPY public.elga_report (elga_report_id) FROM stdin;
    public          postgres    false    209   7      P          0    18765    exercise_data 
   TABLE DATA           k   COPY public.exercise_data (exercise_id, torque, angle, velocity, muscle, exercise, repetition) FROM stdin;
    public          postgres    false    207   `      X          0    18824    gives_information 
   TABLE DATA           ^   COPY public.gives_information (elga_report_id, personal_data_id, medical_data_id) FROM stdin;
    public          postgres    false    215   Tr      V          0    18795    medical_data 
   TABLE DATA           C  COPY public.medical_data (medical_data_id, hospital_start_date, hospital_end_date, hospital_address, hospital_department, hospital_admission_number, hospital_name, hospital_contact, hospital_responsible_doctor, diagnosis_state_at_release, diagnosis_summary, diagnosis_future_medication, diagnosis_rehabilitation_aim, diagnosis_recommended_measurements, diagnosis_physical_issue, medical_actions_by_hospital, medical_medication_during_stay, medical_medication_at_arrival, medical_risk_allergies, medical_previous_diseases, medical_anamnesis, medical_admission_reason) FROM stdin;
    public          postgres    false    213   �r      T          0    18784    personal_data 
   TABLE DATA           �   COPY public.personal_data (personal_data_id, sv_number, family_status, email, address, legal_guardian, religion, language, insurance, telephone_number, birth_place, birth_date, gender, name_title) FROM stdin;
    public          postgres    false    211   |w      J          0    18737    report_result 
   TABLE DATA           >   COPY public.report_result (report_id, created_at) FROM stdin;
    public          postgres    false    201   z      N          0    18754    settings 
   TABLE DATA           I  COPY public.settings (settings_id, powerhead_orientation, powerhead_height, powerhead_position, powerhead_attachment, powerhead_tilt, seat_height, seat_orientation, seat_tilt, seat_position, hip_flexion, footplate_tilt, knee_flexion, ankle_flexion, shoulder_abduction, shoulder_flexion, elbow_flexion, controller_mode, controller_cushion, controller_sensitivity, controller_rom_upper_limit, controller_rom_lower_limit, controller_rom_percentage, controller_eccentric_speed, controller_passive_speed, controller_torque_limits, controller_pause, controller_isokinetic_speed) FROM stdin;
    public          postgres    false    205   `z      Y          0    18845    uses 
   TABLE DATA           J   COPY public.uses (biodex_report_id, exercise_id, settings_id) FROM stdin;
    public          postgres    false    216   }{      g           0    0 "   biodex_report_biodex_report_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.biodex_report_biodex_report_id_seq', 16, true);
          public          postgres    false    202            h           0    0    elga_report_elga_report_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.elga_report_elga_report_id_seq', 16, true);
          public          postgres    false    208            i           0    0    exercise_data_exercise_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.exercise_data_exercise_id_seq', 15, true);
          public          postgres    false    206            j           0    0     medical_data_medical_data_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.medical_data_medical_data_id_seq', 16, true);
          public          postgres    false    212            k           0    0 "   personal_data_personal_data_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.personal_data_personal_data_id_seq', 16, true);
          public          postgres    false    210            l           0    0    report_result_report_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.report_result_report_id_seq', 16, true);
          public          postgres    false    200            m           0    0    settings_settings_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.settings_settings_id_seq', 16, true);
          public          postgres    false    204            �           2606    18751     biodex_report biodex_report_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.biodex_report
    ADD CONSTRAINT biodex_report_pkey PRIMARY KEY (biodex_report_id);
 J   ALTER TABLE ONLY public.biodex_report DROP CONSTRAINT biodex_report_pkey;
       public            postgres    false    203            �           2606    18808    contains contains_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.contains
    ADD CONSTRAINT contains_pkey PRIMARY KEY (report_id, biodex_report_id, elga_report_id);
 @   ALTER TABLE ONLY public.contains DROP CONSTRAINT contains_pkey;
       public            postgres    false    214    214    214            �           2606    18781    elga_report elga_report_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.elga_report
    ADD CONSTRAINT elga_report_pkey PRIMARY KEY (elga_report_id);
 F   ALTER TABLE ONLY public.elga_report DROP CONSTRAINT elga_report_pkey;
       public            postgres    false    209            �           2606    18773     exercise_data exercise_data_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.exercise_data
    ADD CONSTRAINT exercise_data_pkey PRIMARY KEY (exercise_id);
 J   ALTER TABLE ONLY public.exercise_data DROP CONSTRAINT exercise_data_pkey;
       public            postgres    false    207            �           2606    18828 (   gives_information gives_information_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.gives_information
    ADD CONSTRAINT gives_information_pkey PRIMARY KEY (elga_report_id, personal_data_id, medical_data_id);
 R   ALTER TABLE ONLY public.gives_information DROP CONSTRAINT gives_information_pkey;
       public            postgres    false    215    215    215            �           2606    18803    medical_data medical_data_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.medical_data
    ADD CONSTRAINT medical_data_pkey PRIMARY KEY (medical_data_id);
 H   ALTER TABLE ONLY public.medical_data DROP CONSTRAINT medical_data_pkey;
       public            postgres    false    213            �           2606    18792     personal_data personal_data_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.personal_data
    ADD CONSTRAINT personal_data_pkey PRIMARY KEY (personal_data_id);
 J   ALTER TABLE ONLY public.personal_data DROP CONSTRAINT personal_data_pkey;
       public            postgres    false    211            �           2606    18743     report_result report_result_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.report_result
    ADD CONSTRAINT report_result_pkey PRIMARY KEY (report_id);
 J   ALTER TABLE ONLY public.report_result DROP CONSTRAINT report_result_pkey;
       public            postgres    false    201            �           2606    18762    settings settings_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (settings_id);
 @   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
       public            postgres    false    205            �           2606    18849    uses uses_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.uses
    ADD CONSTRAINT uses_pkey PRIMARY KEY (biodex_report_id, exercise_id, settings_id);
 8   ALTER TABLE ONLY public.uses DROP CONSTRAINT uses_pkey;
       public            postgres    false    216    216    216            �           2606    18814 '   contains contains_biodex_report_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contains
    ADD CONSTRAINT contains_biodex_report_id_fkey FOREIGN KEY (biodex_report_id) REFERENCES public.biodex_report(biodex_report_id);
 Q   ALTER TABLE ONLY public.contains DROP CONSTRAINT contains_biodex_report_id_fkey;
       public          postgres    false    203    214    2989            �           2606    18819 %   contains contains_elga_report_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contains
    ADD CONSTRAINT contains_elga_report_id_fkey FOREIGN KEY (elga_report_id) REFERENCES public.elga_report(elga_report_id);
 O   ALTER TABLE ONLY public.contains DROP CONSTRAINT contains_elga_report_id_fkey;
       public          postgres    false    214    2995    209            �           2606    18809     contains contains_report_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contains
    ADD CONSTRAINT contains_report_id_fkey FOREIGN KEY (report_id) REFERENCES public.report_result(report_id);
 J   ALTER TABLE ONLY public.contains DROP CONSTRAINT contains_report_id_fkey;
       public          postgres    false    2987    214    201            �           2606    18829 7   gives_information gives_information_elga_report_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gives_information
    ADD CONSTRAINT gives_information_elga_report_id_fkey FOREIGN KEY (elga_report_id) REFERENCES public.elga_report(elga_report_id);
 a   ALTER TABLE ONLY public.gives_information DROP CONSTRAINT gives_information_elga_report_id_fkey;
       public          postgres    false    209    2995    215            �           2606    18839 8   gives_information gives_information_medical_data_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gives_information
    ADD CONSTRAINT gives_information_medical_data_id_fkey FOREIGN KEY (medical_data_id) REFERENCES public.medical_data(medical_data_id);
 b   ALTER TABLE ONLY public.gives_information DROP CONSTRAINT gives_information_medical_data_id_fkey;
       public          postgres    false    213    215    2999            �           2606    18834 9   gives_information gives_information_personal_data_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gives_information
    ADD CONSTRAINT gives_information_personal_data_id_fkey FOREIGN KEY (personal_data_id) REFERENCES public.personal_data(personal_data_id);
 c   ALTER TABLE ONLY public.gives_information DROP CONSTRAINT gives_information_personal_data_id_fkey;
       public          postgres    false    211    2997    215            �           2606    18850    uses uses_biodex_report_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.uses
    ADD CONSTRAINT uses_biodex_report_id_fkey FOREIGN KEY (biodex_report_id) REFERENCES public.biodex_report(biodex_report_id);
 I   ALTER TABLE ONLY public.uses DROP CONSTRAINT uses_biodex_report_id_fkey;
       public          postgres    false    203    216    2989            �           2606    18855    uses uses_exercise_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.uses
    ADD CONSTRAINT uses_exercise_id_fkey FOREIGN KEY (exercise_id) REFERENCES public.exercise_data(exercise_id);
 D   ALTER TABLE ONLY public.uses DROP CONSTRAINT uses_exercise_id_fkey;
       public          postgres    false    207    2993    216            �           2606    18860    uses uses_settings_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.uses
    ADD CONSTRAINT uses_settings_id_fkey FOREIGN KEY (settings_id) REFERENCES public.settings(settings_id);
 D   ALTER TABLE ONLY public.uses DROP CONSTRAINT uses_settings_id_fkey;
       public          postgres    false    216    205    2991            L      x�3�2�2�2�2�2����� �      W   '   x��I 0 ðwfRw����\���P^�7�g��      R      x�3�2�2�2�2�2����� �      P      x���K����&:>�9����[�����F��z���*��L#3��;"�"%qqk��moù�,��#��A�T_��Ӳ�}o�U���|_J|����SM�����VN;���ce]G5�_�V�[�U�����)YV�RG�>j\��Ӎ�.�2�=�:z�G������# ���%4�����̓.���6�G��5c�E��6*��R;(m����M�~��c65�}�q�"����z߯�z��N��6���Rn�c�KyԴ{���h)c�hJ�2��P7m�������]o��sԻ�qs�Rn���#L�Z� 1L��َ��Ø~�oU͜��M�4ӛ9������G�������+=}F_��&i��N��)a�F�h5a��X��ԹL��r�MNo����_�r��ڊ�	�Γљp�&Lec���:��|(EVn�d|�"��a�����/�Z�lb�=�P$����rIrd$#����1�i���u��sȲC^Y)אb��gX� �I����l\���_���i�_�Dj-�V��,��g�����	�)�}Z���7"��d�(	?�9�X]�7壂;�ߑ��ni�X����G	Rj?<+�������D�̍��b,��2$�I*���V��v�z�����>mU'�у:E	�MM�,'�9��K��Fr,�Ċ�����7�P�aA-V�@��u�I�X�i�0J$ �Z��4��Aw�����[i:yM���':G�*�����K�S��T7�������.�F���T':#���(/���E��p��Е�ʂI��
 ��5.��e��X�HD�D@�����R�=����{�M��Y"��M�=C~LR���'�D��+�.�N�e3����
��=��$�$��G���BW�*�V�OkWI���屔��*���
���ꕮŘ.U5�d�58\e5KG����+���Do)t�P))T�t�~ 40�`L�9&YQ�:J���jk�r`�GF�e-�UK�I��s�XAb��2�F�
LϮ�{
�SQ�sKI�zRu�\�j�]NQ��$f�rv�Ef�,g�D������ɔ�(�֣fƖ�r��B���Z1��h��-N��٠V��v��s��S�b��v4��~�p��R�:�i�1ǣh�"�F�k����
د��]p�J�&��Q%T�V9*�P��
03���uZ��jo.��XU�]
�Kg�n۱i!F�1j�D��DMF�C�o�	%��A�3 mf��h��=�K�ngl�-_n���|���ݚ^U"��T������B�R�$);�.Qt�ѧ,>sA�ɮ��OjO�څ�f�ELQ*�&9�uu����}NQ���	a���:a@�z]��+�J��eb��qZD�5`;Y�=z�_ޏ�`��7"��x�"w"�(סbZ��"�(�8��]����թ3�P.�qw��շ���H�X��py�4��k��.��|]����4�(�咚A_ɝf�W:���8^��ЦO-{\]���h�a�%�i�aQD��ai
��Y�R<<��Ԧܲ�Z�<`��pi�j1ox��Q׳V�c1Һ���}[n{����v.�p�+�^Lk=��8cx��;+�~i�;����?������l\��6{/�Q�^�6�9����4} �Tun����CY%\��O��N�@K�h��j���&_#̵H`�{SF�m5�Q�ո�������k�f�_놁%��`�S����20�,�
�m���7g��˾���x�����e6k�_2�l�Y�e��s�YX�+evY�yc�ĲΫ&�{9�oJ3�a{r�������x�g�3��͢�_�Ď�Z�����g���g�K&H�|���,SV�	�Z�.�l<�WTr>��$���7�_h0k߿���&5G������nn��$Ʌ5Y~�^~�k{5beb������2qωFa�N��mt��p���y��k�.���q�K9�=:+Ev6Ĳ��:�m�j29��ٳ���q�g5t��p��h����5bϗ�=g<���M�j�xY촂�D�b&�̯'�� #2OήH��ߖr��e�LPoK��u�k����Oj5���$�r��i���EMJ�L��,�-@V��i5���[�eyB���v������F2(z��2$Z�׺Nv'i��+�ٚ7pG���[!���8\>��Z!� 0�	�jZ`z�y
�` �o��0���9`p"`��d���M8�#��93-�a]��L��S�;�¢�x���uR>�Y��f� b�~���Ys��d�! �Z0�$j]Ƞ`t-��#0�����]�"1޿�E �"L+0��i��F�W��&�M�_���ȧ!d�n,�wVP���7�����7+<�̛�q��|`3�_�0������e 3H�V0��.k��U�k�����agxDkC˸����ůRf`��0��-.�`p�i�0�@���..#/01�r�Ê	��2:��A���%i����5����F}�0�l�]a�o,x��U�\��s�cc�� �y��UǠ�$��p;����fgZ�+1{��f֧��%P�����Ѕ�@�\�P�O�ò.�$*I2w�x���y�`��d�5�&!�S�n#� �*M�8�*`8�o`���&� �N$��H � DV0�$z��z-@��\L؃�G7�X$�a߬����� �)$
��P/�L�$��2:��e�#�c�AB��/�`t��̳:#C�7<�%!��1S�`��\�T��
�ă26ܳ�y�k�Kx�ց��Y�d�cI�m�2���=>�9`2.ႆI�� ���ր`qnA�^��I�K�u�@>	y8/4 7F�$����� .13a�AL�y�یy���|�ٛ��1�fv�>̖���Zb�+�D��.�|0> �y~�A	��
�{�(K�CM8�,*#\�6l��>#Z�2���e�K�P�4�0x4y�Y߱B�2��*J��7A�қ;�>��9q:��I�m�l� \	���aS���!D��6V�0B��d�$��3�c�����\�=�[6�H���hw�rd�e�#�.��m�	�Yxȣ�����&�`J���]6�6��x0�p�Z�����`�(Gz��4�}���Ўa�i��I�k��:����̣=d����1����u�0����0�j��Nc9�@Q�ud�d'���;���Дc�.NW�:�>��J��n8�u#�:4��]���2�%ȫ�:�؂ئ� M��V-s"��H������$ɀ#�+�X�G��(�,�I���N�`�9��4y�F���7F F=F���f=�"F��J�T�\�:��d[�DI�a�6[�Q҅���`r�H����Ȋag
J��@2����{��5Nv�Ie#Pڂhnn��Z7x��o�0�7|$� `�O������%s���k6W�� V�0�%<� {7������ �V $�=@�,���PJ8!$9�!�5H@)=`��
�����=D�����g>p����P���V`DF�Т͖��q�w{���b#<GX��Ka�Vz��S������c���HC���CV���&閎,�vdy��U��K4mv�,�IlH�l@�M�2Jw`�=+epk����|�r���_�,AB������Dx�&`�X��|�z�ru�/;��q��k���1�]^�r�����d�������|M;�2з�9r��0�|d���>��('�&ȑ!�Q������,�&�%K� �"&EKQj�����0pܢ�@_��@3�-���4�N�C������D(:IF32�9�Ǹ�!���h%c��&�%��4� � ;��1;3��T	�]���f�|��D`j;�<�&u�*�����,����^/����P���7r��v�jN,�u�r���yb�v�؟����� �߳��W�xƩ�������DZ���3]���~hS쥋_���Ùrךk��w��[    uB�����r\#E��U�{_���*��M}�����}��Snl� ��RF�[KS��n����\����A�R;9�5n0�hS���nc���a� b;6��8J���M�62K���G����t�������Y�,��$x���!&ʠ��/�p���⃦� ��m��ߗPv������9>��A���1��e���.ի��oDP>�)������:��ǹU�.�,� �/u�:,�;�O�O��*�I�k�'��G��z)~�O�I?��x�	�	���,�=�m��6��[��[cn�	�B��q�n��q��bqs�3w�������eR��c�}��W�&?Ǐ�N�(���3����`~�V@��&��v��Y�Sc~����ԻȺ�g������}$K����ƭ�fRwc�^0��飞�{�"���Dߢn���Tg�9��ګ��UاJ����_���+?��l����":����oY~	bU��+�+_�@��N	���Vڼ<+� �A2�����qcC7���=t�7�UB�1߃�g��=n���I��ϯ��nWڸo}�D������������K���O�I������<}�4��z��#��[k�����6�G�� \פ*ظ���v������O4=���'��?	�B�g(���`'c�*d�h@�4xbN֫�~צα!^G:����#^Q�*��}�O�I?M�3���W��Ŵ�wa[�gK�V�z�%�܀Ʊ�]/~{�/l�{�\���^L�1��c�$��)�pR)x��%��㶤�8��(~�*���.E#�*���|�O�a葎�7�t�}��Q��bL��E��S�	�z^�`Ղ�Ϩ��;@2:��<9EGc�4�7�M�&�����_��YN�Y�g�j}��AôRĎO�����=�}�q��u[mO�zy�qcBq#O�db��0�Nv��h�����x��/6�2�u��G�ڟuW��F�a�k���#كr�z�nd�S'�ؤ9������-��T�k���?��������������寿}���~������_�~q��_���L8��YR4��h<<j�yt�;3�l�+��^�Y;�	W���e;� 
/vKE5��CK;z
.���T)�f�S+��x��8�}�^��X�w���w7툎�f���֎W&��/������E%��������~�˯���_~����������������\������������|��,�-���\t�Ӳ��GL�YU���f�C$�T�'�/����_C_]�{~o���Z]q���]�uJ�>s�B�b)�w�]_�ָշ�y��������\�y}}���{�w9V	G��ҵ�����x��+������<��=�|�6O�۹��^��./�?����tq����vy�w�6�������W�G�������{�Jo�S]��nM׹��#���Y$d�_��_��SnI�(�6Q�����/Z&+�i�@N�z����z�D�/���ԙ��ju[h͚qIPY~"IŲ�+�ͦ��/�Ow��Oz̹N�I�7���2p�����ׯ\_k<p	��+UBu��u��[���7��I���[^�uZ���+�ca{�UUڥ��tVm%E��-pg!F�1j�D�d�xg������/Q��s���&if��h��T����[u˗O�Ո_-�P<���j��`cAٰ�����ii�[���p�Dѭ�F���9N�g'd���'5��Q��U3�1oK'�^��:}X��>��B��;vx�t�@�׵\�r��]&�\�Et�PRb��j�G�����jHE�a���"��6<g��Q���0;i1-�`�����'�=����I�H�ޟt���p Sw��շ�����'\^+�1q���K��Ϙ4_�p?9M<��$n6�&w��$vJgY8�����J�O-{\]��#u��˲GLz�sXT�˧ai
��Y�R<<���&��d�FÕN�/_Ov-��+�K��*���Q׳V�c1Һ�h�W~BM�<���A��6�xe���i�G�g�V~g�ߏ"�{G������0��ٿ����f��e�!
�+�&�u �ׁ����z��c(��k��)}��)h�M�c�TM������{���@54X? wwh����Fj��״c ?�m�P�q͠�`ʵ��*0 �z�@�ܑsѕ��/!�c��K �5�_���(P�U�����U���G���=���y�^��V��#L�{����}���E�����tm�z�0����{�,:�Q��Ai{�T�Tw���M 5��u���3�����Ʊ�z�9��뇸9d͓{y�1��h%�ɽW�F�����9���V�;���d�N�nL �ztn��ч��^��S�=\:����z��ޥ��mPZ?�up�jD��r"���^�s�E]&bQW.�-�?�pޑ"+o/���Æ7�p��R�$�e˅�]O��92��_bk�L�w�:��9d�!����E�\�?lgk�@���[��.5���l�پ��oވ(�Z����e�(�ٞxQi�7�r)_|}��[�ӎ�#^�?�)��_�ʟ��sY��Fk�������=��{ܦ�j��������XL�W�5J&ngs(��ڪ%�*��<�����o����u3MgiН�,n���w�^�4yE�ŉ�ѬJop"������&�-���>L�����!??��'���E��p���Ȧ��=^���w�rszk�n���HM���D虓/��M�����N	��b�Vc�3�R=�B�t�Q6#���l�K��hi�f��9�������kc~��'����-�|��Xӿzҕ�=_�IY�5�n��CMn������L;���Cb��2�9�Nu<�z2On��/e�o��"��E���?�1�=�q� vU�.�=~V9����ω�[a�&����Y�����|�t���Z�|���������#P^�c�x7�4]��j�v���ڭ�ƣ�2o��t�*7n�Kg<Bg^P�4�Y�;vW ća�3V��ӱ��t"�^�j�����K��>Jё�+T��%�"�P;h�F�U�/�(�LL�qx^��jR�x[���A�p<��b�H�B'��Xp���G+<2t�3���3�h 3�C����LD ��yd�t4�Q��pk>}�C�@�x�-t��Q�+.����x�����P�]�Y<<@<~X"�^���%<���0�<� e�d�#�*�h9��.'(
�*���u݈a	��b�	؋6+��	���^�=�+3��X�0E�� (��_���xG�*1 ^`�yP�W��8�5L7t�U<�k�xz=ǹ���H���Y�#��I��d�d�t��]L�q�OG�y����N��S���%q���d��*������	� �g9t��<�aBtvH9�^�������RI����b�A�#�0�j��C#b��\v	�,���`��DЎ-�m�0�lpB?;��9y��� q�A����8�0���,�U��`���ɝIYV� ��'��l��A'F�s �i6�h�~���ǈ��l�GX���p%�ksM�;���,����%��	^ζ�$�$�#<K:!|DGϡf6Htd�@���bCGdb��X�w�t���_���A�!d5��V��0:��d&��j��q)�������H��bl�9���0	~�a@,p=$�W&0Q ��DX��~��+�ބ���*c%@��g�$�H2� 9�Js����덂�r�#�$B���@	C�nsT"�i��t�gs�.��ŭ�#^H=��yi�dGB�����_>.��;����ve4��u�-�h�%d$�1�O�KX�",Fx���:3q�t3%r*1�U���8v0���4��B�`��X�a�$�,��d0Li�Dc#M1�J�|��M�yγ�Ć�����d�h(Q��Y�+����	��8�,A=�ݨ��@& �=h�	ݸ��a��`�m    �D9&޲	�@9V0�r�ܣ����:k9u3�=<��u¸l��6 �4&�q��Wb\��d�#Y»Dm�%�e��1��ʄю���v���B�C;��90��y
s�P�a'ہ�(
'�@�]��`���(Gp��aD��%�Ļd	�]Ĥh	"Jy����[��aloe�n�!1�9��c�:r9����22�Ddd$��FFF�ь�k���� �x�-�bt����s���E��	�3 �ɉd�ٙ��J`��6�@%u���;���L��^��g�̮R�_8x�l`&f�C�6��yN����Y��=\YQg_�y#_8Ol�.����(0&�={�Ōg�*���*�H��� P�F~$+�3���F�[����f(�}�l��$��?�_��f�Kf��<��,�{.� kr��.�8o,�X�y�Drb/��Mi&7lO.s6�~V���q�]u�Yt����1R` ��}τ����LlJ�|=�2�@0^��jn&�������Fa�\N,���=z�/S�쨶�c��e}�+��_�Z��Y����DY���6~5�����Yc����̳:�{��� 4ISB���Kɞ3�I7b�H<8&+��Dᅸ���k�M�G�b�'g�'��B����
/����ï������Mz"� �#q
��(o��A^��g���(֛� Z�:��Ka1�K+a2���2�k`�j�SXL�-��8 ��R��7��;���/�5!DV��"B�$��n��D����.�{���݋s�c��*XG$��Q���kr�c)C�x�.��Z�@l<�F�@Z�a�
v��U0�B]!�j1,?0�[?�Iq�2R��a�i+ ���c ��1�;��i8�ZY�s��C�~[+#ي�d��$���c!�1b�;r��Õ��͋e2F�AU�) =�����p��\�b��2)�"A�׹���\�jo�.B�r���*�%�I�2���߸�ϑ��C��e#���[��m j>U|���#������] ��j>Z߂~���~�����d�ȷ��3�Iȓ J���o��Oȗ��q�}�h�� 2��� ��w@�[H����8p1J�r�4��+*��+���7Pz/�VK���IM����<x���?p[zߓ�T����ޗ�aA�qV�@v��4�V��X��![���Z�S][]I�" EM�����FѵF|3*B�"�\-�iG樏+共 =*n�0�?�!v�6�{�m�A{x��G%��nQ��tu;"���V�v���^="�u���J����䟷��O��(���%�E}<}�4oH�����%z���`���uM����df(:�&����A�%�&������
�=:�*c�*d��n_�w��[��e�{6�v��襗7^�Y7}����k���bkX��������6��O��?"�_ƶ�a��޾��wa[a�xIЊ{�\����Җv%c�CE�x��(�?���W��/�ku��)y�p�i;����MRH��*m� !��A���A�H:";&{�A��'�����HG��q��}��U11���T>N��W���:%��ɠ_&wےj�Uø4Q�1;@2:��<9Ek�?��mz5р����܏�_���g�j�>�!~]��̳��;�z�gLt�Sg[�iy5UJ_|o���vK}�y2=�L}����A�X�8y��'��q��:s����-��UՓ����}l�9�U��(ϔ���֣v#��:��ڨ�����ch�T~���1�L�:�#9��i#_W�o�Xn��`�o��= �n����\���hr�G��6s[����m� �c�뉣�z�o#�th�~���s���a��������gM�0�w�6ƨ�(���6(^#���M!#�P���j���
����&�A$zf��K���S�
��[�j��疞O�I?�T���zd����Bu��4�]��MV��X�6�t�A�7?�H�9��$m=��Z�/ߙ��$�>o��L'��'�~�V@����~U�Y}�	�5_M�-K���D���m<�8nt�����ޥ���\t��:=�s��n��?�? ��'K���|D־.���G��}��'����+��'m������_���˯����_���_~�����寿}���~������_�~�O����㻔�����O����������5|;�;���o�.������a�͋�_�^��~}uk�e�7�UןV7�V	�+��8�{��BW;���ä��b�P��~�������dq)
֍��n\���w^ƻ1�ݰ|�j���u=��guw�7ߺzxA��:���n��]�x��_�7e���Rx��5S�ͧf��{w���Yή�./���OcZ��nqMj���{�G͌�k�[ׅ�\�խ���]).��������-�;���Нo�b�e��&J� �:nqxLj<�A�2���|_J�.�F�kq�חl_�R!��%� }�J���>��J��������E����(B�������y	�5��1T�Jݺ���_1���cM��R�i�$p	�k_�}	�팭����6�f5�WCm54E�5�*�Tʬ��k�.�pt�|�i�n�(�u��S��q�Mv���=5��Q��T3�1oK�$�T�)�:}XQuޠ^A�uµf��u�NPB�^�r�J�T���Q%�ז΋]�Y�n=s�*���������TԾjOJ˷^'��9�C�n��ކ���a�i��7�X�<*�z�'�NQ�O�F
{b�E_���ִ��i�	{��4���_�/Y?c�|]��L�4�(�咸�L���.��4�g�@cL��� �k+;�>e��:��e�#&=�9,���So]Z��֯�E�6��S<٧�f����דI�j����Ұ��l�7�؃�����x��
��W
�*�Wk� �]����7ܫ!^�4l�C�IxV�R�����X�S|�_��u_j���2���k#�:�qݎ��@�b0U�
����1�Uµ���������1_���J�	Ւ�M�v@W\w��h�;�`4������5��Q@��0Te\3�5r�bV���AO����X~��I����s�A��5���ʯKk��Wo�5�����+u۲tG�_�R���UG�����Ɣ�!~?w-�k��><�]���/�o��g̢s��ѻ��y�uL�ܕ҃=����z�K�L������)�w��搝p�:�g�?����6��J��m�k�oU͜��GkΝ��c2S�tV7&�G=:7�U�Cpp��tj�.M��ZL�T�]R�ܛv��j,��������d�-��r���X�+�G�Ï,'w���o[y>\I��֮9�3G=����A��Y�_�7��q�V���:��9�Ñ<\\=�$\�\�>lgk����[��-���l����~dރ'�Z;����e�(���mQi�7�;���
���4�9����`G�/m�������R����H�!�z�Z���-�B~�w�Z��hk�o���0�F5�f�s�Ҡ;OY����,^�4�%�:':G3,�����K�S��t�����F�m��N����r����nR������>�R\���͝ԭ����'��4�[��5N�a�f g�C��!,�1#�����v���R�s�����D���w�(��$=��|�o���h��v"{�����M^�]=�_��J����H��pz�K�?��N��X<c'����=�	P��}��,t�Ҋw\� �����Hq,xF�E�V�W�� �oUx��ܱxO5)��Ö��x����m]4���[6<�H���`���N�P]	m@�{P}f�k�,�N � 涞/��*���VdV`�� ��h`�G��C��(���$���1����H�B���Rp��Q0������X�?@�vxG����P�^��P-`���~����m�F<�ʭ
�����-Pp@�2Hpt �[�q�h�C��`z    h�],N�j`LIg��!	�8�8��P��L�(ھ�L�n ֲ��䘉���p�ǠW<����v�Gw1 N`SyP�W��8�3݊���	c,�Ћ5O��w0,0�t�{p���	��u�@� lj�F�����t�A7EA�� ^��"�K��0��c���Q������Bq�qA��#��[�j �F�&�'
$�T<M������u�ÐPZM� 6������OX�&�U�d[Ȃ��(��"D��Z�n	�,��F�JxK�[�`|�`�tw�S̘�W�?��T�8�0���,�U��`���E�IYV� ����A�kϕt��F|��Z�L�ى'��l~M��E(w}Y������Z��)z:��o���U�뗁���6^�l'�����ȊaCEd`��T<������`�v1t�KR9��A�Qq�&3t4P+�ǯ�����#�l�U�p�Kg�9��I* T�͢2���"��#��'pdU��
�&��\���0؛01sPqU%8��gp$�GR�{p�A��y� 	� ���2:���:��� 	C�n�S��i�C�i&W��"0Z�Ξ�1�ɑ�<Ր/6`$���8��=޲n0��X ���59~������TF���o#��eHH�"$Fh���:3q��3%r*1�����8v0���4�Ġi	YK �����%T-S�#��HS��6[�I�,>��l�E(�v��f�1���蔉�1�u�����MZ�Ԅ�q�`� �
t����� �Àf�Ѝ���	��F�wi�
�� Mq�U�	��a���0���Y�	� 4$�o��W�[���c|#9�_m�%�e�����Ȓʄ�����t��]Y��W@
K=�8r������~�e%��Qhf�`�� �GP���p	�`�x�u���5�ޞ�����nQl]loe�&�����&z
I03�I�����PX�ɺ�	�v!�/	� ��[dP��T4��7*�����B��A��|v\���K�>+s_{IΞ�2�J9~������X����F�sB��_ϊm���5�)���f�2�?Kͷ������^�_1���/k��J>i�#�=k#?��,�D@ ��~���3��˾��	�Y���/Yf����.�O,���o���.�8iu"�����^���L<n؞\�lv���3^�⌻�t���W3�U������/�ؔ"�z&e"X�`�%�~��	�l$��8�Q7���[h�B~���˔9;���X�uY��-�Ɨ��=:+E�&9Q�r�BG��_M&�1:{����=.󬆎���9 MҔ��F��R��g���X-��J7� Q�=�� �O�>+��Ã��Γ�t+�Z�ڒ�e�S� �t�5���:���O�9	�܅y/5Qu����b��V�d�7Gy��%0^�Z�/a1E��S)�A�}��� ��q0���FAx!�!r���r.�Mt[��#rbwa޳����^��!�-V�:� y=�!�|�rd)C�xk�.��Z�Al<F�AZa�v��0��]!�j!,@0�[@�
94" qQ+���q��@�8�!"����i<�BYs�D�~[(#����%�D���c#�Ab>r���üP�3�W�d������d��$GG8@ܱ�%W��L��H��.��/�������E+�����ĥ�Τ�z��ĺ?G����iFV���$��p{��F�m ���Џ���e�G���l  �.�o� ��'qO� (�gQ��� ���� ��'���� �� �zw Tޅ�u��'�4/��I�پ��m;����y���hu~���I�Gx�����f��I�*�zR�K����_��`E{��m]��u#M�ռ��*
:ܪ��� �Byӭ|:�wq�����������rxW�Ʒ�R��}�����^Vx׸}�~|ҿ-��}�%O��Dn$� @nTJ �0p� 4VC;s�o����n�uM���5�`,(�skh�.Z��hO�ź��0�]P�𘒸&����Fn����놣�X��U���n�O�I?釡i~�;�qg�ma�3o���yp{<F{��V��5��K�mi;1�X�}�r7_m�^L�=߆�P.�kT������,�tحK�)�*82ޤ���]��k�ACᶋ�[z�uDu	��?>��O��D�tB}es�� ��Tq*�V�T������'�k�:�Y&wɒ*��=�Ff-ۘ���ŶF5è+�/�:�<��<�M�h{����SLp3�M�9:�^<�z��{�{.&������vK��Ko��X��21X�]8w'�!{4�t��i�w�`��^��̝l��{[=�z�|���ǳ��c��Z��Lq��o=j72�3����'n�;9<�O�ISq̎�S�9��J��� �u��K$�%�����m��!���m�!�t�jr"��n��ض��a� b;6��8J��@c0�A�й��T��[̞����ط�u�RO-�*��:67���x5P��ʋ�P�\�oB��̴� �O��n��}H�̸�7���Y��݆�j��� ��~ҏG5^6��:w���V��>�O;@����o^�6������l�� ?/��3 v�4=�9r�a�_�08��彚j2�/�l>{?��|s�i��6ޖ�m<17nˌ_F৹ޥ}��i��;�ㆾ�ޠ�h���*�S%}�� ژ�/Oz���R>"k_���듣�����'�6��^�7��O`�����߾�������w���߾���?���?����@��߹/7�&�_���[=�P��
uT~�mT=����������n����ܤ��;���n�0�w=�3��~��FC�3�܁�]��o�{D�]3��Ytl�2�/����ʩ�y��%K?o��Y������8�i�X/���s��{�T3gzj�K0�{��!n�C��^��)SK$�i62ۑ���c�O����S��ɓfz3�] �Yݘ@����>4~��{��������$��>���R�d�H����%�xH,�IW:}o��mG��'LV�D���L�VDO�o�ʄk�3iWѶ�`�hA�~>�"+�j2�j�xհ��I��w-m6��w(�]Ox|�$92��_L��4���:��9d�!���kH1��3,r7�9���U���şt2��Z���U"1K"�$�.p�?�#;�O�q�w#�]~Kω��3�S���5{S>*�������Ɗq/�Nx�':�_���FG�T��Th"U�FJ|1��e�$��~+s}�r���~^J������A���\��e9��q�` ]�5�c%V$��x���G��ţ3��*�B)����;�����<a�H ���i:8K��<eq���t�	���9�9�U�N�_\���ߤ�Y��vx��Ri���Meq�3�
-p�����Y4��7Y	])�,�Ԋ� ���^��N_�����DdIt�)�(���3�/Z�'ڔ����%�I��3��$���yr��{~�z����\�l�P�]��G�d��T���x�_�R%�J��i�*	5T�<�ҳBU�T8_Ar�P�ҵӥ��̵�S��u��b�P��{/E�׵��-E��*%��b>���i�ߜ�g\�5$_W\��o90�#��#R���ꪥɤJ�9C���\jv#Z�gWʁ=�ک����$G=)��X����.��Sh�y9;�"�q�3w�t^x@[p��d�wO�Z�Q3cˍi�_R!J�q��\4����ԏlP��B�Ռ�9��q�Ry;�MQ�	�F8V_�_	��Θ�Q4�Z]#���r�J��Nˀ.�~�J���Q%T�V9*�P��u'�ԡG�O��Y��������KAu鬣�m;� -�h<Fm�H�����{�-7��s�"�s��,5<� M�@Ѷ�s��팭����`V��`C�[ӫ�JC@���=��[(_j�$e��%�n6���g.h7�5��    �I��iT�pՌ��)J��$G��N�{��)��:a �6��\'贁B�k�~�Z�]�L��<N�蚡lG#k�G������6��FD�6�S�N��:TL�?R�P��'ݽ���Q�q�:u��%4�����V�Z)��.��&�r�U�%�a���z���&ſ\R3�+�ӌ�JgY8�k�2���eb���Y��=l�$=�9,�hq;L M��?�W����"��ڔ�[6\�l�.�]-���=�z�*u,FZ�s�s�o�mR?u�n��6�xe���i�G�g�V~g�ߏ"�{G������0��ٿ����f��e�!
�+�&�u �ׁ����z��c(��k��)}��)h�M�c�TM�����k���L�co���ݱ��5��״c R>�A�P�q͠���k�0��? �z�@=>r_� Bf#�eRA��~����b�v���<� K�3�%�l���d�γj�2����&W�첌���e�WM$'�rjߔf�q���2g��g���j�g�U��E����#�L:M}τ����L<��B#�Y��6j�d]��x����|~�I���o ��`־g��Mj�4=['�U����I�k��������j���\_3�9*��e��!�����?;�nٕ�j�;�|]���-�Ɨr&{tV�,�l�e)�/tT���dr��g�1:��2�j�x��ڛ�$M	9kĞ/%{�x&�����"���1�HT�,f�� ��z�- x'�g&:KG'���v���[���G'z���</o���j2�-,Hf�2�Ӫ=�����d��%ta�oa�Vc��9��x%v�`� m��_��<
/D^#������1CƀDk�'W���r�Hfk�<���g[�r�i����CCG*% �x��W����` �o��:��� ��t�$��C7O�O�\��������a�&vЅE#�3*�:)�,��l3	S 1N㙞8la��
t����`�;�4����s��Eၠց���]�"1��a�:��}F?-�!��.��OE�$�ū�!�)�K��,R�X�8M�_��^A�������@dA�54�����tabq�AC7��@f�f���j$����_�V0�1���v�g@�6��KK��X�*eV+����1��|c�x^*���e�&�TnrX1A_&@��0<(�0��$m��n�Mk�?)�;�<�Zx�;�B6���}���X���^�&���u�� �A*b�b���A�-H^Ҍۙ<7�5;ӂ�]��34�>.������]H4�5�5�$:,[Q��L���$�pG�����Zh�Q�L����$�y��m��T���>��A� 'O����4� �l��0x@# тU�5	��^��2����Q�8�l�7kj��!e��p
��%����;	���Τz���a���g��K�<�k���ǐ�C���D�jI��`�T�<<sWә���
�ă26ܳ�y�k�Kx�ց��Y�d�cI�m�2���=>�9`2.ႆI�� ���ր`qnA�^��I�K�u�@>	y8/4 7F�$����� .13a�AL�y�یy���|�ٛ��1�fv�>̖���Zb�+�D��.�|0> �y~�A	��
�{�(K�CM8�,*#\�6l��>#Z�2���e�K�P�4�nZ���f}�
1�L�(qP��5JoR�,�<x����S�'!�!�łp%c;�M!
�0i�6�X��2�IВ�ƿ���Q�
�[x�r��oٴ#"����ʑ����`�;��&�f�!�6�307�Ӛ�B�(�.[x�v����ng�-x�hs�����Q��i�e�N;_��\Ӽ#��0�F�u�1̑�G{��/c+bh���`F�]a�Eվ���rF9��
��0��
<NX�3nvl�1ء)��]���ux}`ߕX�p��"F<�uhF5�6�=n�e�K�Wu���M�A�Џ�Z�D��/*�d]K.([�I�G�1
VR�,�,�Q�Yғ�G Νh=��s �i6���o� �z�0!�z�E�L�!��&�u�{(ɶ`��xv�R؂��.�Ȥ4���l~p���v���	$�)�:��Y�d7��P6�-�V���u�G��6�z`�I2 X@䓸D�7�d��d�d����p1H��0� �G	��+����-�`v3@�� Id�� K�,<���NI�D�lPJX"�i�{sp��03F����1���3Tvx���-�h�%d|����i��XC���c�RGة��l�Tb&�"������02��G0d����ձ�(�I��#�s�Y�bl���M��#�fR�"�C�����g��_���� ��c}�'K��-���9�ǤD9&޲	�@9V0�(ߣ/�\��/a\6����f��A�W�\6�j+0�,�g�>i�8_����`��=��8ف�(��1�	C�	rdf�#8`�0E�*K��w�<���I�D��z/<�#\��<З��2���c�:r9����22�Ddd$��FFF�ь�k�1.rD�q1:Z����f	�"M��$�N$c��L$'Uc�7���(�u *����>ϼ�I���}�%9{&��*������fba?Tm��焪ݷ��g]��A�p�ج]&�git�0�����e�3�q�,����#�V>���F���wi���3/�v����6}�����]�|�ۮ�������m��oZ�o����w�|׸u��m�F���t���\Iw��z�(��7���,�閺qm�H��������:[�Dl�~�G���C�1��^m�>�������-��Q�-c��v�^#��!M�on���h��)ϭ�>έz v9f	} �|�C�a��)8~Z�x:�W�N�\C<�5X<���K���~�O�I/�ƓOO ��d?ei��m���4��Z�(��pkL���{gp������;�1��g����.�3훶���60�9~�Xv7D��ͤ�i����7i�h���O��J��k�sT���E�U<��D}&g/� Y���6nU5������(O��c��7'�}pӶ��:k̑U�^eݭ�>U�'������']���Pte[�o���h���b�K�J�_q�\�J"�tJ�n'����Y������Юw������S��B��?#���qӼ�O�}~�Xw���}��%ҝ0^xmoϰݷl�(h��\B�'��O��U~���ۘ�=��?�k����Z���З0�I=���&U�ƭ�,P�L4��,~��o�>�X���Ix�?C��G�;�U!�G*���s�^=���6u���:�hбn8~�X���U�F��~�O�ah��9�����W/�U���
�=[���c.��4���z���~a����R�M�br�)��%y�Ni���K��~�.)���%��q'pE�(V���v9(IGT1�OG�~�C�tD����{ d���^c*G,zD�M�d��2�<}F5�7���1v���):����mz5р�����R�r���=�T���m��"v|"wG]�����0l軌}��j{���?��y2&�E߅yw�{�GV7N��{7~�9���3O��<Zx�������5rS^������֣v#��:	?�&��}�/��m����X+������w���_��ǯ�~�O�����Ͽ~�ǟ�����%�����?����?B�����?��~������?���e���rt�iWJ|��������Y�I]�uT�Q�ui���[u�=-�)y�/v�u��quzO7λ�ʔ�����a��FR� ������h�{f�;и���mx��k��;�΁mTF��vP�^9����l���^�|���z߯�z��N��6���Rn�c�KyԴ{���h)c�hJ�Zdkږ=�ѽ�����)�w���=�����G�2�DAb�f#�	�+=�1��ߪ�9���<i�7s���Ս	�Q����C��!8�Wz���.M�    ������ %Lֈ�&O��T(��u���[?�}<C[o���x��AN3Y[=�_<D9�/�ZE�҃u��-��Y�U��U��ƫ�7�O�_��ki��u��C��z���%ɑ��h�b�P��G�w�	n�!�ye�\C���a���������fp6��h�/��}h���HxZ%�$"�I���T�O��NA���_�¶�.�%��DI���)�ꚽ)�I���O�pKcŸ�D'<�K&���J��f*Fi*4�*s#%�K���x��?z�����]��c|?/�O[�Iu��NрE��鲜P�N0�.E�ɱ�+��ra�O�A��[��o����:�$g,�4O% G��f��Ҡ;OY����4��&i�[7tNt�fUz������7�n���^��T!bzSY�茄�B���#xMj��MVBW
+&��* �~x�׸�ӗ�*bm#Y�g�F&Je"�닖�6%g0$g�h7��1I-$�z��n��_�p!u:�(��-��DW���Q|$Y$9U78�0����TI���Z�JB�/����PU)�W�\%T�t-�t��%s���Tr]:�X%Te��)���Z@��"A�	��At�!�Z��oN�/C���+��ڷ���C��FYEu��dR%�!VP�X.���ӳ+���B�T���R���D],����i�S�)4�ټ��n��8˙;Q:/<�-�mz2�'J������ƴ�/����V�g.�df�Sg�G6��m��j��d�ԸX��ͦ�߄{#���ԯ��uZg��(x������i�~��k�e@\�R%����j��j�rD������#ۧU����ba{�UUڥ��t�Q�[�b4��K��J�d�=����P¹@�9�f��[�&qP�h�ù��v�V���f0�	̇Z��xڭ��P�! M��]~��-�/5M����E�}��3����a����4�]�j�]���k�#]W��=��U}�0fpx�t�@�׵\�r��]&�\�Et�P����ڣ����h�p^x#"����)r'r*��)l(b����Ux�(�[�:��w��LQ}�I����e�	��J�X��*�˰��E=�ON��_.����iF{��,��Qm��2�������X����@��&�����+���q�A�Mm��-����k�֮���u=k�:#��9عѷ����n7�_�w�2P�u��֣{�3�G+����G�ֽ#������S|��_��u_j���2���k�:�sݎ�@�@�JU�
�J�1�Uµy��������1_���JOa�5�\�� &߱7e`���V��\��k�1)���a�ʸf�k���nX��=e��/k !���2���V?ms�y1o���g�=u�����e6k�_2�l�Y�e��s�YX�+evY�yc�ĲΫ&�{9�oJ3�a{r�������x�g�3��͢�_�Ď�Z�����g���g�K&H�|���,SV�	�Z�.�l<�WTr>��$���7�_h0k߿���&5G������nn��$Ʌ5Y~�^~�k{5beb������2qωFa�N��mt��p���y��k�.���q�K9�=:+Ev6Ĳ��:�m�j29��ٳ���q�g5t��p��h����5bϗ�=g<���M�j�xY�0Q$
�I0�u	��t�̊'�.x觳t��Z膴l�e�LPx������I�&0��B�*���V�8��GMJ�Lf��-���-,�j=<B�B�W!@G�_��<6	�
^#�����1CƀDk������i���HfK�G�o�s+�p��7Ӆ~	�@��>8�^p��`0��,�������Ms0��D<]`d���M��{��c���nv��	� vj2�a]X4��ͮ��t�2�L�]d]�������@t��_濣�e=��*:a�Z^�g�ë��^���,Z�v�����XO���x=���7���t�g@
�t���@7��N<��;�W{8���oV��(x$J��3������N�.L,�=h�pȌ�#�� �.�5��W��w/�@wc������2.-�*c�<*WYh��\0���4�c�[��..#/01�r�Ê	��2:��A���%i�wmZ���I!�a��ע�O`��<�6��e�p��k��y.\wl0�"6/6���ۂ��QƸ���s�\�3-�ە�=�@3��p�(�	���Ѕ�@�\�P�O�ò.�$*I2w�x�a����Q�L����$�y��m���<���<p ���d�b���&� �6/@h Z����&!�ý�kz\�b����8
��"����fM�40�~�n���o	�2����N�)�<�I�2��1à��荗�y0:`��Y���!�� ��Ւ�����yxs��6��Q��el�g�����<��[7ȳxm#K^�> 3�@��n6�9G�=(�0	�`@���"�-�v�%�D>ZG^
䓐��Bpc$H"Ϡ�|�O7R��0��t	҆y�یy���|�ٛ��1�fv�>̖���Zb�+�D��.�|0> �y~�A	��
�{�(K�CM8�,*#\�6l��>#Z�2���e�K�P�4�� ���f}�
1�L�(qP��5JoR�,�<x����S�'!�!�łp%c;�M!
�0i�6�X��2�IВ�ƿ���Q�
�[x�r��oٴ#"����ʑ����`�;��&�f�!�6�307�Ӛ�B�(�.[x�v����ng�-xfis�����Q��i�e�N;_��\Ӽ#��0�F�u�1̑�G{��/c+bG$��n�}v��U�v#�� �*�#� &���x�����;;4�ؾ���� ���Οb]ĈG�ͨ�}�ƺ���v	�j��5� ��2H��U˜��b�E��ki��e+>�A2�H9F�J*��e5
0Kz�h Ĺ��q�6�F���ba���Q�#$��@����);��=�0�D�{�%�,Qo9Y
[�Q҅���`r��.����Ȋag
J��@2����{��5Nv�Ie#Pڂhnn��Z7x��o�v-�$���,.��M0��_2 Y�fspE�kDa5#��<� {7������ �V $�=@�,���PJ8!$9�!�5H@)=`��
�����=D�����g>p����P���V`DF�Т͖��q�w{���b#<GX��Ka�Vz��S������c���HC���CV���&閎,�vdy��U��K4mv�,�IlH�l@�M�2Jw`�=+epk����|�r���_�,AB������Dx�&`�X��|�z�ru�/;��q��k���1�]^�r�����d�������|M;�2з�9r��0�|d���>��('�&ȑ!�Q������,�&�%K� �"&EKQj�����0pܢ�@_��@3�-���4�N�C������D(:IF32�9�Ǹ�!���h%c��&�%��4� � ;��1;3��T	�]���f�|��D`j;�<�&u�*�����,����^/����P���7r��v�jN,�u�r���yb�v�؟����� �߳��W�xƩ�������DZ���3]�r�el՝Hcw��)ϼRg�b�g^�7xUW�o���6�^�<�ߞ�����m��1��+�7�28tk��<�R����n�������[�lw�۱���Qz=n���Y:4m?��|Ԥ�l�P|�����g���'�So��ePĆ��E�c�� ��m��ߗP��\��y���v~Po�g�jl�D��K�j���i
}s��E{�Nyn��qn���1K���K���N���:��a�
tR��ɮ�����^�ߟ��~�OzA5�|�x��'�)K{n[�����"E���[c´�&`�;�۬}�u�X����>��m��w�n�iߴ��U������ƲӸ!��o&�L;6p?�_�8�I+G�]=}"eV���X���*�8�.����~'�39 �  {a��h?��q������X��Ey��'����9ѷ胛�}<�Yc����*�n��?�'�W<?��E��+�2}���oD�'�[�_�XUb��;��W"���Sv;��6/�J'Hw�Ņ���v�{ �X���op��x�z������w���-}������ە6�[E_,����k{{���e�FA;���?!��~�o�"�k�%O�����>��^��n��w}�����M����/ �5�
6n-d��`���f�M}��IǺ��O»��
�=:&�ɘ�
Y?P������ꁵߵ�slH��QF��u��;����W���5Bm���~�C���!,��վz1��]��V��ْ��s�&7�q,}׋ߞ���?��o��cL9��/�kuJ+��_
����uI�'��-)$�;�+��@�J��A�H:��i}:*���~z�#�5]`� c@T���S�8b�#�h�'���9X���3��������4ON�јx͆�Mmӫ��ƨ��/��rx�~��Y�ZE�os�0����;�z<uDχaC�e��{�V��^��aܘP�ȓ1�,�.̻�݃�=��q�4޻�����}�y���»�g�����c��Z��H��ܷ����I�6i��{~q�n�v?/�Z�����߾��������寿}���~������_�~�O���?�����b~�������w���N�      X   '   x��I 0 ðwfRw����\���P^�7�g��      V   �  x��ˎ�6���S�M��]�:3Y�3��4p2'�膒�eּ$��<���ˋ��<�  �"��$���|�?1���G����jC���x*'}��U����e��ǍKw�>V2�A�&�IF�ؿvz]I[ui%�!�}%.6��B�a�呕�m%f��p4�L��Ȓ�@���R��M�S��h<�R�%e��7y<�c}�G���ޥw�>�}�V�򪤷Nk#��2*���˕&V�b��|��(�x��r6��_vIڨ��z�d��>l�˝b1W��;i������ԥw2���H���s�ueN�ߧ�U��]����a�^����uʉ̃�u���q�>wQx>�ٳ-����[l��U���V̾��cp��4�����>�Yf�pa�LS��"���u�	���i2��d�
�5���U���ͣ�n��"�"P��TpS�b�����B���眲��T�׬�n�]Æ�!�F\��*��i�����k�eg$�-w���e�z�N�dB_��R����rF�p0����r�U�Q1Sj�r�Z���$Ζ�U�:p��^�E`�~wG�����sA/ �w2����~y�] U<E�E��
t�u>������-�H��-ShBDJ�-I�
Qe%	��H;�gz�*7ϻd���]���f�t��+�fc o�̐x-ᨭ(��7 �*n]q�b�,�%$���}rZ�J��3κB;���qݝ�,��k��	p���Z~z�>:�E�` �}׬���ߒ�l���d�JA�y{�C �Nw��*$
W#��r#B���S�q��#�;�@dk��Z{���)ѐ,�3�q���o}�O�w�~��l__� ��ٞQp�{D�"v��F9�g�$v����|~+w��P�B�C� �p���=���P=Ԭ9r9L{��7�sYܹ�m4�p&g޻�`T�����З>�Q�b_��Q��$A����0�|"�V-�Ew�������͝�Ѣ��5AрA@9�<o!���n�j�N/-|�����?
�L?�]G�Zf��ܟ#����	  �cȈW����~��J�!<|?R�YiTH��w���~8�
�������w(�ʑ9�?]�N�E��f�*W�L�UmtX,��:X����F��>fc��
gL*Z������MhE�M5�T�?�7�^<���w�T�x�A#���Tضz��7x���5sR�Hc1<�����L&��%��~���"�b�      T   z  x��=r�0���)���2��hJre9�e'�Ǳ2v�fE�(�@P��ȗI�3��X�'?U�aC,\��e
�<Y�fE
���풭_�1��w��Jq���N�lc�0?l;o��c:$%I�Wʱq�j?���6l4��S��B�봆��o�r����u��J��m�����w?���� ����s�xxRl�⌗���X26r��$bV�3̓<I`f��<�R:��DH�/_������x��V�2��G�Y>���2�fp�@-\ЎM#���,�[�Xjq�-�G�����<�(�� ?�,f���xOv#wM{�a�T1�1�����e�i�Α?W��(��[�� I�N�����ދ�A�I�I1*$�!<�=� +b�����d2����=Kl�r�!$i6�ϊ�x"�ꃤ��-CfugH�q�W��Z9��@]J��`E>�7$	v����p��Ԋ��t(@�Z������X���@�:�k,��2��:k�}K�'��<?@b����EQ��Oz��:����[Y�8�	,�j���it��ӻ>4�kjÀ-<���U+��چy���"�U�}O��a�5���ۺ3���.�8��ZF�u]J0c#F��FſqG-�G�YG��(��oU��      J   J   x�]���0C�3���b'@�Y���D�����db36޻)�)BEi�W�Q���OW�3����_���Q]      N     x����N� ���SpԋRZh��M�m���d1%�����Z>�O�@��~\�ӡ~3���U�P�nC��ՠ�[Dc��-HA�T�*rQ�$���Z:�����!S�i�/����3$:�ˇ��A:?�'P����X"�]
/~p�-����
6#Y�̏L~R��c����aCD�3{�3���d�s��r;��sz[�o��X Ȗ����O��}C�6+-�Xѱ4��F̣�'Me�.#�����g~�O���pU�!Nݱ���'�{6      Y   '   x��I 0 ðwfRw����\���P^�7�g��     