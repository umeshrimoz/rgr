package in.co.rgr.app.serviceImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import in.co.rgr.app.entity.Inquiry;

public class InquiryServiceImpl {

	Configuration configuration = new Configuration().configure();
	SessionFactory sessionFactory = configuration.buildSessionFactory();
	Session session = null;
	Transaction transaction = null;

	public boolean saveInquiry(String name, String mobile, String email, String title, String msg) {
		boolean res = false;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			Inquiry inquiry = new Inquiry();
			inquiry.setName(name);
			inquiry.setMobile(mobile);
			inquiry.setEmail(email);
			inquiry.setSubect(title);
			inquiry.setMessage(msg);
			session.save(inquiry);
			transaction.commit();
			session.close();
			res = true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("error");
			res = false;
		}
		return res;
	}

}
