package Controller.LEEController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Command.LEECommand.MemberJoinCommand;
import Service.LEEService.MemberJoinService;
import Validator.RegisterRequestValidator;

@Controller
public class MemberController {

	@Autowired
	private MemberJoinService memberJoinService;

	@RequestMapping("/loginmain")
	public String mainView() {
		return "LEEview/mainForm";
	}

	@RequestMapping(value = "/MemberJoin", method = RequestMethod.POST)
	public String joinMember(Model model) {
		model.addAttribute("memberJoinCommand", new MemberJoinCommand());
		return "LEEview/memberForm";
	}

	@RequestMapping(value = "/MemberJoinAction", method = RequestMethod.POST)
	public String memberJoinAction(Model model, MemberJoinCommand memberJoinCommand, Errors errors) {
		String path = "";
		new RegisterRequestValidator().validate(memberJoinCommand, errors);
		if (errors.hasErrors())
			return "MemberView/memberForm";
		try {
			path = memberJoinService.memberInsert(model, memberJoinCommand);
		} catch (Exception e) {
		}
		return path;
	}
}
