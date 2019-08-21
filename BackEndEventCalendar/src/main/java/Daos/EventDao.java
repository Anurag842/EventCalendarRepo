package Daos;


import Entities.Events;

public interface EventDao {

	public boolean addEvent(Events c);
	public Events viewEvent(int id);
	
}
