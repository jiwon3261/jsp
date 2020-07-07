package jspBoard.board.model.dataAccess.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspBoard.board.controller.Action;
import jspBoard.board.controller.ActionForward;
import jspBoard.board.model.view.IndexViewModel;

public class LogoutModel implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.invalidate();
		return new IndexViewModel().execute(request, response);
	}

}
