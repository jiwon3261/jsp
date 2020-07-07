package jspBoard.board.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface AjaxAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException;
}