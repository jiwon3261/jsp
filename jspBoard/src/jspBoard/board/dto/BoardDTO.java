package jspBoard.board.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardDTO {
	long seq;
	String content;
	String user_id;
}
