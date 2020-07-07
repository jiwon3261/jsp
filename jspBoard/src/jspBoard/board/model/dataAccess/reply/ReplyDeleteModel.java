package jspBoard.board.model.dataAccess.reply;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspBoard.board.controller.AjaxAction;
import jspBoard.board.service.ReplyService;
import jspBoard.board.service.impl.ReplyServiceImpl;

public class ReplyDeleteModel implements AjaxAction {

	ReplyService replyService = new ReplyServiceImpl();

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "application/json");
		long seq = Long.parseLong(request.getParameter("seq"));
		replyService.delete(seq);
		response.getWriter().write("{\"result\":true}");
	}

}
