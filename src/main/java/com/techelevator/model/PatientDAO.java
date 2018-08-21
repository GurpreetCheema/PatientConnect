package com.techelevator.model;

import java.util.List;

public interface PatientDAO {

	long save(Patient newPatient);

	Patient getPatientInfoByUserName(String userName);

	void updatePatientRelatorId(long patientId, long userId);

	void deletePatientById(long patientId);

	List<Patient> getAllPatients();

	long getUserIdFromPatientId(long patientId);
}
