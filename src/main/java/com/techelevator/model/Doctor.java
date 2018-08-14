package com.techelevator.model;

public class Doctor {
	private Long doctorId;
	private String firstName;
	private String lastName;
	private String practice;
	
	/**
	 * @return the doctorId
	 */
	public Long getDoctorId() {
		return doctorId;
	}
	/**
	 * @param doctorId the doctorId to set
	 */
	public void setDoctorId(Long doctorId) {
		this.doctorId = doctorId;
	}
	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return the practice
	 */
	public String getPractice() {
		return practice;
	}
	/**
	 * @param practice the practice to set
	 */
	public void setPractice(String practice) {
		this.practice = practice;
	}
}
