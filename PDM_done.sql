
-- Create 
CREATE TABLE patient_dr
SELECT patient.id, patient.patient_name, doctor.name AS patient_doctor
FROM patient
JOIN doctor ON patient.doctor_id = doctor.id;

SELECT * FROM patient_dr;

-- 

-- patient.patient_name, doctor.name AS perscribing_dr, medicine.medicine AS perscribed_medicine
CREATE TABLE patient_perscription
SELECT patient.id,patient.patient_name, doctor.name AS perscribing_dr, medicine.medicine AS perscribed_medicine
FROM prescription
JOIN patient ON prescription.patient_id = patient.id 
JOIN doctor ON prescription.prescribing_dr_id = doctor.id
JOIN medicine ON prescription.medicine_id = medicine.id;
SELECT * FROM patient_perscription;

-- 
SELECT *
FROM patient_dr
JOIN patient_perscription ON patient_perscription.id = patient_dr.id ;

CREATE TABLE patient_perscription_full
SELECT patient_dr.id, patient_dr.patient_name, patient_dr.patient_doctor,
patient_perscription.perscribing_dr, patient_perscription.perscribed_medicine
FROM patient_dr
JOIN patient_perscription ON patient_perscription.id = patient_dr.id ;
SELECT * FROM patient_perscription_full;
