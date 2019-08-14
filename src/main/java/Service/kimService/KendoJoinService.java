package Service.kimService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Command.kimCommand.KendoJoinCommand;
import Model.DTO.kimDTO.kendoJoin;

@Service
public class KendoJoinService {
	@Autowired
	private KendoJoin kendoJoin;
	public void insertKendoJoin(Model model, KendoJoinCommand kendoJoinCommand) {
		
		
		
	}
	
}
