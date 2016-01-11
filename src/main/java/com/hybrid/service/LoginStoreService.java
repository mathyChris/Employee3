package com.hybrid.service;

import com.hybrid.dao.StoreDao;
import com.hybrid.exception.LoginFailException;
import com.hybrid.model.Store;

public class LoginStoreService {

	StoreDao storeDao;
	
	public void setStoreDao(StoreDao dao) {
		this.storeDao = dao;
	}
	
	public Store login(String email, String password) {
		
		Store store = storeDao.selectByEmailAndPassword(email, password);
		if (store == null) {
			throw new LoginFailException("존재하지 않는 USER 입니다.");
		}
		
		return store;
	}
}
