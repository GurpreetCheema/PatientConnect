package com.techelevator.model;

public interface PatientDAO {

	void save(Patient newPatient);

	Object getPatientInfoByUserName(String userName);
}
