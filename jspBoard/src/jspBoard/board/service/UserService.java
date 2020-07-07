package jspBoard.board.service;

import jspBoard.board.dto.UserDTO;
import jspBoard.board.entity.UserEntity;

public interface UserService {
	UserEntity existUser(String id);

	UserEntity login(String id, String pw);

	void save(UserDTO userDTO);
}
