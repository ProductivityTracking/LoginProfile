package com.spring.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProfileMapper implements RowMapper<ProfileModel> {

	public ProfileModel mapRow(ResultSet resultSet, int i) throws SQLException {

		ProfileModel pf = new ProfileModel();
		pf.setEmpid(resultSet.getString("user_empl_id"));
		pf.setPassword(resultSet.getString("user_password"));
		pf.setUser_role(resultSet.getInt("user_role"));
		pf.setUserid(resultSet.getInt("user_id"));
		pf.setUsername(resultSet.getString("user_displayname"));

		return pf;
	}
}