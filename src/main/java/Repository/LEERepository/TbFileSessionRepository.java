package Repository.LEERepository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.DTO.LEEDTO.TbFile;

public class TbFileSessionRepository {
	@Autowired
	private SqlSession sqlSession;
	
	private final String namespace = "LEE-Mapper";
	
	public void fileInsert(TbFile tbFile) {
		// TODO Auto-generated method stub
		String statement = namespace + ".fileInsert";
		sqlSession.insert(statement, tbFile);
	}

}
