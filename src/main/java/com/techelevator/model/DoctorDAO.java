package com.techelevator.model;


public interface DoctorDAO {

	public long save(Doctor newDoctor);

	void updateDoctorRelatorId(long doctorId, long userId);

	Doctor getDoctorInfoByUserName(String userName);

}
