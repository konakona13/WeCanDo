package Controller.YYYController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Command.YYYCommand.PlaceRegCommand;
import Model.DTO.YYYDTO.MapLarge;
import Model.DTO.YYYDTO.MapMedium;
import Model.DTO.YYYDTO.MapSmall;
import Service.YYYService.DominoService;
import Service.YYYService.GoodsListService;
import Service.YYYService.PlaceRegService;

@Controller
public class GoodsRegController {
	@Autowired
	private PlaceRegService placeRegService;
	@Autowired
	private DominoService dominoService;
	
	@RequestMapping(value = "/GoodsReg", method = {RequestMethod.POST,RequestMethod.GET})
	public String goodsReg(Model model, PlaceRegCommand command) {
		
		return "YYYView/goodsRegist";
	} 
	
	@RequestMapping(value = "/GoodsRegAction", method = RequestMethod.POST)
	public String goodsRegAction(Model model, PlaceRegCommand 
			command, Errors errors) {
		String path= placeRegService.goodsRegist(model, command);

		return path;
	}
	
	//도미노
	@RequestMapping("/mapL")
	public String domino(Model model) {
		dominoService.execute(model);
		
		return "YYYView/map_theme/mapLarge_main";		
	}
	@RequestMapping(value = "/mapM", method=RequestMethod.POST)
	public String bb(Model model, MapLarge large) {
		dominoService.execute1(model, large);
		return "YYYView/map_theme/mapMedium";
	}
	
	@RequestMapping(value = "/mapS", method=RequestMethod.POST)
	public String cc(Model model, MapMedium medium) {
		dominoService.execute2(model, medium);
		return "YYYView/map_theme/mapSmall";
	}

	
	@RequestMapping(value = "/GoodsRegDetail", method = RequestMethod.POST)
	public String goodsList(Model model, PlaceRegCommand 
			command, Errors errors) {
		String path="YYYView/goodsRegDetail";

		return path;
	}
	

	
	
	
	
	}

