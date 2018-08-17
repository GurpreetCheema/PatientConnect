-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************


BEGIN;

			--				CREATES ADMINISTRATOR						--
			
INSERT INTO  app_user (user_id,    user_name,          			password, 						salt)
	VALUES			  (1,      'ScottStappMarlins1', 'nET90D5eo/6JeEM2JFXTbA==', 'TP6cOt57Q85KuL5tKoPrgb0Us4hVjZA5g73yCcrfx1D9PmtPehtracdsh5lopDgwigQzyVopSzlQSfD02EXAq9Qhjq594zdeCujOHq+R2084qRYdIKvQAwT6UKW8fZRMWXGQCJYVF7phwAcryvRl+m1gfqJtPE8T/6QxoQNLEKA=');

	
            --            CREATES ROLE IDs 1==patient, 2==doctor, 3==administrator                  --

INSERT INTO role (role_id, create_page, view_page, update_page, delete_page)
        VALUES   ( 1,      true,         true,       false,       false      );
        
INSERT INTO role (role_id, create_page, view_page, update_page, delete_page)
        VALUES   ( 2,      true,         true,       true,       false      );
        
INSERT INTO role (role_id, create_page, view_page, update_page, delete_page)
        VALUES   ( 3,      true,         true,       true,       true      );
        
        --		CONNECTS ADMIN WITH ROLE					--
        INSERT INTO user_role (user_id, role_id)
	VALUES			  (   1,       3   );
        

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