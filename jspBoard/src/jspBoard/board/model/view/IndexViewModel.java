package jspBoard.board.model.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspBoard.board.controller.Action;
import jspBoard.board.controller.ActionForward;
import jspBoard.board.controller.ForwardFactory;

public class IndexViewModel implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ForwardFactory factory = new ForwardFactory();
		return factory.getForward(false, "index/index");
	}

}
