SELECT * FROM doctor;
SELECT * FROM medicine;
SELECT * FROM patient;
SELECT * FROM prescription;

--  Patients and Drs 
SELECT patient.patient_name, doctor.name
AS patient_doctor
FROM patient
JOIN doctor ON patient.doctor_id = doctor.id;

-- Prescription to Patient
SELECT patient.patient_name, doctor.name AS perscribing_dr, medicine.medicine AS perscribed_medicine
FROM prescription
JOIN patient ON prescription.patient_id = patient.id 
JOIN doctor ON prescription.prescribing_dr_id = doctor.id
JOIN medicine ON prescription.medicine_id = medicine.id;

-- 

SELECT *
FROM prescription
JOIN patient ON prescription.patient_id = patient.id ;

SELECT *
FROM patient
JOIN doctor ON patient.doctor_id = doctor.id
JOIN prescription ON patient.id = prescription.patient_id;

-- Got this
SELECT patient.patient_name, doctor.name, prescription.prescribing_dr_id, medicine_id
FROM patient
JOIN doctor ON patient.doctor_id = doctor.id
JOIN prescription ON patient.id = prescription.patient_id;



-- Working on this
SELECT patient.patient_name, doctor.name AS perscribing_dr, medicine.medicine AS perscribed_medicine
FROM patient
JOIN doctor ON patient.doctor_id = doctor.id
JOIN prescription ON patient.id = prescription.patient_id
JOIN doctor ON prescription.prescribing_dr_id = doctor.id
JOIN medicine ON prescription.medicine_id = medicine.id;

--