package in.co.rgr.app.serviceImpl;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import in.co.rgr.app.common.SaltEncryptorOrDecryptor;
import in.co.rgr.app.entity.Login;

public class LoginServiceImpl {

	Configuration configuration = new Configuration().configure();
	SessionFactory sessionFactory = configuration.buildSessionFactory();
	Session session = null;
	Transaction transaction = null;

	public boolean chkAuth(String user, String pass) {
		boolean res = false;
		try {			
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Login where username=:username and password=:pass");
			query.setParameter("username", user);
			query.setParameter("pass", SaltEncryptorOrDecryptor.encrypt(pass));
			Login u = (Login) query.uniqueResult();
			if (u != null) {
				res = true;
				System.out.println("User: " + u.getUsername());
			} else {
				System.out.println("User: err" );
				res = false;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("error");
		}
		return res;
	}

	public boolean add(String user, String pass) {
		boolean res = false;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			Login l = new Login();
			l.setUsername("jh");
			l.setPassword("jhgj");
			session.save(l);
			transaction.commit();
			System.out.println("\n\n Details Added \n");
			res = true;
		} catch (HibernateException e) {
			System.out.println(e.getMessage());
			System.out.println("error");
		}
		return res;
	}

}
