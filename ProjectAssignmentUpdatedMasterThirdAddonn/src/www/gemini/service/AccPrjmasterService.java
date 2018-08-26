package www.gemini.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import www.gemini.model.AccPrjMaster;


@Transactional
public interface AccPrjmasterService {

	public void addRecord(AccPrjMaster master);
	public List<AccPrjMaster> listMasterRecords();

	public void removeMaster(int accId);

}
