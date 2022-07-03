--  Patients and Drs 
SELECT patient.patient_name, doctor.name
AS patient_doctor
FROM patient
JOIN doctor ON patient.doctor_id = doctor.id;

-- Prescription to Patient
-- patient.patient_name, doctor.name AS perscribing_dr, medicine.medicine AS perscribed_medicine
SELECT patient.patient_name, doctor.name AS perscribing_dr, medicine.medicine AS perscribed_medicine
FROM prescription
JOIN patient ON prescription.patient_id = patient.id 
JOIN doctor ON prescription.prescribing_dr_id = doctor.id
JOIN medicine ON prescription.medicine_id = medicine.id;

-- --------------------------------------------------------

SELECT patient.patient_name, doctor.name AS patients_dr, prescription.prescribing_dr_id, medicine.medicine
FROM patient
JOIN doctor ON patient.doctor_id = doctor.id
JOIN prescription ON patient.id = prescription.patient_id
JOIN medicine ON prescription.medicine_id = medicine.id;

-- --------------------------------------------------------
SELECT * FROM patient, doctor, prescription, medicine;
-- -------------------------------------------------------
SELECT *
FROM prescription
JOIN patient ON prescription.patient_id = patient.id 
JOIN doctor ON prescription.prescribing_dr_id = doctor.id
JOIN medicine ON prescription.medicine_id = medicine.id;
