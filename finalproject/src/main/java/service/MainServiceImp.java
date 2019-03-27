package service;

import java.util.List;

import dao.MainDao;
import dto.MainDto;
import dto.MainReviewDTO;

public class MainServiceImp implements MainService {
	private MainDao dao;
	
	public MainServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
	public void setDao(MainDao dao) {
		this.dao = dao;
	}
	
	@Override
	public List<MainDto> ListProcess(){
		// TODO Auto-generated method stub
		return dao.list();
	}

	@Override
	public List<MainReviewDTO> rListProcess(String city_code) {
		// TODO Auto-generated method stub
		return dao.rlist(city_code);
	}

}