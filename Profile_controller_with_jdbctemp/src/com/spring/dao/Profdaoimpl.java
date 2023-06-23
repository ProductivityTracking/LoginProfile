package com.spring.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.spring.model.ProfileMapper;
import com.spring.model.ProfileModel;

public class Profdaoimpl implements Profdao {

	JdbcTemplate jdbcTemplate;

	private final String SQL_GET_ALL = "select * from vamsi_users where user_id= ? ";

	// private final String SQL_UPDATE_EMPLOYEE = "update vamsi_users set user_password = ?, user_ludate=current_date
	// where where user_id=?";

	@Autowired
	public Profdaoimpl(DataSource dataSource) {
		System.out.println("came herer");
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<ProfileModel> getAllprof() {

		return null;
	}

	// public int updatepassword(String password, int id) {
	// System.out.println("i am updating");
	// return jdbcTemplate.update(SQL_UPDATE_EMPLOYEE, password, id);
	// }

	@Override
	public List<ProfileModel> getProfile(Integer id) {
		return jdbcTemplate.query(SQL_GET_ALL, new Object[] { id }, new ProfileMapper());
	}

	public int updatepassword(String password, int id) {
		System.out.println("Updating password");

		String sql = "UPDATE vamsi_users SET user_password = ? WHERE user_id = ?";

		return jdbcTemplate.update(sql, password, id);
	}

}

// private final String SQL_GET_ALL = "select * from emp";
// private final String SQL_INSERT_EMPLOYEE = "insert into emp(empno, ename, job, sal,deptno) values(?,?,?,?,?)";
// private final String SQL_DELETE_EMPLOYEE = "delete from emp where empno = ?";
// public Employee getEmployeeByNo(Integer eno) {
// return jdbcTemplate.queryForObject(SQL_FIND_EMPLOYEE, new Object[] { eno }, new EmployeeMapper());
// }
//
// public List<Employee> getAllEmployees() {
// System.out.println("Employees List from db through jdbc template Requested");
// return jdbcTemplate.query(SQL_GET_ALL, new EmployeeMapper());
// }
//
// public boolean deleteEmployee(Employee e) {
// return jdbcTemplate.update(SQL_DELETEFIND_EMPLOYEEEMPLOYEE, e.getEmpNo()) > 0;
// }
//
// public boolean updateEmployee(Employee e) {
// return jdbcTemplate.update(SQL_UPDATE_EMPLOYEE, e.getEName(), e.getJob(), e.getSalary(), e.getDeptNo(),
// e.getEmpNo()) > 0;
// }

// public boolean createEmployee(Employee e) {
// //System.out.println("Employee creation from db through jdbc template requested");
// return jdbcTemplate.update(SQL_INSERT_EMPLOYEE, e.getEmpNo(), e.getEName(), e.getJob(),
// e.getSalary(),e.getDeptNo()) > 0;
// }