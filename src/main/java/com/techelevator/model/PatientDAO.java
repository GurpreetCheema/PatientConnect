package com.techelevator.model;

import java.util.List;

public interface PatientDAO {

	public long save(Patient newPatient);

	public Patient getPatientInfoByUserName(String userName);

	public void updatePatientRelatorId(long patientId, long userId);

	public void deletePatientById(long patientId);

	public List<Patient> getAllPatients();

	public long getUserIdFromPatientId(long patientId);

	public void updatePatientInfo(Patient update, Long patientId);

	public long getPatientIdFromUserId(long userId);
}
