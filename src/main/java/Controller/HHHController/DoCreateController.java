package Controller.HHHController;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DoCreateController
{
	@RequestMapping("/HDO")
	public String HDO(Model model)
	{
		System.out.println("HDO컨트롤러111");
		return "HHHview/startrotjf";
	}
	
	@RequestMapping("/doCreateEnter")
	public String doCreateEnter(Model model, HttpSession session)
	{
		
		return "HHHview/doCreateFirst";
	}
	
}
