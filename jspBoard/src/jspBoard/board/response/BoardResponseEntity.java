package jspBoard.board.response;

import java.util.List;

import jspBoard.board.entity.join.Board_Board_Img;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardResponseEntity {
	int totalCount;
	List<Board_Board_Img> list;
}
