package jspBoard.board.service.impl;

import java.util.List;

import jspBoard.board.dao.ReplyDAO;
import jspBoard.board.dto.ReplyDTO;
import jspBoard.board.entity.ReplyEntity;
import jspBoard.board.service.ReplyService;

public class ReplyServiceImpl implements ReplyService {

	ReplyDAO replyDAO = new ReplyDAO();

	@Override
	public void save(ReplyDTO replyDTO) {
		ReplyEntity replyEntity = new ReplyEntity();
		replyEntity.setBoard_seq(replyDTO.getBoard_seq());
		replyEntity.setContent(replyDTO.getContent());
		replyEntity.setUser_id(replyDTO.getUser_id());
		replyDAO.save(replyEntity);
	}

	@Override
	public List<ReplyEntity> findByBoard_Seq(long seq) {
		return replyDAO.findByBoard_Seq(seq);
	}

	@Override
	public void delete(long seq) {
		replyDAO.delete(seq);
	}

	@Override
	public void update(ReplyDTO replyDTO) {
		ReplyEntity replyEntity = new ReplyEntity();
		replyEntity.setSeq(replyDTO.getSeq());
		replyEntity.setContent(replyDTO.getContent());
		replyDAO.update(replyEntity);
	}

}
