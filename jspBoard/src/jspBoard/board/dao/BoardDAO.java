package jspBoard.board.dao;

import java.util.ArrayList;
import java.util.List;

import jspBoard.board.dto.BoardImg;
import jspBoard.board.dto.PagedRequest;
import jspBoard.board.entity.BoardEntity;
import jspBoard.board.entity.join.Board_Board_Img;
import jspBoard.board.response.BoardResponseEntity;

@SuppressWarnings("unchecked")
public class BoardDAO {
	CommonDBConn dao = new CommonDBConn();

	public void save(BoardEntity boardEntity) {
		String[] sql = { "INSERT INTO board VALUE (NULL,?,?,NOW(),0)" };
		ArrayList<Object> param = new ArrayList<>();
		param.add(boardEntity.getUser_id());
		param.add(boardEntity.getContent());
		dao.save(sql, param);
	}

	public void fileSave(BoardImg boardImg) {
		String[] sql = { "INSERT INTO board_img VALUES (NULL,?,?);" };
		ArrayList<Object> param = new ArrayList<>();
		param.add(Long.toString(boardImg.getBoard_seq()));
		param.add(boardImg.getPath());
		dao.save(sql, param);
	}

	public BoardEntity findLastSaveObj() {
		String sql = "SELECT *, max(seq) as 'seq' FROM board";
		return (BoardEntity) dao.selectOne(sql, null, BoardEntity.class);
	}

	public List<Board_Board_Img> findAll(PagedRequest pageRequest) {
		String sql = "SELECT b.*,i.path FROM `board` b LEFT OUTER JOIN `board_img` i ON b.seq = i.board_seq GROUP BY b.seq ORDER BY b.date DESC LIMIT "
			+ pageRequest.getPage() * pageRequest.getSize() + "," + pageRequest.getSize() + "";
		return (List<Board_Board_Img>) dao.selectAll(sql, null, Board_Board_Img.class);
	}

	public BoardResponseEntity countAll(PagedRequest pageRequest) {
		String sql = "SELECT COUNT(seq) as 'totalCount' FROM board";
		return (BoardResponseEntity) dao.selectOne(sql, null, BoardResponseEntity.class);
	}

	public BoardEntity findBySeq(long seq) {
		String sql = "SELECT * FROM board WHERE seq = ?";
		ArrayList<String> param = new ArrayList<>();
		param.add(Long.toString(seq));
		return (BoardEntity) dao.selectOne(sql, param, BoardEntity.class);
	}

	public void updateHit(long seq) {
		String[] sql = { "UPDATE board SET hit = hit + 1 WHERE seq = ?" };
		ArrayList<Object> param = new ArrayList<>();
		param.add(Long.toString(seq));
		dao.update(sql, param);
	}

	public List<BoardImg> getBoardImgAll(long seq) {
		String sql = "SELECT * FROM board_img WHERE board_seq = ?";
		ArrayList<String> param = new ArrayList<>();
		param.add(Long.toString(seq));
		return (List<BoardImg>) dao.selectAll(sql, param, BoardImg.class);
	}

	public void deleteOne(long seq) {
		String[] sql = { "DELETE FROM board WHERE seq = ?", "DELETE FROM board_img WHERE board_seq = ?",
				"DELETE FROM reply WHERE board_seq = ?" };
		ArrayList<Object> param = new ArrayList<>();
		param.add(Long.toString(seq));
		param.add(Long.toString(seq));
		param.add(Long.toString(seq));
		dao.delete(sql, param);
	}
}
