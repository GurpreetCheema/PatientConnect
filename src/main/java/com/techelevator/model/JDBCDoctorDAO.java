package com.techelevator.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JDBCDoctorDAO implements DoctorDAO{
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCDoctorDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public long save(Doctor newDoctor) {
		String sqlInsertDoctor = "INSERT INTO doctor(first_name, last_name, practice) VALUES (?,?,?) returning doctor_id;";
		return jdbcTemplate.queryForObject(sqlInsertDoctor, Long.class, newDoctor.getFirstName(), newDoctor.getLastName(), newDoctor.getPractice());
	}

	// SETS PATIENT ID TO RELATE TO USER ID IN DB
	@Override
	public void updateDoctorRelatorId(long doctorId, long userId) {
		String sqlUpdatePatientRelatorId = "UPDATE user_doctor SET doctor_id = ? " + "	WHERE user_doctor.user_id = ?";
		jdbcTemplate.update(sqlUpdatePatientRelatorId, doctorId, userId);
	}

}
