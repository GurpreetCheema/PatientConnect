package com.techelevator.model;

import javax.sql.DataSource;

import org.bouncycastle.util.encoders.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.model.User;
import com.techelevator.security.PasswordHasher;

@Component
public class JDBCUserDAO implements UserDAO {

	private JdbcTemplate jdbcTemplate;
	private PasswordHasher hashMaster;

	@Autowired
	public JDBCUserDAO(DataSource dataSource, PasswordHasher hashMaster) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.hashMaster = hashMaster;
	}
	
	@Override
	public void saveUser(String userName, String password) {
		byte[] salt = hashMaster.generateRandomSalt();
		String hashedPassword = hashMaster.computeHash(password, salt);
		String saltString = new String(Base64.encode(salt));
		
		jdbcTemplate.update("INSERT INTO app_user(user_name, password, salt) VALUES (?, ?, ?)",
				userName, hashedPassword, saltString);
	}

	@Override
	public boolean searchForUsernameAndPassword(String userName, String password) {
		String sqlSearchForUser = "SELECT * "+
							      "FROM app_user "+
							      "WHERE UPPER(user_name) = ? ";
		
		SqlRowSet user = jdbcTemplate.queryForRowSet(sqlSearchForUser, userName.toUpperCase());
		if(user.next()) {
			String dbSalt = user.getString("salt");
			String dbHashedPassword = user.getString("password");
			String givenPassword = hashMaster.computeHash(password, Base64.decode(dbSalt));
			return dbHashedPassword.equals(givenPassword);
		} else {
			return false;
		}
	}

	@Override
	public void updatePassword(String userName, String password) {
		jdbcTemplate.update("UPDATE app_user SET password = ? WHERE user_name = ?", password, userName);
	}
	
//	SETS USER ID IN RELATOR DB
	@Override
	public void insertUserIdInPatientRelator(long userId) {
		String sqlUserIdInRelator = "INSERT INTO user_patient(user_id) " + "        VALUES (?);";
		jdbcTemplate.update(sqlUserIdInRelator, userId);
	}

	@Override
	public void insertUserIdInDoctorRelator(long userId) {
		String sqlUserIdInRelator = "INSERT INTO user_doctor(user_id) " + "        VALUES (?);";
		jdbcTemplate.update(sqlUserIdInRelator, userId);
	}

	@Override
	public long getRoleIdFromUserId(User user) {
		long userId = getUserIdByUsername(user);
		
		String sqlSearchForUserId ="SELECT role_id "+
				"FROM user_role "+
				"WHERE user_id = ? ";

				SqlRowSet userResults = jdbcTemplate.queryForRowSet(sqlSearchForUserId, userId); 
				long roleId = 0;
				if(userResults.next()) {
					roleId = userResults.getLong("role_id");
				}
				
		return roleId;
	}
	
	@Override
	public Object getUserByUserName(String userName) {
		String sqlSearchForUsername ="SELECT * "+
		"FROM app_user "+
		"WHERE UPPER(user_name) = ? ";

		SqlRowSet user = jdbcTemplate.queryForRowSet(sqlSearchForUsername, userName.toUpperCase()); 
		User thisUser = null;
		if(user.next()) {
			thisUser = new User();
			thisUser.setUserId(user.getLong("user_id"));
			thisUser.setUserName(user.getString("user_name"));
			thisUser.setPassword(user.getString("password"));
		}

		return thisUser;
	}
	
	@Override
	public long getUserIdByUsername(User newUser) {
		String sqlSearchForUserId ="SELECT user_id "+
				"FROM app_user "+
				"WHERE UPPER(user_name) = ? ";

				SqlRowSet user = jdbcTemplate.queryForRowSet(sqlSearchForUserId, newUser.getUserName().toUpperCase()); 
				long userId = 0;
				if(user.next()) {
					userId = user.getLong("user_id");
				}
				
		return userId;
	}
	
	@Override
	public void insertUserIdInUserRole(long userId, int role) {
		String sqlUserIdInRelator = "INSERT INTO user_role(user_id, role_id) VALUES (?, ?);";
		jdbcTemplate.update(sqlUserIdInRelator, userId, role);
	}
}
