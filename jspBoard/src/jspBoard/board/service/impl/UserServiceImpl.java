package jspBoard.board.service.impl;

import jspBoard.board.dao.UserDAO;
import jspBoard.board.dto.UserDTO;
import jspBoard.board.entity.UserEntity;
import jspBoard.board.service.UserService;

public class UserServiceImpl implements UserService {

	UserDAO userDAO;

	public UserServiceImpl() {
		userDAO = new UserDAO();
	}

	@Override
	public UserEntity existUser(String id) {
		return userDAO.findById(id);
	}

	@Override
	public UserEntity login(String id, String pw) {
		return userDAO.findByIdAndPw(id, pw);
	}

	@Override
	public void save(UserDTO userDTO) {
		UserEntity userEntity = new UserEntity();
		userEntity.setId(userDTO.getId());
		userEntity.setPw(userDTO.getPw());
		userEntity.setName(userDTO.getName());
		userDAO.save(userEntity);
	}

}
