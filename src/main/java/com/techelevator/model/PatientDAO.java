package com.techelevator.model;

public interface PatientDAO {

	long save(Patient newPatient);

	Patient getPatientInfoByUserName(String userName);

	void updatePatientRelatorId(long patientId, long userId);
}
