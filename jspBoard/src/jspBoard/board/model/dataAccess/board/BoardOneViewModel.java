package jspBoard.board.model.dataAccess.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import jspBoard.board.controller.AjaxAction;
import jspBoard.board.converter.Converter;
import jspBoard.board.converter.RequestConverter;
import jspBoard.board.entity.BoardEntity;
import jspBoard.board.service.BoardService;
import jspBoard.board.service.impl.BoardServiceImpl;

public class BoardOneViewModel implements AjaxAction {

	BoardService boardService;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "application/json");
		response.setCharacterEncoding("UTF-8");
		boardService = new BoardServiceImpl();
		Converter converter = new RequestConverter();
		BoardEntity board = converter.convert(request, BoardEntity.class);
		board = boardService.findBySeq(board.getSeq());
		board.setBoardImg(boardService.findByBoard_Seq(board.getSeq()));
		response.getWriter().write(new ObjectMapper().writeValueAsString(board));
	}

}
