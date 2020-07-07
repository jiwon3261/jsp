package jspBoard.board.model.dataAccess.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

import jspBoard.board.controller.AjaxAction;
import jspBoard.board.entity.UserEntity;
import jspBoard.board.service.UserService;
import jspBoard.board.service.impl.UserServiceImpl;

public class LoginModel implements AjaxAction {

	UserService userService;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "application/json");
		userService = new UserServiceImpl();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		UserEntity user = userService.login(id, pw);
		try {
			HttpSession session = request.getSession();
			response.getWriter().write(new ObjectMapper().writeValueAsString(user));
			user.setPw(null);
			session.setAttribute("user", user);
		} catch (Exception e) {
			response.getWriter().write("");
		}
	}

}
