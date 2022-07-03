CREATE TABLE doctor (id INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(255), perscription_id INT NOT NULL);
INSERT INTO doctor VALUES (id, "Dr Seuss");
INSERT INTO doctor VALUES (id, "Dr Who");
INSERT INTO doctor VALUES (id, "Dr Teeth");
INSERT INTO doctor VALUES (id, "Dr Frankenstein");
INSERT INTO doctor VALUES (id, "Dr Beat");
SELECT * FROM doctor;

CREATE TABLE medicine (id INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY, medicine VARCHAR(255) NOT NULL);
INSERT INTO medicine VALUES (id, "Laughter");
INSERT INTO medicine VALUES (id, "Actual Medicine");
INSERT INTO medicine VALUES (id, "Dancing");
INSERT INTO medicine VALUES (id, "Cats");
INSERT INTO medicine VALUES (id, "A spooful of sugar");
SELECT * FROM medicine;

CREATE TABLE patient (id INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY, patient_name VARCHAR(255)NOT NULL, doctor_id INT, FOREIGN KEY (doctor_id) REFERENCES doctor(id));
INSERT INTO patient VALUES (id, "Dom H", 1);
INSERT INTO patient VALUES (id, "Alex K", 2);
INSERT INTO patient VALUES (id, "Eddie V", 3);
INSERT INTO patient VALUES (id, "Gary M", 4);
INSERT INTO patient VALUES (id, "Josh F", 5);
INSERT INTO patient VALUES (id, "Karl E", 1);
INSERT INTO patient VALUES (id, "Adbel B", 2);
INSERT INTO patient VALUES (id, "Alex B", 3);
INSERT INTO patient VALUES (id, "Alex K", 4);
INSERT INTO patient VALUES (id, "Benny", 5);
INSERT INTO patient VALUES (id, "Christian W", 1);
INSERT INTO patient VALUES (id, "Gareth H", 2);
INSERT INTO patient VALUES (id, "Gwyl R", 3);
INSERT INTO patient VALUES (id, "James L", 4);
INSERT INTO patient VALUES (id, "John B", 5);
INSERT INTO patient VALUES (id, "Keisha C", 1);
INSERT INTO patient VALUES (id, "Ollie J", 2);
INSERT INTO patient VALUES (id, "Olly T", 3);
INSERT INTO patient VALUES (id, "Waiz A", 4);
INSERT INTO patient VALUES (id, "Wren T", 5);
INSERT INTO patient VALUES (id, "Elizabeth O T", 5);
INSERT INTO patient VALUES (id, "Kat A", 3);
SELECT * FROM patient;

CREATE TABLE prescription (id INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY, 
patient_id int, prescribing_dr_id int, medicine_id int, 
FOREIGN KEY (patient_id) REFERENCES patient(id), 
FOREIGN KEY (prescribing_dr_id) REFERENCES doctor(id),
FOREIGN KEY (medicine_id) REFERENCES medicine(id));
-- 
INSERT INTO prescription VALUES (id, 1, 2, 4);
INSERT INTO prescription VALUES (id, 2, 1, 5 );

INSERT INTO prescription VALUES (id, 3,3,5 );
INSERT INTO prescription VALUES (id, 4,4,1 );
INSERT INTO prescription VALUES (id, 5,3,2 );
INSERT INTO prescription VALUES (id, 6,4,3 );
INSERT INTO prescription VALUES (id, 7,5, 4 );
INSERT INTO prescription VALUES (id, 8,4, 1 );
INSERT INTO prescription VALUES (id, 9, 1, 3 );
INSERT INTO prescription VALUES (id, 10, 2, 1 );
INSERT INTO prescription VALUES (id, 11, 3, 2 );
INSERT INTO prescription VALUES (id, 12, 4, 1);
INSERT INTO prescription VALUES (id, 13, 3, 5);
INSERT INTO prescription VALUES (id, 14, 4, 2);
INSERT INTO prescription VALUES (id, 15, 2, 4);
INSERT INTO prescription VALUES (id, 16, 5, 3);
INSERT INTO prescription VALUES (id, 17, 5, 5);
INSERT INTO prescription VALUES (id, 18, 3, 3);
INSERT INTO prescription VALUES (id, 19, 2, 2);
INSERT INTO prescription VALUES (id, 20, 1, 1);
INSERT INTO prescription VALUES (id, 21, 4, 1);
INSERT INTO prescription VALUES (id, 22, 3, 2);

SELECT * FROM prescription;

-- drop table prescription;
-- drop table patient;
-- drop table medicine;
-- drop table doctor;


