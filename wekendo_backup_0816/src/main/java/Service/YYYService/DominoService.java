package Service.YYYService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.YYYDTO.MapLarge;
import Model.DTO.YYYDTO.MapMedium;
import Model.DTO.YYYDTO.MapSmall;
import Repository.YYYRepository.DominoRepository;

@Service
public class DominoService {
	
	@Autowired
	private DominoRepository reposiotry;

	
	public void execute(Model model) {
		List<MapLarge> result = reposiotry.selectMapL();
		model.addAttribute("result", result);
	}


	public void execute1(Model model , MapLarge large) {
		List<MapMedium> list = reposiotry.selectMapM(large);
		model.addAttribute("list", list);
		
	}


	public void execute2(Model model, MapMedium medium) {
		List<MapSmall> list = reposiotry.selectMapS(medium);
		model.addAttribute("list", list); 
		
	}

}
