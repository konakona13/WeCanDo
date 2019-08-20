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
		System.out.println("HDO컨트롤러111ss");
		return "HHHview/startrotjf";
	}
	
	@RequestMapping("/doCreateEnter")
	public String doCreateEnter(Model model, HttpSession session)
	{
		
		return "HHHview/doCreateFirst";
	}
	
	@RequestMapping("/doCreatePlace")
	public String doCreatePlace(Model model, HttpSession session)
	{
		
		return "HHHview/doCreatePlace";
	}
	
	@RequestMapping("/doCreatePay")
	public String doCreatePay(Model model, HttpSession session)
	{
		
		return "HHHview/doCreatePay";
	}
	
	@RequestMapping("/doCreateCardPay")
	public String doCreateCardPay(Model model, HttpSession session)
	{
		
		return "HHHview/doCreateCardPay";
	}
	
	
	
}
