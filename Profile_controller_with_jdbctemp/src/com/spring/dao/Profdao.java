package com.spring.dao;

import java.util.List;

import com.spring.model.ProfileModel;

public interface Profdao {
	List<ProfileModel> getAllprof();

	List<ProfileModel> getProfile(Integer id);

	int updatepassword(String password, int id);
}
