package co.grandcircus.Lab2425GCCoffee.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import co.grandcircus.Lab2425GCCoffee.Dao.ProductDao;
import co.grandcircus.Lab2425GCCoffee.beans.Product;

@Component 
public class ProductDao {

	@Autowired
	private JdbcTemplate jdbc;
	
	
	public void addProduct(Product product) {
		String sql = "INSERT INTO `coffeeshopdb`.`product` "

				+ "(`name`, `description`, `quantity`, `price`) VALUES (?, ?, ?, ?)";
		jdbc.update(sql, product.getName(),product.getDescription(),product.getQuantity(),product.getPrice());
	
	}
	
	public Product findById(Long id) {
		String sql = "SELECT * FROM product WHERE id = ?";
		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(Product.class),id);
	}
	
	public List<Product> findAll(){
		
		String sql = "SELECT * FROM product";
		
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Product.class));
	}
	
}