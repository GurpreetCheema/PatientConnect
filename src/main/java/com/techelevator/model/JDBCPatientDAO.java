package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

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
				"JOIN app_user ON user_patient.user_id = app_user.user_id "+
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
		thisPatient.setAddress(user.getString("address"));
		thisPatient.setCity(user.getString("city"));
		thisPatient.setState(user.getString("state"));		
		thisPatient.setZip(user.getString("zip"));
		thisPatient.setEmail(user.getString("email"));
		thisPatient.setPhone(user.getString("phone"));
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

	@Override
	public long getUserIdFromPatientId(long patientId) {
		String sqlGetUserId = "SELECT user_id " +
							  "FROM user_patient " +
							  "WHERE patient_id = ?";
		
		SqlRowSet thisDoctorId = jdbcTemplate.queryForRowSet(sqlGetUserId, patientId);
		long currentPatientId = 0;
		if(thisDoctorId.next()) {
			currentPatientId = thisDoctorId.getLong("user_id");
		}
		
		return currentPatientId;
	}
	
	@Override
	public void deletePatientById(long patientId) {
		long userId = getUserIdFromPatientId(patientId);
		String sqlDeleteDoctorFromDoctor ="DELETE "+
							    			 "FROM patient " +
							    			 "WHERE patient_id = ?";
		jdbcTemplate.update(sqlDeleteDoctorFromDoctor, patientId);
		String sqlDeleteDoctorFromUserDoctor ="DELETE "+
   			 								 "FROM user_patient " +
   			 								 "WHERE patient_id = ?";
		jdbcTemplate.update(sqlDeleteDoctorFromUserDoctor, patientId);
		String sqlDeleteDoctorFromUserRole ="DELETE "+
   			 							   "FROM user_role " +
   			 							   "WHERE user_id = ?";
   		jdbcTemplate.update(sqlDeleteDoctorFromUserRole, userId);
		String sqlDeleteDoctorFromAppUser ="DELETE "+
   			 							   "FROM app_user " +
   			 							   "WHERE user_id = ?";
		jdbcTemplate.update(sqlDeleteDoctorFromAppUser, userId);
		
	}

	@Override
	public List<Patient> getAllPatients() {
		List<Patient> allPatients = new ArrayList<Patient>();
		String sqlGetAllPatients ="SELECT * "+
								"FROM patient;";

				SqlRowSet patients = jdbcTemplate.queryForRowSet(sqlGetAllPatients);
				while(patients.next()) {
					allPatients.add(mapRowToPatient(patients));
				}
		return allPatients;
	}

}
