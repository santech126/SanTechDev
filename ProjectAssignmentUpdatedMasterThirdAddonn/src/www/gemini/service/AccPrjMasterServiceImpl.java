package www.gemini.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import www.gemini.dao.AccPrjMasterDao;
import www.gemini.model.AccPrjMaster;

@Service
public class AccPrjMasterServiceImpl implements AccPrjmasterService {

	@Autowired
	private AccPrjMasterDao dao;
   
	@Transactional
	@Override
	public void addRecord(AccPrjMaster master) {
		dao.addRecord(master);
		
	}
	
	@Transactional
	@Override
	public List<AccPrjMaster> listMasterRecords() {
   // master table record list
		return dao.listOfMaster();
	}

	@Override
	public void removeMaster(int accId) {
		dao.removeMasterDao(accId);
	}
	
}
