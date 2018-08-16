package com.techelevator.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCPatientDAO implements PatientDAO{
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCPatientDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public long save(Patient newPatient) {
		String sqlInsertPatient = "INSERT INTO patient(first_name, last_name, address, city, state, zip, email, phone, insurance) VALUES (?,?,?,?,?,?,?,?,?) "+
								  "returning patient_id;";
		return jdbcTemplate.queryForObject(sqlInsertPatient, Long.class, newPatient.getFirstName(), newPatient.getLastName(), newPatient.getAddress(), newPatient.getCity()
							, newPatient.getState(), newPatient.getZip(), newPatient.getEmail(), newPatient.getPhone(), newPatient.getInsurance());
	}

	@Override
	public Patient getPatientInfoByUserName(String userName) {
		String sqlSearchForUsername ="SELECT * "+
				"FROM patient "+
				"JOIN user_patient ON patient.patient_id = user_patient.patient_id "+
				"JOIN app_user ON patient.patient_id = app_user.user_id "+
				"WHERE UPPER(user_name) = ? ";

				SqlRowSet user = jdbcTemplate.queryForRowSet(sqlSearchForUsername, userName.toUpperCase()); 
				Patient thisPatient = null;
				if(user.next()) {
					thisPatient = new Patient();
					thisPatient = mapRowToPatient(user);
				}

				return thisPatient;
	}
	
	public Patient mapRowToPatient(SqlRowSet user) {
		Patient thisPatient = new Patient();
		
		thisPatient.setPatientId(user.getLong("patient_id"));
		thisPatient.setFirstName(user.getString("first_name"));
		thisPatient.setLastName(user.getString("last_name"));
		thisPatient.setLastName(user.getString("address"));
		thisPatient.setLastName(user.getString("city"));
		thisPatient.setLastName(user.getString("state"));		
		thisPatient.setLastName(user.getString("zip"));
		thisPatient.setLastName(user.getString("email"));
		thisPatient.setLastName(user.getString("phone"));
		thisPatient.setInsurance(user.getString("insurance"));
		
		return thisPatient;
	}
	
	// SETS PATIENT ID TO RELATE TO USER ID IN DB
	@Override
	public void updatePatientRelatorId(long patientId, long userId) {
		String sqlUpdatePatientRelatorId = "UPDATE user_patient SET patient_id = ? "
				+ " WHERE user_patient.user_id = ?";
		jdbcTemplate.update(sqlUpdatePatientRelatorId, patientId, userId);
	}

}
