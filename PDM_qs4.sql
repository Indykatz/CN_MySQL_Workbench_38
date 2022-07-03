select * from patient_perscription_full;

select * from patient_perscription_full
where patient_perscription_full.perscribed_medicine = "Laughter";

select * from patient_perscription_full
where patient_perscription_full.perscribed_medicine = "Cats";

select * from patient_perscription_full
where patient_perscription_full.patient_doctor = "Dr Teeth";

select * from patient_perscription_full
where patient_perscription_full.perscribing_dr = "Dr Teeth" and patient_perscription_full.patient_doctor = "Dr Teeth";

select * from patient_perscription_full
where patient_perscription_full.perscribing_dr = patient_perscription_full.patient_doctor;

select * from patient_perscription_full
where patient_perscription_full.patient_name = "Kat A";