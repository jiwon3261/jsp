package jspBoard.board.dao;

import java.util.ArrayList;
import java.util.List;

import jspBoard.board.entity.ReplyEntity;

@SuppressWarnings("unchecked")
public class ReplyDAO {
	CommonDBConn dao = new CommonDBConn();

	public void save(ReplyEntity replyEntity) {
		String[] sql = { "INSERT INTO reply VALUES (NULL,?,?,?,NOW());" };
		ArrayList<Object> param = new ArrayList<>();
		param.add(Long.toString(replyEntity.getBoard_seq()));
		param.add(replyEntity.getUser_id());
		param.add(replyEntity.getContent());
		dao.save(sql, param);
	}

	public List<ReplyEntity> findByBoard_Seq(long seq) {
		String sql = "SELECT * FROM reply WHERE board_seq = ?";
		ArrayList<String> param = new ArrayList<>();
		param.add(Long.toString(seq));
		return (List<ReplyEntity>) dao.selectAll(sql, param, ReplyEntity.class);
	}

	public void update(ReplyEntity replyEntity) {
		String[] sql = { "UPDATE reply SET content = ? WHERE seq = ?" };
		ArrayList<Object> param = new ArrayList<>();
		param.add(replyEntity.getContent());
		param.add(Long.toString(replyEntity.getSeq()));
		dao.save(sql, param);
	}

	public void delete(long seq) {
		String[] sql = { "DELETE FROM reply WHERE seq = ?" };
		ArrayList<Object> param = new ArrayList<>();
		param.add(Long.toString(seq));
		dao.save(sql, param);
	}
}
