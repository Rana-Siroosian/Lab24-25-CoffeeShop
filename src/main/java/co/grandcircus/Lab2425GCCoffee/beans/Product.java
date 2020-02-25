package co.grandcircus.Lab2425GCCoffee.beans;

public class Product {
	
	private Long id;
	private String name;
	private Double price;
	private String description;
	private String quantity;
	
	public Product() {
		super();
	}
	
	
	public Product(String name, Double price, String description, String quantity) {
		super();
		this.name = name;
		this.price = price;
		this.description = description;
		this.quantity = quantity;
	}


	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public void setPrice(Double price) {
		this.price = price;
	}
	
	public Double getPrice() {
		return price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


//	@Override
//	public String toString() {
//		return "Product [id=" + id + ", name=" + name + ", price=" + price + ", description=" + description
//				+ ", quantity=" + quantity + "]";
//	}


	
}
