package Repository.YYYRepository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.YYYDTO.MapLarge;
import Model.DTO.YYYDTO.MapMedium;
import Model.DTO.YYYDTO.MapSmall;

@Repository
public class DominoRepository {
	
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "DominoRepository";


	public List<MapLarge> selectMapL() {
		String statement = namespace + ".selectAaTable";
		List<MapLarge> result = sqlSession.selectList(statement);
		
		return result;
	}


	public List<MapMedium> selectMapM(MapLarge large) {
		String statement = namespace + ".selectBbTable";
		List<MapMedium> list = sqlSession.selectList(statement, large);
		
		return list;
	}

	public List<MapSmall> selectMapS(MapMedium medium) {
		String statement = namespace + ".selectCcTable";
		List<MapSmall> list = sqlSession.selectList(statement, medium);
		
		return list;
	}

}
