package jspBoard.board.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReplyDTO {
	int seq;
	int board_seq;
	String content;
	String user_id;
}
