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
			newOffice.setOfficeId(location.getInt("office_id"));;
			newOffice.setName(location.getString("name"));
			newOffice.setAddress(location.getString("address"));
			newOffice.setCity(location.getString("city"));
			newOffice.setState(location.getString("state"));
			newOffice.setZip(location.getInt("zip"));
			newOffice.setPhone(location.getString("phone"));
		}
		
		return newOffice;
	}
	
	@Override
	public void update(Office newOffice) {
		String sqlUpdateOffice = "UPDATE office SET name = ?, address = ?, city = ?, state = ?, zip = ?, phone = ?"+
								  "WHERE office_id = 1;";
		jdbcTemplate.update(sqlUpdateOffice, newOffice.getName(), newOffice.getAddress(), newOffice.getCity(), newOffice.getState(), newOffice.getZip(), newOffice.getPhone());
	}
}
