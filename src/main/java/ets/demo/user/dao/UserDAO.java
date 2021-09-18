package ets.demo.user.dao;

import java.util.List;

import ets.demo.user.model.User;

public interface UserDAO {
	public int add(User user);

	public int update(User user);

	public User get(Integer id);

	public int delete(Integer id);

	public List<User> getAll();

}
