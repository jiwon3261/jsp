package jspBoard.board.dao;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class CommonDBConn {
	private String url = "jdbc:mariadb://localhost:3307/jspboard";
	private String uid = "root";
	private String pwd = "apmsetup";

	// Ä¿¹Ô
	protected void commit(Connection c, PreparedStatement pstmt) {
		try {
			pstmt.executeUpdate();
			c.commit();
			c.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(c, pstmt, null);
		}
	}

	// °´Ã¼ »ý¼º
	protected boolean save(String[] sql, Iterable<Object> param) {
		return this.update(sql, param);
	}

	// °´Ã¼ »èÁ¦
	protected boolean delete(String[] sql, Iterable<Object> param) {
		return this.update(sql, param);
	}

	// °´Ã¼ ¼öÁ¤
	protected boolean update(String[] sql, Iterable<Object> param) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DriverManager.getConnection(url, uid, pwd);
			conn.setAutoCommit(false);

			if (param == null) {
				for (String s : sql) {
					pstmt = conn.prepareStatement(s);
					pstmt.executeUpdate();
				}
				conn.commit();
				return true;
			}

			ArrayList<Object> params = (ArrayList<Object>) param;
			int i = 0;
			for (String s : sql) {
				int j = 0;
				pstmt = conn.prepareStatement(s);
				for (; i < params.size(); i++) {
					try {
						pstmt.setString(++j, params.get(i).toString());
					} catch (Exception e) {
						break;
					}
				}
				pstmt.executeUpdate();
			}
			conn.commit();
			return true;
		} catch (Exception e) {
			try {
				e.printStackTrace();
				conn.rollback();
				closeAll(conn, pstmt, null);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			return false;
		} finally {
			closeAll(conn, pstmt, null);
		}
	}

	// °´Ã¼ ÇÑ°Ç Á¶È¸
	@SuppressWarnings("rawtypes")
	protected Object selectOne(String sql, Iterable<String> param, Class<?> clazz) {
		try {
			List result = this.selectAll(sql, param, clazz);
			if (result.size() != 0)
				return this.selectAll(sql, param, clazz).get(0);
		} catch (Exception e) {
			return null;
		}
		return null;
	}

	// °´Ã¼ ¸®½ºÆ® Á¶È¸
	@SuppressWarnings("unchecked")
	protected List<?> selectAll(String sql, Iterable<String> param, Class<?> clazz) {
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		ResultSetMetaData rsmd = null;
		@SuppressWarnings("rawtypes")
		List result = new ArrayList();
		try (Connection conn = DriverManager.getConnection(url, uid, pwd);) {
			pstmt = conn.prepareStatement(sql);
			int i = 0;
			if (param != null) {
				Iterator<String> inputParams = param.iterator();
				while (inputParams.hasNext())
					pstmt.setString(++i, inputParams.next());
			}
			rs = pstmt.executeQuery();
			rsmd = rs.getMetaData();
			while (rs.next()) {
				Object resultIns = clazz.newInstance();
				for (int j = 1; j <= rsmd.getColumnCount(); j++) {
					Field field = clazz.getDeclaredField(rsmd.getColumnName(j));
					field.setAccessible(true);
					fieldSet(field, resultIns, rs, j);
				}
				result.add(resultIns);
			}
			closeAll(conn, pstmt, rs);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			closeAll(null, pstmt, rs);
			return null;
		}
	}

	private void closeAll(Connection c, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
			}
		}
		if (c != null) {
			try {
				c.close();
			} catch (Exception e) {
			}
		}
	}

	private void fieldSet(Field field, Object resultIns, ResultSet rs, int j)
		throws IllegalArgumentException, IllegalAccessException, SQLException {
		if (field.getType() == Long.TYPE) {
			field.set(resultIns, rs.getLong(j));
		} else if (field.getType() == Integer.TYPE) {
			field.set(resultIns, rs.getInt(j));
		} else if (field.getType() == Date.class) {
			field.set(resultIns, rs.getDate(j));
		} else if (field.getType() == String.class) {
			field.set(resultIns, rs.getString(j));
		}
	}
}
