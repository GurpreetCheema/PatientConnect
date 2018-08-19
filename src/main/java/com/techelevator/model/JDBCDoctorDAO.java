package com.techelevator.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
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
	@Override
	public Doctor getDoctorInfoByUserName(String userName) {
		String sqlSearchForUsername ="SELECT * "+
				"FROM doctor "+
				"JOIN user_doctor ON doctor.doctor_id = user_doctor.doctor_id "+
				"JOIN app_user ON user_doctor.user_id = app_user.user_id "+
				"WHERE UPPER(user_name) = ? ";

				SqlRowSet user = jdbcTemplate.queryForRowSet(sqlSearchForUsername, userName.toUpperCase()); 
				Doctor thisDoctor = null;
				if(user.next()) {
					thisDoctor = new Doctor();
					thisDoctor = mapRowToDoctor(user);
				}

				return thisDoctor;
	}
	
	public Doctor mapRowToDoctor(SqlRowSet user) {
		Doctor thisDoctor = new Doctor();
		
		thisDoctor.setDoctorId(user.getLong("doctor_id"));
		thisDoctor.setFirstName(user.getString("first_name"));
		thisDoctor.setLastName(user.getString("last_name"));
		thisDoctor.setPractice(user.getString("practice"));
		
		return thisDoctor;
	}

}
