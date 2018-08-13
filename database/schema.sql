-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

-- CREATE statements go here
DROP TABLE IF EXISTS app_user;
DROP TABLE IF EXISTS user_role;
DROP TABLE IF EXISTS role;
DROP TABLE IF EXISTS user_doctor;
DROP TABLE IF EXISTS doctor;
DROP TABLE IF EXISTS doctor_office;
DROP TABLE IF EXISTS office;
DROP TABLE IF EXISTS user_patient;
DROP TABLE IF EXISTS patient;
DROP TABLE IF EXISTS patient_prescriptions;
DROP TABLE IF EXISTS prescriptions;
DROP TABLE IF EXISTS appointments;

CREATE TABLE app_user (
  user_id SERIAL PRIMARY KEY,
  user_name varchar(32) NOT NULL UNIQUE,
  password varchar(32) NOT NULL,
  role varchar(32),
  salt varchar(255) NOT NULL
);

CREATE TABLE user_role (
  user_id int PRIMARY KEY,
  role_id int
  );
  
CREATE TABLE role (
  role_id int PRIMARY KEY,
  create_page boolean,
  view_page boolean,
  update_page boolean,
  delete_page boolean
  );

CREATE TABLE user_doctor (
  user_id int PRIMARY KEY,
  doctor_id int
  );
  
CREATE TABLE doctor (
  doctor_id SERIAL PRIMARY KEY,
  first_name varchar(32),
  last_name varchar(32),
  practice varchar(75)
  );
  
CREATE TABLE doctor_office (
  office_id int PRIMARY KEY,
  doctor_id int
  );
  
CREATE TABLE office (
  office_id SERIAL PRIMARY KEY,
  name varchar(50),
  address varchar (100),
  city varchar (32),
  state varchar (2),
  zip int,
  phone varchar(15)
  );
  
CREATE TABLE user_patient (
  user_id int PRIMARY KEY,
  patient_id int
  );
  
CREATE TABLE patient (
  patient_id SERIAL PRIMARY KEY,
  first_name varchar(32),
  last_name varchar(32),
  address varchar(100),
  city varchar(32),
  state varchar(2),
  zip int,
  email varchar(50),
  phone varchar(15)
  );
  
CREATE TABLE patient_prescriptions (
  prescription_id int PRIMARY KEY,
  patient_id int
  );
  
CREATE TABLE prescriptions (
  prescription_id SERIAL PRIMARY KEY,
  name varchar(100)
  );
  
CREATE TABLE appointments(
  appt_id SERIAL PRIMARY KEY,
  doctor_id int,
  patient_id int,
  office_id int,
  appt_date DATE,
  appt_time TIME
  );
  
--  ADD FOREIGN KEYS --

ALTER TABLE user_role
ADD FOREIGN KEY (user_id)
REFERENCES app_user(user_id);
  
ALTER TABLE user_role
ADD FOREIGN KEY (role_id)
REFERENCES role(role_id);

ALTER TABLE user_role
ADD FOREIGN KEY (role_id)
REFERENCES role(role_id);

ALTER TABLE user_doctor
ADD FOREIGN KEY (doctor_id)
REFERENCES doctor(doctor_id);

ALTER TABLE user_doctor
ADD FOREIGN KEY (user_id)
REFERENCES app_user(user_id);

ALTER TABLE doctor_office
ADD FOREIGN KEY (doctor_id)
REFERENCES doctor(doctor_id);

ALTER TABLE doctor_office
ADD FOREIGN KEY (office_id)
REFERENCES office(office_id);

ALTER TABLE user_patient
ADD FOREIGN KEY (patient_id)
REFERENCES patient(patient_id);

ALTER TABLE user_patient
ADD FOREIGN KEY (user_id)
REFERENCES app_user(user_id);

ALTER TABLE patient_prescriptions
ADD FOREIGN KEY (patient_id)
REFERENCES patient(patient_id);

ALTER TABLE patient_prescriptions
ADD FOREIGN KEY (prescription_id)
REFERENCES prescriptions(prescription_id);

ALTER TABLE appointments
ADD FOREIGN KEY (patient_id)
REFERENCES patient(patient_id);

ALTER TABLE appointments
ADD FOREIGN KEY (doctor_id)
REFERENCES doctor(doctor_id);

ALTER TABLE appointments
ADD FOREIGN KEY (office_id)
REFERENCES office(office_id);

COMMIT;