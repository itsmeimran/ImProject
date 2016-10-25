package com.niit.Edevice;

public interface UserDAO {
	public void insertUser(User user);
	public User getUserDetails(String email);
}