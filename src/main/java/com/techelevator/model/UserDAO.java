package com.techelevator.model;

 public interface UserDAO {

	public void saveUser(String userName, String password);

	public boolean searchForUsernameAndPassword(String userName, String password);

	public void updatePassword(String userName, String password);

	public Object getUserByUserName(String userName);

	void insertUserIdInPatientRelator(long userId);

	void insertUserIdInDoctorRelator(long userId);

	long getUserIdByUsername(User newUser);

	void insertUserIdInUserRole(long userId, int role);

	long getRoleIdFromUserId(User user);

	Long getRoleFromUserLogin(String userName);

}
