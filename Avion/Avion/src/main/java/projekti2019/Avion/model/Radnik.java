package projekti2019.Avion.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Radnici")
public class Radnik implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "radnik_id", unique = true, nullable = false)
	private Long id;
	
	@Column(name = "name", unique = true, nullable = false, length = 5)
	private String ime;
	 
	

}
