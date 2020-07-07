package jspBoard.board.dao;

import java.util.ArrayList;

import jspBoard.board.entity.UserEntity;

public class UserDAO {
	CommonDBConn dao = new CommonDBConn();

	public UserEntity findById(String id) {
		String sql = "SELECT * FROM USER WHERE id = ?";
		ArrayList<String> param = new ArrayList<>();
		param.add(id);
		return (UserEntity) dao.selectOne(sql, param, UserEntity.class);
	}

	public UserEntity findByIdAndPw(String id, String pw) {
		String sql = "SELECT * FROM USER WHERE id = ? AND pw = ?";
		ArrayList<String> param = new ArrayList<>();
		param.add(id);
		param.add(pw);
		return (UserEntity) dao.selectOne(sql, param, UserEntity.class);
	}
	
	public void save(UserEntity userEntity) {
		String[] sql = {"INSERT INTO USER VALUES (?,?,?);"};
		ArrayList<Object> param = new ArrayList<>();
		param.add(userEntity.getId());
		param.add(userEntity.getPw());
		param.add(userEntity.getName());
		dao.save(sql, param);
	}
}
