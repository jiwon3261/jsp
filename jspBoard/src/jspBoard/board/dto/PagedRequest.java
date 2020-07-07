package jspBoard.board.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PagedRequest {
	int page;
	int size = 8;
	String sort = "b.seq";
	String search = "";
}
