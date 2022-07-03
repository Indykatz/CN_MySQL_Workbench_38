-- Got this - patient name | patient dr  | prescribing dr id | medcine id
SELECT patient.patient_name, doctor.name AS patient_dr, prescription.prescribing_dr_id, medicine_id
FROM patient
JOIN doctor ON patient.doctor_id = doctor.id
JOIN prescription ON patient.id = prescription.patient_id;

-- Also got this - patient name | patient dr | prescribing dr id | medcine name
SELECT patient.patient_name, doctor.name AS patients_dr, prescription.prescribing_dr_id, medicine.medicine
FROM patient
JOIN doctor ON patient.doctor_id = doctor.id
JOIN prescription ON patient.id = prescription.patient_id
JOIN medicine ON prescription.medicine_id = medicine.id;