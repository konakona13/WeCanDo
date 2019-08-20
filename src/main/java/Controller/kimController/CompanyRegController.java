package Controller.kimController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Service.kimService.CompanyRegService;

@Controller
public class CompanyRegController {
	String path = "";
	
	@Autowired
	private CompanyRegService companyRegService;
	
	@RequestMapping("companyReg")
	public String companyReg() {
		path = "kimView/companyReg";
		return path;
	}
	
	@RequestMapping("")
	public String companyRegList(Model model) {
		companyRegService.companyRegList(model);
		return path;
	}

}
