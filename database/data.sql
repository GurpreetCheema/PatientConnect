-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************


BEGIN;

        --            CREATES ROLE IDs 1==patient, 2==doctor, 3==administrator                  --

INSERT INTO role (role_id, create_page, view_page, update_page, delete_page)
        VALUES   ( 1,      true,         true,       false,       false      );
        
INSERT INTO role (role_id, create_page, view_page, update_page, delete_page)
        VALUES   ( 2,      true,         true,       true,       false      );
        
INSERT INTO role (role_id, create_page, view_page, update_page, delete_page)
        VALUES   ( 3,      true,         true,       true,       true      );
        
               --           TEST VALUES                --

INSERT INTO doctor(first_name, last_name, practice)
     VALUES       ('Mantis',     'Toboggan',  'Oncology');
    
INSERT INTO patient(first_name, last_name, address    , city,     state, zip  , email, phone)
	 VALUES        ('Test',       'Testerson', '123test ln.', 'testville', 'OH',   12345, 'test@test.com', '123-456-7890');

INSERT INTO office(name,    address,          city,    state, zip,       phone)
        VALUES    ('test', '123 test ln.', 'testville', 'OH', 12345, '123-456-7890'); 
        
INSERT INTO prescriptions ( name   )
                VALUES    ( 'cannabis');
        
        --      TEST USER ACCOUNTS                      --

INSERT INTO app_user(user_name,    password,      role, salt)
        VALUES      ('test_admin', 'PartyParrot123!@#', 3, 'salt');
        
INSERT INTO app_user(user_name,    password,        role, salt)
        VALUES      ('test_patient', 'PartyParrot123!@#', 1, 'salt');
        
INSERT INTO app_user(user_name,      password,     role, salt)
        VALUES      ('test_doctor', 'PartyParrot123!@#', 2, 'salt');
        
        --              TEST USERS TO ROLES             --
        
INSERT INTO user_role ( user_id, role_id)
        VALUES        (  1     ,   3    );
        
INSERT INTO user_role ( user_id, role_id)
        VALUES        (  2    ,   1     );
        
INSERT INTO user_role ( user_id, role_id)
        VALUES        (  3    ,   2     );

COMMIT;