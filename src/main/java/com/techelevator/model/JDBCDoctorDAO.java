package com.techelevator.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class JDBCDoctorDAO implements DoctorDAO{
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCDoctorDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public void save(Doctor newDoctor) {
		String sqlInsertDoctor = "INSERT INTO doctor(firstName, lastName, practice) VALUES (?,?,?);";
		jdbcTemplate.update(sqlInsertDoctor, newDoctor.getFirstName(), newDoctor.getLastName(), newDoctor.getPractice());
	}

}
