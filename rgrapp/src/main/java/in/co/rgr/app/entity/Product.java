package in.co.rgr.app.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {
	@Id @GeneratedValue(strategy = GenerationType.AUTO) private int id;
	@Column(nullable = false, unique = true)
	private String ptoduct_code;
	@Column(nullable = false)
	private String product_category;
	@Column(nullable = false)
	private String product_name;
	@Column(nullable = false)
	private String product_description;
	private String product_price;
	@Column(nullable = false)
	private String min_order_qty;
	private String product_ing_path;
	@Column(name = "status", nullable = false, columnDefinition = "int default 0") 
	private String status;
	private String remarks;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPtoduct_code() {
		return ptoduct_code;
	}
	public void setPtoduct_code(String ptoduct_code) {
		this.ptoduct_code = ptoduct_code;
	}
	public String getProduct_category() {
		return product_category;
	}
	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	public String getMin_order_qty() {
		return min_order_qty;
	}
	public void setMin_order_qty(String min_order_qty) {
		this.min_order_qty = min_order_qty;
	}
	public String getProduct_ing_path() {
		return product_ing_path;
	}
	public void setProduct_ing_path(String product_ing_path) {
		this.product_ing_path = product_ing_path;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
		
}
