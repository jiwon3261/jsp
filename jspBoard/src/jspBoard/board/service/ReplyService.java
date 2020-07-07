package jspBoard.board.service;

import java.util.List;

import jspBoard.board.dto.ReplyDTO;
import jspBoard.board.entity.ReplyEntity;

public interface ReplyService {
	void save(ReplyDTO replyDTO);

	List<ReplyEntity> findByBoard_Seq(long seq);

	void delete(long seq);

	void update(ReplyDTO replyDTO);
}
