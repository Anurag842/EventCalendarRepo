package Entities;


import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table
public class Client {

	@Id
	@GeneratedValue
	private int clientId;
	
	private String clientName;
	private String projectName;
	
	private String arrivalDate;
	private String deptDate;
	
	private String agenda;
	
	@OneToMany(cascade=CascadeType.ALL,mappedBy="cli")
	private Set<Events> eve=new HashSet<Events>();
	
	
	public Set<Events> getEve() {
		return eve;
	}
	public void setEve(Set<Events> eve) {
		this.eve = eve;
	}
	public int getClientId() {
		return clientId;
	}
	public void setClientId(int clientId) {
		this.clientId = clientId;
	}
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getArrivalDate() {
		return arrivalDate;
	}
	public void setArrivalDate(String arrivalDate) {
		this.arrivalDate = arrivalDate;
	}
	public String getDeptDate() {
		return deptDate;
	}
	public void setDeptDate(String deptDate) {
		this.deptDate = deptDate;
	}
	public String getAgenda() {
		return agenda;
	}
	public void setAgenda(String agenda) {
		this.agenda = agenda;
	}
	
	
}
