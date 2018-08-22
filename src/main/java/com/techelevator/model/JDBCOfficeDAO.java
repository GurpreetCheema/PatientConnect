package com.techelevator.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

public class JDBCOfficeDAO implements OfficeDAO{
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCOfficeDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public Office getOfficeInfo() {
		Office newOffice = new Office();
		String sqlGetOffice = "SELECT * "+
							 "FROM office;";
		
		SqlRowSet location = jdbcTemplate.queryForRowSet(sqlGetOffice);
		if(location.next()) {
			newOffice
		}
		
		return newOffice;
	}
	
	@Override
	public long update(Office newOffice) {
		String sqlUpdateOffice = "UPDATE office SET "+
								  "returning patient_id;";
		return jdbcTemplate.update(sqlUpdateOffice,  ;
	}
}