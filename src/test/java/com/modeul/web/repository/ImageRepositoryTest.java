package com.modeul.web.repository;

import org.junit.jupiter.api.Test;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;

import com.modeul.web.entity.Image;

@AutoConfigureTestDatabase(replace=Replace.NONE)
@MybatisTest
class ImageRepositoryTest {
	
	@Autowired
	private ImageRepository repository;
	
	@Test
	void testfindNameById() {
		Image imageName = repository.findNameById(5L);
		System.out.println(imageName);
	}

}
