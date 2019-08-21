package Daos;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import Entities.Client;

@Repository(value="ClientDao")
@Transactional
public class ClientDaoImpl implements ClientDao{

	@Autowired
	SessionFactory sf;
	public boolean addClient(Client c) {
		
		try {
			
			Session session=sf.getCurrentSession();
			
			session.save(c);
			return true;
			
		}
		catch(Exception e) {e.printStackTrace();}
		
		return false;
	}


	public Client viewClient(int id) {
		
		try {
			Session session=sf.getCurrentSession();
			Client cat=session.get(Client.class, id);
			
			return cat;
			
			}
			catch(Exception e) {e.printStackTrace();}
			return null;
	}

	public List<Client> getAllClient() {
		
		try {
			Session session=sf.getCurrentSession();
			Query q=session.createQuery("from Category");
			return q.getResultList();
			
		}
		catch(Exception e) {e.printStackTrace();}
		return null;
	}

	public boolean delClient(Client c) {
		
		try {
			Session session=sf.getCurrentSession();
				session.delete(c);
				return true;
			
			}
			catch(Exception e) {e.printStackTrace();}
			
		
		return false;
	}

	public boolean updateClient(Client c) {
		try {
			Session session=sf.getCurrentSession();
			
				session.update(c);
				return true;
			}
					
		catch(Exception e) {e.printStackTrace();}
		return false;
	}
	

}
