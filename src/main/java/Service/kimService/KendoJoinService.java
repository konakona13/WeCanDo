package Service.kimService;


import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Command.kimCommand.GuestPayCommand;
import Command.kimCommand.KendoJoinCommand;
import Model.DTO.kimDTO.Friend;
import Model.DTO.kimDTO.KendoJoin;
import oracle.sql.TIMESTAMP;


@Service
public class KendoJoinService {
	private SimpleDateFormat sdt = new SimpleDateFormat("yyyy-MM-dd");
	private Date date;
	private Timestamp tst;
	
	@Autowired
	private KendoJoin kendoJoin;
	
	@Autowired
	private Friend friend;
	
	public String insertKendoJoin(Model model, KendoJoinCommand kjc) {
		String path = "";
		tst = new Timestamp(new Date().getTime());
		kendoJoin.setJoinDate(tst);
		
		kendoJoin.setJoinKakaoid(kjc.getJoinKakaoId());
		kendoJoin.setJoinIntroduce(kjc.getJoinIntroduce());
		kendoJoin.setJoinQty(kjc.getJoinQty());
		
		friend.setFriendName(kjc.getFriendName());
		friend.setFriendPh(kjc.getFriendPh());
		friend.setFriendAge(kjc.getFriendAge());
		

		return "kimView/kendoPayment.jsp";
		
	}
	
}
