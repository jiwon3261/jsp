package jspBoard.board.entity;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReplyEntity {
	int seq;
	int board_seq;
	String content;
	String user_id;
	Date date;
}
