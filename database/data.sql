-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************


BEGIN;

			--				CREATES ADMINISTRATOR AND DOCTORS			    						--
			
INSERT INTO  app_user (user_name,          			password, 						salt)
	VALUES			  ('ScottStappMarlins1', 'nET90D5eo/6JeEM2JFXTbA==', 'TP6cOt57Q85KuL5tKoPrgb0Us4hVjZA5g73yCcrfx1D9PmtPehtracdsh5lopDgwigQzyVopSzlQSfD02EXAq9Qhjq594zdeCujOHq+R2084qRYdIKvQAwT6UKW8fZRMWXGQCJYVF7phwAcryvRl+m1gfqJtPE8T/6QxoQNLEKA=');

INSERT INTO  app_user (user_name,          			password, 						salt)
	VALUES			  ('MantisToboggan', 'bPbhHxAX9jV22p20y4EpKQ==', '37Ihpo3vwev7e5yFuOkTpGnaKd77U1O6ayentnnfuKoEWLczbx8LCy+OhH3gFCtqtAgneNo4M1lRjZRqLa1vx48OPVRYMll2rd0QRmnGGRUCkVgz7+LB4Ix6vull+1j75kAVGH6hf+eiCgiSzMBRsCeCAiiA5vuFmSnEDeZusHo=');

INSERT INTO  app_user (user_name,          			password, 						salt)
	VALUES			  ('JackKev', 'XoJ9pVC8YKQQ/cjT02/KzA==', 'JoTWHC8DPYG8Cc/tiawAkdzY6D9oy2ntKZ44/knZ65KhXKBMzp4hZ63bhAAYBugRDng8Ch+Je40+NVPobXH84pYaWJVailok5wm0wTGg2Rri9Z0x1WsO+j5zcemyguNmEXtY/0KYT6oFhW7t9rELEv8HiejHdFb4Up4oPKSv5tU=');

INSERT INTO  app_user (user_name,          			password, 						salt)
	VALUES			  ('BHooks1', 'uJptoESd52SjgpXDGAjSqQ==', 'EXst4lDPl4JUDzNEua4KEXT1QF3nn1aTwKwDnaNFT8tPxilTOq8Kni8fd6KQ+Q9svIgs+4t521Vv/La08jG6Y4mzb7OKKJ85J7NtIvLEGHLkhaJ7eVaa43Hv2/PHMEYVMNn8AHLmAu23eqv5MF7DAALmHpsvhbllv488m4xJ07Y=');

	
            --            CREATES ROLE IDs 1==patient, 2==doctor, 3==administrator                  --

INSERT INTO role (role_id, create_page, view_page, update_page, delete_page)
        VALUES   ( 1,      true,         true,       false,       false      );
        
INSERT INTO role (role_id, create_page, view_page, update_page, delete_page)
        VALUES   ( 2,      true,         true,       true,       false      );
        
INSERT INTO role (role_id, create_page, view_page, update_page, delete_page)
        VALUES   ( 3,      true,         true,       true,       true      );
        
        --		CONNECTS USER WITH ROLE					--
INSERT INTO user_role(user_id, role_id)
	VALUES			  (   1,       3   );
	
INSERT INTO user_role(user_id, role_id)
	VALUES				 (2,         2);
	
INSERT INTO user_role(user_id, role_id)
	VALUES				 (3,         2);
	
INSERT INTO user_role(user_id, role_id)
	VALUES				 (4,         2);
	
		--        CREATES BASE DOCTORS					--
INSERT INTO doctor(first_name, last_name, practice)
	VALUES		  ('Mantis',     'Toboggan',  'Family Physician');
	
INSERT INTO doctor(first_name, last_name, practice)
	VALUES		  ('Jack',     'Kevorkian',  'Hospice and Palliative Medicine Specialist');
	
INSERT INTO doctor(first_name, last_name, practice)
	VALUES		  ('Barbara',     'Hooks',  'Family Physician');
	
        --		CONNECTS DOCTOR WITH USER ID				--
INSERT INTO user_doctor(user_id, doctor_id)
	VALUES				 (2,         1);
	
INSERT INTO user_doctor(user_id, doctor_id)
	VALUES				 (3,         2);
	
INSERT INTO user_doctor(user_id, doctor_id)
	VALUES				 (4,         3);        

        --			PRESCRIPTIONS						--
        
INSERT INTO prescriptions ( name   )
                VALUES    ( 'Cannabis');
                
INSERT INTO prescriptions ( name   )
                VALUES    ( 'Flinstone Vitamins');
                
INSERT INTO prescriptions ( name   )
                VALUES    ( 'Naproxin');
                
INSERT INTO prescriptions ( name   )
                VALUES    ( 'Methocarbamol');
                
INSERT INTO prescriptions ( name   )
                VALUES    ( 'Vicodin');
                
INSERT INTO prescriptions ( name   )
                VALUES    ( 'Ammodium');
                
INSERT INTO prescriptions ( name   )
                VALUES    ( 'Prednisone');                
        
COMMIT;