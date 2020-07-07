package jspBoard.board.service.impl;

import java.util.List;

import jspBoard.board.dao.BoardDAO;
import jspBoard.board.dto.BoardDTO;
import jspBoard.board.dto.BoardImg;
import jspBoard.board.dto.PagedRequest;
import jspBoard.board.entity.BoardEntity;
import jspBoard.board.entity.join.Board_Board_Img;
import jspBoard.board.service.BoardService;

public class BoardServiceImpl implements BoardService {

	BoardDAO boardDAO;

	public BoardServiceImpl() {
		boardDAO = new BoardDAO();
	}

	@Override
	public BoardEntity save(BoardDTO boardDTO) {
		BoardEntity boardEntity = new BoardEntity();
		boardEntity.setContent(boardDTO.getContent());
		boardEntity.setUser_id(boardDTO.getUser_id());
		boardDAO.save(boardEntity);
		return boardDAO.findLastSaveObj();
	}

	@Override
	public void fileUpload(BoardImg boardImg) {
		boardDAO.fileSave(boardImg);
	}

	@Override
	public List<Board_Board_Img> findAll(PagedRequest pagedRequest) {
		return boardDAO.findAll(pagedRequest);
	}

	@Override
	public int countAll(PagedRequest pagedRequest) {
		return boardDAO.countAll(pagedRequest).getTotalCount();
	}

	@Override
	public BoardEntity findBySeq(long seq) {
		boardDAO.updateHit(seq);
		return boardDAO.findBySeq(seq);
	}

	@Override
	public List<BoardImg> findByBoard_Seq(long seq) {
		return boardDAO.getBoardImgAll(seq);
	}

	@Override
	public void deleteOne(long seq) {
		boardDAO.deleteOne(seq);
	}
}
