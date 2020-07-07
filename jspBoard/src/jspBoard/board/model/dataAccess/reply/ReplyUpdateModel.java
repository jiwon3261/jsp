package jspBoard.board.model.dataAccess.reply;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspBoard.board.controller.AjaxAction;
import jspBoard.board.converter.Converter;
import jspBoard.board.converter.RequestConverter;
import jspBoard.board.dto.ReplyDTO;
import jspBoard.board.service.ReplyService;
import jspBoard.board.service.impl.ReplyServiceImpl;

public class ReplyUpdateModel implements AjaxAction {

	ReplyService replyService = new ReplyServiceImpl();
	Converter converter = new RequestConverter();

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "application/json");
		ReplyDTO replyDTO = converter.convert(request, ReplyDTO.class);
		replyService.update(replyDTO);
		response.getWriter().write("{\"result\":true}");
	}

}
