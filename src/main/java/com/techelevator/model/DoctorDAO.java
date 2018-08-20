package com.techelevator.model;

import java.util.List;

public interface DoctorDAO {

	public long save(Doctor newDoctor);

	void updateDoctorRelatorId(long doctorId, long userId);

	Doctor getDoctorInfoByUserName(String userName);

	List<Doctor> getAllDoctors();

	void deleteDoctorById(long doctorId);

	long getUserIdFromDoctorId(long doctorId);

}
