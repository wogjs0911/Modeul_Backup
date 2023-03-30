package com.modeul.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modeul.web.repository.ImageRepository;

@Service
public class ImageServiceImpl implements ImageService{
	
	@Autowired
	private ImageRepository repository;
	
	@Override
	public String getNamebyId(Long stuffId) {
		
		return repository.findNameById(stuffId).getName();
	}
	
	@Override
	public String getPathbyId(Long stuffId) {
		
		return repository.findNameById(stuffId).getPath();
	}

//	@Override
//	public int upload(String name) {
//		return repository.upload(name);
//	} 

}
