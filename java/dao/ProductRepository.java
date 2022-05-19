package dao;

import java.util.ArrayList;
import java.util.List;
import dto.Product;

public class ProductRepository {
	private List<Product> products = new ArrayList<>();

	public ProductRepository () {
		Product phone = new Product("P1234", "iphone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Retina HD display");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Samsung");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("P1235", "LG PC 노트북", 1500000);
		notebook.setDescription("4.7-inch, 1334X750 Retina HD display");
		notebook.setCategory("Smart Phone");
		notebook.setManufacturer("Samsung");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("New");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("4.7-inch, 1334X750 Retina HD display");
		tablet.setCategory("Smart Phone");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		
		products.add(phone);
		products.add(notebook);
		products.add(tablet);
	}
	
	public List<Product> getAllProducts() {
		return products;
	}
	
	// ID로 상품 찾기
	public Product getProductById(String productId) {
		return products.stream() //stream(): 리스트의 내용이 흘러감
				.filter((product) -> product.getProductId().equals(productId)) // 필요한것 거르기
				.findFirst() // 첫번째 것을
				.get(); // 얻음
	}
}
