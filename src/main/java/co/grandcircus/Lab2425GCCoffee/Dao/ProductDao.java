package co.grandcircus.Lab2425GCCoffee.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.Lab2425GCCoffee.Dao.ProductDao;
import co.grandcircus.Lab2425GCCoffee.entity.Product;

@Repository
public class ProductDao {

//	@PersistenceContext
//	private EntityManager em;
	
	@Autowired
	private JdbcTemplate jdbc;
	
	
	public List<Product> findAll(){
		String sql = "SELECT * FROM product";
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Product.class));
	}
	
	public void addProduct(Product product) {

		String sql = "INSERT INTO product (name, description, quantity, price) VALUES (?, ?, ?, ?);";

		jdbc.update(sql, product.getName(),  product.getDescription(), product.getQuantity(),

				product.getPrice());
	}


	
	public Product findById(Long id) {
		String sql = "SELECT * FROM product WHERE id = ?";

		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(Product.class), id);
	}
	
	public Product findByName(String name) {
		String sql = "SELECT id FROM product WHERE name = ?";

		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(Product.class), name);
	}
	
	public List<String> findNames() {

		String sql = "SELECT DISTINCT name FROM product";

		return jdbc.queryForList(sql, String.class);

	}

	public void edit(Product prod) {
		String sql = "UPDATE product SET  name=?, description=?, quantity=?, price=? WHERE id=?";

		jdbc.update(sql,  prod.getName(), prod.getDescription(), prod.getQuantity(),

				prod.getPrice(), prod.getId());
	}
	
	public void delete(Long id) {

		String sql = "DELETE FROM product WHERE id = ?";

		jdbc.update(sql, id);

	}
	
}