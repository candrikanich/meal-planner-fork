package com.techelevator.model.DAO;

import com.techelevator.model.User;

public interface UserDAO {

	public void saveUser(String userName, String password);

	public User searchForUsernameAndPassword(String userName, String password);

	public void updatePassword(String userName, String password);

	public int getUserIdByUsername(String username);
}
