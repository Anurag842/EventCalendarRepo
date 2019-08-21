package Daos;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import Entities.Client;
import Entities.Events;

@Repository(value="EventDao")
@Transactional
public class EventDaoImpl implements EventDao{

	@Autowired
	SessionFactory sf;
	public boolean addEvent(Events c) {
		
		try {
			
			Session session=sf.getCurrentSession();
			
			session.save(c);
			return true;
			
		}
		catch(Exception e) {e.printStackTrace();}
		
		return false;
	}

	public Events viewEvent(int id) {
		
		try {
			Session session=sf.getCurrentSession();
			Events cat=session.get(Events.class, id);
			
			return cat;
			
			}
			catch(Exception e) {e.printStackTrace();}
			return null;
	}
	
}
