package jspBoard.board.entity;

import java.util.Date;
import java.util.List;

import jspBoard.board.dto.BoardImg;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardEntity {
	long seq;
	String user_id;
	String content;
	Date date;
	long hit;
	List<BoardImg> boardImg;
}
