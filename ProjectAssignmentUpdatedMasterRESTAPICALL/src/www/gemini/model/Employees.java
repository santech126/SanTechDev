package www.gemini.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.sun.istack.internal.NotNull;




@Entity
@Table(name="EMPLOYEES_TBL")
@JsonPropertyOrder({"empsid","empname","empgrade","emplocation"})
@JsonIgnoreProperties("emplocation")
@JsonInclude(JsonInclude.Include.NON_NULL)


public class Employees {
	

	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	@JsonProperty("EMPID")
	private int empsid;
	
	@Size(max=20,min=1,message="please enter your name between {min} to {max} character")
	@JsonProperty("EMPNAME")
	private String empname;
	
	@Size(max=40,min=1,message="please enter emailid between {min} to {max} character")
	@Pattern(regexp=".+@.+\\..+", message="Wrong email!")
	private String emailnD;
    
	@Size(max=20,min=1,message="please enter location between {min} to {max} character")
	private String emplocation;

	@Size(max=10,min=1,message="please enter grade between {min} to {max} character")
	private String empgrade;
	
	//@NotEmpty(message="Please enter Hire Date")
	private String hiredate;
	//@NotEmpty(message="Please enter Joining date")
	private String bujoiningdate;	

	
	public int getEmpsid() {
		return empsid;
	}
	public void setEmpsid(int empsid) {
		this.empsid = empsid;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getEmailnD() {
		return emailnD;
	}
	public void setEmailnD(String emailnD) {
		this.emailnD = emailnD;
	}
	public String getEmplocation() {
		return emplocation;
	}
	public void setEmplocation(String emplocation) {
		this.emplocation = emplocation;
	}
	public String getEmpgrade() {
		return empgrade;
	}
	public void setEmpgrade(String empgrade) {
		this.empgrade = empgrade;
	}
	public String getHiredate() {
		return hiredate;
	}
	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}
	public String getBujoiningdate() {
		return bujoiningdate;
	}
	public void setBujoiningdate(String bujoiningdate) {
		this.bujoiningdate = bujoiningdate;
	}
	
	
	@Override
	public String toString() {
		return "Employees [empsid=" + empsid + ", empname=" + empname
				+ ", emailnD=" + emailnD + ", emplocation=" + emplocation
				+ ", empgrade=" + empgrade + ", hiredate=" + hiredate
				+ ", bujoiningdate=" + bujoiningdate + "]";
	}
	public Employees() {
		super();
		// TODO Auto-generated constructor stub
	}

	
    
    
    
}
