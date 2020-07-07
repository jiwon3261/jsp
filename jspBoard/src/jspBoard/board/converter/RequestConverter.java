package jspBoard.board.converter;

import java.lang.reflect.Field;
import java.sql.SQLException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

public class RequestConverter implements Converter {

	@SuppressWarnings("unchecked")
	@Override
	public <T> T convert(HttpServletRequest request, Class<T> clazz) {
		try {
			Object resultIns = clazz.newInstance();
			Enumeration<String> params = request.getParameterNames();
			while (params.hasMoreElements()) {
				String param = params.nextElement();
				Field field = clazz.getDeclaredField(param);
				fieldSet(field, resultIns, request.getParameter(param));
			}
			return (T) resultIns;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	private void fieldSet(Field field, Object resultIns, String value)
		throws IllegalArgumentException, IllegalAccessException, SQLException {
		field.setAccessible(true);
		if (field.getType() == Long.TYPE || field.getType() == Integer.TYPE) {
			field.set(resultIns, Integer.parseInt(value));
		} else if (field.getType() == String.class) {
			field.set(resultIns, value);
		}
	}
}
