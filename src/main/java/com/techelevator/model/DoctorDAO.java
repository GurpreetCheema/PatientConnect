package com.techelevator.model;


public interface DoctorDAO {

	public void save(Doctor newDoctor);

	void updateDoctorRelatorId(long doctorId, long userId);

}
