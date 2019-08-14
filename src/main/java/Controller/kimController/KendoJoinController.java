package Controller.kimController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Command.kimCommand.KendoJoinCommand;
import Service.kimService.KendoJoinService;

@Controller
public class KendoJoinController {
	
	@Autowired
	private KendoJoinService kendoJoinService;
	
	
	@RequestMapping("/kendoJoin")
	public void kendoJoin(Model model) {
		
	}
	
	@RequestMapping("/kendoJoinAction")
	public void kendoJoinAction(Model model,KendoJoinCommand kendoJoinCommand ) {
		kendoJoinService.insertKendoJoin(model, kendoJoinCommand);
	}
}
