package jspBoard.board.controller;

public class ForwardFactory {
	final String PRE_FIX = "/WEB-INF/view";
	final String SUF_FIX = ".jsp";

	public ActionForward getForward(boolean redirect, String path) {
		ActionForward forward = new ActionForward();
		forward.setNextPath(PRE_FIX + "//" + path + SUF_FIX);
		forward.setRedirect(redirect);
		return forward;
	}
}
