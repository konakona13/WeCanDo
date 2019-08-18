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

	public Member userCheck1(String memberId, String memberPw) {
		Member member = new Member();
		member.setMemberId(memberId);
		member.setMemberPw(memberPw);
		String statement = namespace + ".userCheck1";
		member = sqlSession.selectOne(statement, member);
		return member;
	}

	public Member userCheck(String memberId, String memberPw) {
		Member member = new Member();
		member.setMemberId(memberId);
		member.setMemberPw(memberPw);
		String statement = namespace + ".userCheck";
		member = sqlSession.selectOne(statement, member);
		statement = namespace + ".getOriginalFileName";
		Member member1 = sqlSession.selectOne(statement, member);
		member.setFileName(member1.getFileName());
		return member;
	}
}
