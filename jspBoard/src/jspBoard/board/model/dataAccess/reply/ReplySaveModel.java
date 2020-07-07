package jspBoard.board.model.dataAccess.reply;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspBoard.board.controller.AjaxAction;
import jspBoard.board.converter.Converter;
import jspBoard.board.converter.RequestConverter;
import jspBoard.board.dto.ReplyDTO;
import jspBoard.board.entity.UserEntity;
import jspBoard.board.service.ReplyService;
import jspBoard.board.service.impl.ReplyServiceImpl;

public class ReplySaveModel implements AjaxAction {

	ReplyService replyService = new ReplyServiceImpl();
	Converter converter = new RequestConverter();

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "application/json");
		HttpSession session = request.getSession();
		UserEntity user = (UserEntity) session.getAttribute("user");
		ReplyDTO reply = converter.convert(request, ReplyDTO.class);
		reply.setUser_id(user.getId());
		replyService.save(reply);
		response.getWriter().write("{\"result\":true}");
	}

}
