package productcrudapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import jakarta.transaction.Transactional;
import productcrudapp.model.Product;

@Component
public class ProductDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.save(product);
	}
	
	public List<Product> getProducts(){
		List<Product> li=this.hibernateTemplate.loadAll(Product.class);
		return li;
	}
	
	@Transactional
	public void deleteProduct(int pid) {
		Product p = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(p);
	}
	
	
	public Product getProduct(int pid) {
		Product product = this.hibernateTemplate.get(Product.class, pid);
		return product;
	}
	
	
	

}
