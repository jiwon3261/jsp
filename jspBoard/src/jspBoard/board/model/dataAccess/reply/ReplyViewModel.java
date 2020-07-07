package jspBoard.board.model.dataAccess.reply;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import jspBoard.board.controller.AjaxAction;
import jspBoard.board.entity.ReplyEntity;
import jspBoard.board.service.ReplyService;
import jspBoard.board.service.impl.ReplyServiceImpl;

public class ReplyViewModel implements AjaxAction {

	ReplyService replyService = new ReplyServiceImpl();

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "application/json");
		response.setCharacterEncoding("UTF-8");
		long board_seq = Long.parseLong(request.getParameter("seq"));
		List<ReplyEntity> list = replyService.findByBoard_Seq(board_seq);
		response.getWriter().write(new ObjectMapper().writeValueAsString(list));
	}

}
