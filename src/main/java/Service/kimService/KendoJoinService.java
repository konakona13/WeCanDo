package Service.kimService;


import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Command.kimCommand.KendoJoinCommand;
import Model.DTO.kimDTO.KendoJoin;
import oracle.sql.TIMESTAMP;


@Service
public class KendoJoinService {
	private SimpleDateFormat sdt = new SimpleDateFormat("yyyy-MM-dd");
	private Date date;
	private Timestamp tst;
	
	@Autowired
	private KendoJoin kendoJoin;
	
	public String insertKendoJoin(Model model, KendoJoinCommand kjc) {
		String path = "";
		tst = new Timestamp(new Date().getTime());
		kendoJoin.setJoinDate(tst);
		
		kendoJoin.setJoinKakaoid(kjc.getJoinKakaoId());
		kendoJoin.setJoinIntroduce(kjc.getJoinIntroduce());
		kendoJoin.setJoinQty(kjc.getJoinQty());
		
		
		return "kimView/kendoPayment.jsp";
		
	}
	
}
