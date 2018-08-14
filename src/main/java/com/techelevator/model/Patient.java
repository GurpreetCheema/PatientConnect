package com.techelevator.model;

public class Patient {
	public int patient_id;
	public String patientLastName;
	public String patientFirstName;
	public String patient_prescriptions;
	public String patientAddress;
	public String patientCity;
	public String patientState;
	public String patientPhone;
	public String patientEmail;
	public String patientReview;
	public int getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(int patient_id) {
		this.patient_id = patient_id;
	}
	public String getPatientLastName() {
		return patientLastName;
	}
	public void setPatientLastName(String patientLastName) {
		this.patientLastName = patientLastName;
	}
	public String getPatientFirstName() {
		return patientFirstName;
	}
	public void setPatientFirstName(String patientFirstName) {
		this.patientFirstName = patientFirstName;
	}
	
	public String getPatient_prescriptions() {
		return patient_prescriptions;
	}
	public void setPatient_prescriptions(String patient_prescriptions) {
		this.patient_prescriptions = patient_prescriptions;
	}
	public String getPatientAddress() {
		return patientAddress;
	}
	public void setPatientAddress(String patientAddress) {
		this.patientAddress = patientAddress;
	}
	public String getPatientCity() {
		return patientCity;
	}
	public void setPatientCity(String patientCity) {
		this.patientCity = patientCity;
	}
	public String getPatientState() {
		return patientState;
	}
	public void setPatientState(String patientState) {
		this.patientState = patientState;
	}
	public String getPatientPhone() {
		return patientPhone;
	}
	public void setPatientPhone(String patientPhone) {
		this.patientPhone = patientPhone;
	}
	public String getPatientEmail() {
		return patientEmail;
	}
	public void setPatientEmail(String patientEmail) {
		this.patientEmail = patientEmail;
	}
	public String getPatientReview() {
		return patientReview;
	}
	public void setPatientReview(String patientReview) {
		this.patientReview = patientReview;
	}
	
}