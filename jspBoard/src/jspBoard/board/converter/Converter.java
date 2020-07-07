package jspBoard.board.converter;

import javax.servlet.http.HttpServletRequest;

public interface Converter {
	<T> T convert(HttpServletRequest request, Class<T> clazz);
}
