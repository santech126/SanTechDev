package www.gemini.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import www.gemini.model.AccPrjMaster;

@Repository
public class AccPrjMasterDaoImpl implements AccPrjMasterDao{

private static final Logger logger = LoggerFactory.getLogger(AccPrjMasterDaoImpl.class);

@Autowired
private SessionFactory factory1;

@Override
public void addRecord(AccPrjMaster master) {
	Session session = factory1.getCurrentSession();
	session.save(master);
	logger.info("Employee saved successfully, Employee Details=");
	
}

@Override
public List<AccPrjMaster> listOfMaster() {
	Session session = factory1.getCurrentSession();
	List<AccPrjMaster> list = session.createQuery("from  AccPrjMaster").list();
	
for (AccPrjMaster master: list) {
	logger.info("MasterList::"+master);
}
return list;
}


public void removeMasterDao(int accId) {

Session session1 = factory1.getCurrentSession();
AccPrjMaster accmaster=(AccPrjMaster)session1.get(AccPrjMaster.class, accId);
Query query = session1.createQuery("delete from  AccPrjMaster where accId=:accId");
query.setParameter("accId", accmaster.getAccId());
query.executeUpdate();
logger.info("Master data removed successfully data removed successfully, Employee Details=");
	
}


}






