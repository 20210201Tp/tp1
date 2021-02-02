package co.micol.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.member.common.Command;
import co.micol.member.dao.MemberDao;

public class IdCheck implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// �ߺ�üũ
		
		MemberDao dao = new MemberDao();
		String id = request.getParameter("memberId");
		boolean bool = dao.isIdCheck(id);
		String message = null;
		if(bool) {
			message = id + "��밡���� ���̵�";
		}else {
			message = id + "��� �Ұ� ���̵�";
		}
		request.setAttribute("msg", message);
		request.setAttribute("check", bool);
		
		
		return "view/member/idCheck";
	}

}
