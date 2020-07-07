package jspBoard.board.util;

import java.io.File;

public class FileExtractor {
	public static String extract(File file) {
		String originFilePath = file.getPath();
		int slash = originFilePath.lastIndexOf("\\") + 1;
		return originFilePath.substring(slash, originFilePath.length());
	}
}