package com.techelevator.model;

import java.util.List;

public interface PatientDAO {

	public long save(Patient newPatient);

	public Patient getPatientInfoByUserName(String userName);

	public void updatePatientRelatorId(long patientId, long userId);

	public void deletePatientById(long patientId);

	public List<Patient> getAllPatients();

	public long getUserIdFromPatientId(long patientId);

	public void updatePatientInfo(String firstName, String lastName, String address, String city, String state, int zip,
			String email, String phone, String insurance, Long patientId);

	public long getPatientIdFromUserId(long userId);
}
