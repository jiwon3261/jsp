package jspBoard.board.model.dataAccess.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import jspBoard.board.controller.AjaxAction;
import jspBoard.board.converter.Converter;
import jspBoard.board.converter.RequestConverter;
import jspBoard.board.dto.PagedRequest;
import jspBoard.board.response.BoardResponseEntity;
import jspBoard.board.service.BoardService;
import jspBoard.board.service.impl.BoardServiceImpl;

public class BoardViewModel implements AjaxAction {

	BoardService boardService;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setHeader("Content-Type", "application/json");
		response.setCharacterEncoding("UTF-8");
		boardService = new BoardServiceImpl();
		Converter converter = new RequestConverter();
		PagedRequest pageable = converter.convert(request, PagedRequest.class);
		BoardResponseEntity boardResponseEntity = new BoardResponseEntity();
		boardResponseEntity.setList(boardService.findAll(pageable));
		boardResponseEntity.setTotalCount(boardService.countAll(pageable));
		response.getWriter().write(new ObjectMapper().writeValueAsString(boardResponseEntity));
	}

}
