package co.grandcircus.Lab2425GCCoffee.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.Lab2425GCCoffee.entity.Users;

@Repository
public class UsersDao {

	@Autowired
	private JdbcTemplate jdbc;
	
	
	public void addUser( Users user) {
		
		String sql = "INSERT INTO `coffeeshopdb`.`users` (`First_Name`, `Last_Name`, `Email`, `Phone_Number`, `Password`) VALUES (?,?,?,?,?)";
		
		jdbc.update(sql, user.getFirstName(),user.getLastName(),user.getEmail(),user.getPhoneNumber(),user.getPassword());
		
	}
	
	public Users findById(Long id) {
		String sql = "SELECT * FROM Users WHERE id =? ";
		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(Users.class));
	}
	
}