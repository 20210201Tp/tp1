package co.micol.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.member.common.Command;

public class Logout implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// ·Î±×¾Æ¿ô
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		return "main.do";
	}

}
