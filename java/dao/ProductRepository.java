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
	
	// ID濡� �긽�뭹 李얘린
	public Product getProductById(String productId) {
		return products.stream() //stream(): 由ъ뒪�듃�쓽 �궡�슜�쓣 �쓽�젮蹂대궦�떎
				.filter((product) -> product.getProductId().equals(productId)) // 洹몄쨷 �븘�슂�븳嫄곕�� 嫄곕Ⅴ湲�
				.findFirst() // 泥ル쾲吏� 寃껋쓣
				.get(); // �뼸�쓬
	}
}
