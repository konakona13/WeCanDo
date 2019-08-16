package Controller.kimController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Command.kimCommand.KendoJoinCommand;
import Service.kimService.KendoJoinService;

@Controller
public class KendoJoinController {
	String path = "";
	@Autowired
	private KendoJoinService kendoJoinService;
	
	
	@RequestMapping("/kendoJoin")
	public String kendoJoin(Model model) {
		path = "kimView/kendoJoin";
		return path;
	}
	
	@RequestMapping("/kendoJoinAction")
	public String kendoJoinAction(Model model,KendoJoinCommand kendoJoinCommand ) {
		path = kendoJoinService.insertKendoJoin(model, kendoJoinCommand);
		return "";
		
		
	}
}
