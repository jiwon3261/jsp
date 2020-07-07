package jspBoard.board.entity.join;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Board_Board_Img {
	long seq;
	String user_id;
	String content;
	Date date;
	long hit;
	long replyCount;
	String path;
}
