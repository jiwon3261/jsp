package jspBoard.board.model.dataAccess.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspBoard.board.controller.AjaxAction;
import jspBoard.board.entity.UserEntity;
import jspBoard.board.service.UserService;
import jspBoard.board.service.impl.UserServiceImpl;

public class DupIdModel implements AjaxAction {
	
	UserService userService;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "application/json");
		userService = new UserServiceImpl();
		String id = request.getParameter("id");
		UserEntity user = userService.existUser(id);
		if (user == null) {
			response.getWriter().write("{\"result\":true}");
		} else {
			response.getWriter().write("{\"result\":false}");
		}
	}

}
