package www.gemini.dao;

import java.util.List;

import www.gemini.model.AccPrjMaster;

public interface AccPrjMasterDao {
	
	public void addRecord(AccPrjMaster master);
	
	public List<AccPrjMaster> listOfMaster();

	public void removeMasterDao(int accId);

}
