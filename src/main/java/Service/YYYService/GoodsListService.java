package Service.YYYService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.YYYDTO.GoodsImg;
import Model.DTO.YYYDTO.PlaceGoods;
import Repository.YYYRepository.GoodsRepository;


@Service
public class GoodsListService {
	
	@Autowired
	private GoodsRepository repository;
	

	public String goodsList(Model model, PlaceGoods dto, GoodsImg img) {
		List<PlaceGoods> list = repository.getGoodsList(dto);
		model.addAttribute("list", list);
		
		List<GoodsImg> images = repository.getGoodsImg(img);
		model.addAttribute("images", images);
		
		return "YYYView/goodsMain";
	}

	
}
