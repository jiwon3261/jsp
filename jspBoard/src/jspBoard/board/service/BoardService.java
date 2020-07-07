package jspBoard.board.service;

import java.util.List;

import jspBoard.board.dto.BoardDTO;
import jspBoard.board.dto.BoardImg;
import jspBoard.board.dto.PagedRequest;
import jspBoard.board.entity.BoardEntity;
import jspBoard.board.entity.join.Board_Board_Img;

public interface BoardService {
	BoardEntity save(BoardDTO boardDTO);

	void fileUpload(BoardImg boardImg);

	List<Board_Board_Img> findAll(PagedRequest pagedRequest);

	int countAll(PagedRequest pagedRequest);

	BoardEntity findBySeq(long seq);

	List<BoardImg> findByBoard_Seq(long seq);

	void deleteOne(long seq);
}
