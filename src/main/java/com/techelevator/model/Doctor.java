package com.techelevator.model;

public class Doctor {
	public String docFirstName;
	public String docLastName;
	public String speciality;
	public String location;
	public Boolean availability;
	public String phoneNumber;
	public String prescription;
	public String docEmail;
	
	public String getDocFirstName() {
		return docFirstName;
	}
	public void setDocFirstName(String docFirstName) {
		this.docFirstName = docFirstName;
	}
	public String getDocLastName() {
		return docLastName;
	}
	public void setDocLastName(String docLastName) {
		this.docLastName = docLastName;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Boolean getAvailability() {
		return availability;
	}
	public void setAvailability(Boolean availability) {
		this.availability = availability;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPrescription() {
		return prescription;
	}
	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}
	public String getDocEmail() {
		return docEmail;
	}
	public void setDocEmail(String docEmail) {
		this.docEmail = docEmail;
	}

}
