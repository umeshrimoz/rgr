package in.co.rgr.app.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "inquiry")
public class Inquiry {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	private String mobile;
	private String subect;
	private String message;
	private int status;
	private int responced_by;
	private String remarks;
	private Date responce_date;
	private Date inquiry_date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getSubect() {
		return subect;
	}
	public void setSubect(String subect) {
		this.subect = subect;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getResponced_by() {
		return responced_by;
	}
	public void setResponced_by(int responced_by) {
		this.responced_by = responced_by;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Date getResponce_date() {
		return responce_date;
	}
	public void setResponce_date(Date responce_date) {
		this.responce_date = responce_date;
	}
	public Date getInquiry_date() {
		return inquiry_date;
	}
	public void setInquiry_date(Date inquiry_date) {
		this.inquiry_date = inquiry_date;
	}	
	
}
