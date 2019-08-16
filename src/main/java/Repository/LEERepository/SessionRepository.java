package Repository.LEERepository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.DTO.LEEDTO.Member;

public class SessionRepository {
	@Autowired
	private SqlSession sqlSession;

	private final String namespace = "LEE-Mapper";

	public void insertMem(Member mem) {
		// TODO Auto-generated method stub
		String statement = namespace + ".memberInsert";
		sqlSession.insert(statement, mem);
	}

}
