package Model.DTO.LEEDTO;

import java.sql.Timestamp;

public class Member {
	private Long memberNum;
	private String memberName;
	private Timestamp memberBir;
	private Long memberPh1;
	private String memberPh2;
	private String email;
	private String addr;
	private String gender;
	private String memberId;
	private String memberPw;
	private String fileName;

	public Long getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(Long memberNum) {
		this.memberNum = memberNum;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public Timestamp getMemberBir() {
		return memberBir;
	}

	public void setMemberBir(Timestamp memberBir) {
		this.memberBir = memberBir;
	}

	public Long getMemberPh1() {
		return memberPh1;
	}

	public void setMemberPh1(Long memberPh1) {
		this.memberPh1 = memberPh1;
	}

	public String getMemberPh2() {
		return memberPh2;
	}

	public void setMemberPh2(String memberPh2) {
		this.memberPh2 = memberPh2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

}