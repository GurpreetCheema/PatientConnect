-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

INSERT INTO doctor(first_name, last_name, practice)
     VALUES       ('Mantis',     'Toboggan',  'Oncology');
    
INSERT INTO patient(first_name, last_name, address    , city,     state, zip  , email, phone)
	 VALUES        ('Test',       'Testerson', '123test ln.', 'testville', 'OH',   12345, 'test@test.com', '123-456-7890');

COMMIT;