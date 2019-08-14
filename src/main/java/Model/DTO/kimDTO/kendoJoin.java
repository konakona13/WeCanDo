package Model.DTO.kimDTO;

import oracle.sql.CLOB;
import oracle.sql.TIMESTAMP;

public class kendoJoin {
	private String joinNum;
	private String doNum;
	private String guestNum;	
	private String hostNum;
	private TIMESTAMP joinDate;
	private String joinKakaoid;
	private CLOB joinIntroduce;
	private Integer joinQty;
	
	
	public String getJoinNum() {
		return joinNum;
	}
	public void setJoinNum(String joinNum) {
		this.joinNum = joinNum;
	}
	public String getDoNum() {
		return doNum;
	}
	public void setDoNum(String doNum) {
		this.doNum = doNum;
	}
	public String getGuestNum() {
		return guestNum;
	}
	public void setGuestNum(String guestNum) {
		this.guestNum = guestNum;
	}
	public String getHostNum() {
		return hostNum;
	}
	public void setHostNum(String hostNum) {
		this.hostNum = hostNum;
	}
	public TIMESTAMP getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(TIMESTAMP joinDate) {
		this.joinDate = joinDate;
	}
	public String getJoinKakaoid() {
		return joinKakaoid;
	}
	public void setJoinKakaoid(String joinKakaoid) {
		this.joinKakaoid = joinKakaoid;
	}
	public CLOB getJoinIntroduce() {
		return joinIntroduce;
	}
	public void setJoinIntroduce(CLOB joinIntroduce) {
		this.joinIntroduce = joinIntroduce;
	}
	public Integer getJoinQty() {
		return joinQty;
	}
	public void setJoinQty(Integer joinQty) {
		this.joinQty = joinQty;
	}
	
	
	

	
	
	
}
