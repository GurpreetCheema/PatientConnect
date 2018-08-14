package com.techelevator.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class JDBCPatientDAO implements PatientDAO{
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCPatientDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public void save(Patient newPatient) {
		String sqlInsertPatient = "INSERT INTO patient(firstName, lastName, address, city, state, zip, email, phone, insurance) VALUES (?,?,?,?,?,?,?,?,?);";
		jdbcTemplate.update(sqlInsertPatient, newPatient.getFirstName(), newPatient.getLastName(), newPatient.getAddress(), newPatient.getCity()
							, newPatient.getState(), newPatient.getZip(), newPatient.getEmail(), newPatient.getPhone(), newPatient.getInsurance());
	}

}
