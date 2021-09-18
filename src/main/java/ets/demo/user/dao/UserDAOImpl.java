package ets.demo.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import ets.demo.user.model.User;

public class UserDAOImpl implements UserDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	public UserDAOImpl(DataSource dataSource) {
		
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public int add(User user) {
		String sql = "INSERT INTO kayitlar (isim, kangrubu, ceptel, adres) VALUES(?, ?, ?, ?)";
				
		return jdbcTemplate.update(sql, user.getName(), user.getBloodGroup(), user.getTelephone(), user.getAddress());
	}

	@Override
	public int update(User user) {
		String sql = "UPDATE kayitlar SET isim=?, kangrubu=?, ceptel=?, adres=? WHERE id=?";
		
		
		return jdbcTemplate.update(sql, user.getName(), user.getBloodGroup(), user.getTelephone(), user.getAddress(), user.getId());
	}

	@Override
	public User get(Integer id) {
		String sql = "SELECT * FROM kayitlar WHERE id=" + id;
		
		ResultSetExtractor<User> extractor = new ResultSetExtractor<User>() {
			@Override
			public User extractData(ResultSet rs) throws SQLException, DataAccessException {
				if(rs.next()) {
					String name = rs.getString("isim");
					String bg = rs.getString("kangrubu");
					String tel = rs.getString("ceptel");
					String adr = rs.getString("adres");
					return new User(id, name, bg, tel, adr);
				}
				return null;
			}
		};
		
		return jdbcTemplate.query(sql, extractor);
	}

	@Override
	public int delete(Integer id) {
		String sql = "DELETE FROM kayitlar WHERE id=?";
		
		return jdbcTemplate.update(sql, id );
	}

	@Override
	public List<User> getAll() {
		String sql = "SELECT * FROM kayitlar";
		
		RowMapper<User> rowMapper = new RowMapper<User>() {
			
			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Integer id = rs.getInt("id");
				String name = rs.getString("isim");
				String bg = rs.getString("kangrubu");
				String tel = rs.getString("ceptel");
				String adr = rs.getString("adres");
				return new User(id, name, bg, tel, adr);
			}
		};
		
		return jdbcTemplate.query(sql, rowMapper);
	}

}
