package co.micol.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.member.common.Command;

public class MemberPage implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 멤버 대여 목록페이지
		
		String viewPage = "view/member/memberPage";
		
		return viewPage;
	}

	
}
