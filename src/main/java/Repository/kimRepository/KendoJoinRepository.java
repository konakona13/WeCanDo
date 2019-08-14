package Repository.kimRepository;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.DTO.kimDTO.KendoJoin;

public class KendoJoinRepository {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String namespace = "KIM-Mapper";
	
	public void insertMember(KendoJoin kendoJoin) {
		String statement =  namespace + ".insertKendoJoin"; 
		sqlSession.insert(statement, kendoJoin);
	}
}
