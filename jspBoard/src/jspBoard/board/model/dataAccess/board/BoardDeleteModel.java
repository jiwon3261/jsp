package jspBoard.board.model.dataAccess.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspBoard.board.controller.AjaxAction;
import jspBoard.board.converter.Converter;
import jspBoard.board.converter.RequestConverter;
import jspBoard.board.entity.BoardEntity;
import jspBoard.board.service.BoardService;
import jspBoard.board.service.impl.BoardServiceImpl;

public class BoardDeleteModel implements AjaxAction {

	BoardService boardService;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "application/json");
		boardService = new BoardServiceImpl();
		Converter converter = new RequestConverter();
		BoardEntity deleteBoard = converter.convert(request, BoardEntity.class);
		boardService.deleteOne(deleteBoard.getSeq());
		response.getWriter().write("{\"result\":true}");
	}

}
