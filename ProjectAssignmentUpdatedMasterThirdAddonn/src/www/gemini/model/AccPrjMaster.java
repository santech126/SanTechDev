package www.gemini.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name="ACCPRJMASTER")
public class AccPrjMaster {
	@Id
//	@Column(name="accId")
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int accId;	
    
	@Size(max=20,min=1,message="Please Enter account name")
	private String accName;
	
	@Size(max=20,min=1,message="Please Enter your project name")
	private String prjName;
	

	
	public int getAccId() {
		return accId;
	}
	public void setAccId(int accId) {
		this.accId = accId;
	}
	public String getAccName() {
		return accName;
	}
	public void setAccName(String accName) {
		this.accName = accName;
	}
	public String getPrjName() {
		return prjName;
	}
	public void setPrjName(String prjName) {
		this.prjName = prjName;
	}

	
	
	@Override
	public String toString() {
		return "AccPrjMaster [accid=" + accId + ", accName=" + accName
				+ ", prjName=" + prjName + "]";
	}
	public AccPrjMaster() {
		super();
		// TODO Auto-generated constructor stub
	}



}
