-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************


BEGIN;
        --      TEST USER ACCOUNTS                      --

INSERT INTO app_user(user_name,    password,       salt)
        VALUES      ('test_admin', 'PartyParrot123!@#', 'salt');
        
INSERT INTO app_user(user_name,    password,        salt)
        VALUES      ('test_patient', 'PartyParrot123!@#', 'salt');
        
INSERT INTO app_user(user_name,      password,     salt)
        VALUES      ('test_doctor', 'PartyParrot123!@#', 'salt');
        
                --            CREATES ROLE IDs 1==patient, 2==doctor, 3==administrator                  --

INSERT INTO role (role_id, create_page, view_page, update_page, delete_page)
        VALUES   ( 1,      true,         true,       false,       false      );
        
INSERT INTO role (role_id, create_page, view_page, update_page, delete_page)
        VALUES   ( 2,      true,         true,       true,       false      );
        
INSERT INTO role (role_id, create_page, view_page, update_page, delete_page)
        VALUES   ( 3,      true,         true,       true,       true      );
        
        
                --              TEST USERS TO ROLES             --
        
INSERT INTO user_role ( user_id, role_id)
        VALUES        (  2     ,   3    );
        
INSERT INTO user_role ( user_id, role_id)
        VALUES        (  3    ,   1     );
        
INSERT INTO user_role ( user_id, role_id)
        VALUES        (  4    ,   2     );

               --           TEST VALUES                --

INSERT INTO doctor(first_name, last_name, practice)
     VALUES       ('Mantis',     'Toboggan',  'Oncology');
    
INSERT INTO patient(first_name, last_name, address    , city,     state, zip  , email, phone)
	 VALUES        ('Test',       'Testerson', '123test ln.', 'testville', 'OH',   12345, 'test@test.com', '123-456-7890');

INSERT INTO office(name,    address,          city,    state, zip,       phone)
        VALUES    ('test', '123 test ln.', 'testville', 'OH', 12345, '123-456-7890'); 
        
INSERT INTO prescriptions ( name   )
                VALUES    ( 'cannabis');
        
        --          LINK USERS TO ACCOUNT INFO			--
INSERT INTO user_doctor (user_id, doctor_id)
		VALUES			(   4,       2     );
		
INSERT INTO user_patient (user_id, patient_id)
		VALUES			(   3,         2);
		
		--			LINK PATIENT WITH PRESCRIPTION		--
INSERT INTO patient_prescriptions ( prescription_id, patient_id)
		VALUES						( 2,                 2);
COMMIT;