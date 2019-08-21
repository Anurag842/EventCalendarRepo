package Daos;

import java.util.List;

import Entities.Client;

public interface ClientDao {

	public boolean addClient(Client c);
	public Client viewClient(int id);
	public List<Client> getAllClient();
	public boolean delClient(Client c);
	public boolean updateClient(Client c);
}
