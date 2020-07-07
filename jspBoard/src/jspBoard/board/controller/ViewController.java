package jspBoard.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspBoard.board.model.dataAccess.board.BoardDeleteModel;
import jspBoard.board.model.dataAccess.board.BoardOneViewModel;
import jspBoard.board.model.dataAccess.board.BoardSaveModel;
import jspBoard.board.model.dataAccess.board.BoardViewModel;
import jspBoard.board.model.dataAccess.reply.ReplyDeleteModel;
import jspBoard.board.model.dataAccess.reply.ReplySaveModel;
import jspBoard.board.model.dataAccess.reply.ReplyUpdateModel;
import jspBoard.board.model.dataAccess.reply.ReplyViewModel;
import jspBoard.board.model.dataAccess.user.DupIdModel;
import jspBoard.board.model.dataAccess.user.JoinModel;
import jspBoard.board.model.dataAccess.user.LoginModel;
import jspBoard.board.model.dataAccess.user.LogoutModel;
import jspBoard.board.model.view.IndexViewModel;

/**
 * Servlet implementation class ViewController
 */
public class ViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ViewController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		String command = getPath(request);
		ActionForward forward = null;

		// 뷰 핸들링
		if (command.equals("index.do")) {
			forward = new IndexViewModel().execute(request, response);
		}

		// ajax 처리
		// user
		if (command.equals("joinSuccess.do")) {
			new JoinModel().execute(request, response);
		} else if (command.equals("dupId.do")) {
			new DupIdModel().execute(request, response);
		} else if (command.equals("loginSuccess.do")) {
			new LoginModel().execute(request, response);
		} else if (command.equals("logoutSuccess.do")) {
			forward = new LogoutModel().execute(request, response);
		}

		// board
		if (command.equals("boardSave.do")) {
			new BoardSaveModel().execute(request, response);
		} else if (command.equals("boardView.do")) {
			new BoardViewModel().execute(request, response);
		} else if (command.equals("boardOneView.do")) {
			new BoardOneViewModel().execute(request, response);
		} else if (command.equals("deleteBoard.do")) {
			new BoardDeleteModel().execute(request, response);
		}

		if (command.equals("replySave.do")) {
			new ReplySaveModel().execute(request, response);
		} else if (command.equals("replyView.do")) {
			new ReplyViewModel().execute(request, response);
		} else if (command.equals("replyDelete.do")) {
			new ReplyDeleteModel().execute(request, response);
		} else if (command.equals("replyUpdate.do")) {
			new ReplyUpdateModel().execute(request, response);
		}

		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getNextPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getNextPath());
				dispatcher.forward(request, response);
			}
		}
	}

	private String getPath(HttpServletRequest request) {
		String requestURI = request.getRequestURI();
		int cmdIdx = requestURI.lastIndexOf("/") + 1;
		return requestURI.substring(cmdIdx);
	}
}
