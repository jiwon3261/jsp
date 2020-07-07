package jspBoard.board.model.dataAccess.board;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import jspBoard.board.controller.AjaxAction;
import jspBoard.board.dto.BoardDTO;
import jspBoard.board.dto.BoardImg;
import jspBoard.board.entity.BoardEntity;
import jspBoard.board.entity.UserEntity;
import jspBoard.board.service.BoardService;
import jspBoard.board.service.impl.BoardServiceImpl;
import jspBoard.board.util.FileExtractor;

public class BoardSaveModel implements AjaxAction {

	BoardService boardService;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		boardService = new BoardServiceImpl();
		int maxSize = 1024 * 1024 * 10;

		String root = request.getSession().getServletContext().getRealPath("/images/");
		MultipartRequest mul = new MultipartRequest(request, root, maxSize, "UTF-8", new DefaultFileRenamePolicy());

		HttpSession session = request.getSession();
		UserEntity user = (UserEntity) session.getAttribute("user");
		String content = mul.getParameter("content");
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setContent(content);
		boardDTO.setUser_id(user.getId());
		BoardEntity saveBoard = boardService.save(boardDTO);
		int count = 0;
		while (true) {
			try {
				File file = mul.getFile("file_" + count++);
				BoardImg boardImg = new BoardImg();
				boardImg.setPath("./images/" + FileExtractor.extract(file));
				boardImg.setBoard_seq(saveBoard.getSeq());
				boardService.fileUpload(boardImg);
			} catch (Exception e) {
				break;
			}
		}
		response.getWriter().write("{\"result\":true}");
	}

}
