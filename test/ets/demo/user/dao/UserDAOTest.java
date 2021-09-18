package ets.demo.user.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import ets.demo.user.model.User;

class UserDAOTest {

	private DriverManagerDataSource dataSource;
	private UserDAO dao;

	@BeforeEach
	void setup() {
		dataSource = new DriverManagerDataSource();
		// dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/kayit_defteri");
		dataSource.setUsername("murat");
		dataSource.setPassword("12345");

		dao = new UserDAOImpl(dataSource);
	}

	@Test
	void testAdd() {

		User user = new User("Mehmet Kaş", "BRh-", "05330156542", "Cumhuriyet Mh. Bursa");

		int result = dao.add(user);
		assertTrue(result > 0);

	}

	@Test
	void testUpdate() {
		User user = new User(4, "Mehmet Karakaş", "BRh-", "05330156542", "Cumhuriyet Mh. Bursa");

		int result = dao.update(user);
		assertTrue(result > 0);
	}

	@Test
	void testGet() {
		Integer id = 1;
		User user = dao.get(id);
		assertNotNull(user);
	}

	@Test
	void testDelete() {
		Integer id = 2;
		int result = dao.delete(id);
		assertTrue(result > 0);
	}

	@Test
	void testGetAll() {
		List<User> lu = dao.getAll();
		for (User u: lu) {
			System.out.println(u);
		}
		assertFalse(lu.isEmpty());
	}

}
