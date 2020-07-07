package jspBoard.board.model.dataAccess.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspBoard.board.controller.AjaxAction;
import jspBoard.board.converter.Converter;
import jspBoard.board.converter.RequestConverter;
import jspBoard.board.dto.UserDTO;
import jspBoard.board.service.UserService;
import jspBoard.board.service.impl.UserServiceImpl;

public class JoinModel implements AjaxAction {

	UserService userService;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "application/json");
		userService = new UserServiceImpl();
		Converter converter = new RequestConverter();
		UserDTO user = converter.convert(request, UserDTO.class);
		try {
			userService.save(user);
			response.getWriter().write("{\"result\":true}");
		} catch (Exception e) {
			response.getWriter().write("{\"result\":false}");
		}
	}

}
