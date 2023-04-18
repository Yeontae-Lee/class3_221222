package com.itwillbs.mvc_board_sts.service;

import org.springframework.stereotype.Service;

@Service
public class TestServiceImpl implements TestService {

	@Override
	public void test() {
		System.out.println("test");
	}

}
