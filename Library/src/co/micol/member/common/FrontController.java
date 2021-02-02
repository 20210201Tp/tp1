package co.micol.member.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.member.web.MemberPage;
import co.micol.member.web.IdCheck;
import co.micol.member.web.Login;
import co.micol.member.web.LogoinForm;
import co.micol.member.web.Logout;
import co.micol.member.web.MainCommand;
import co.micol.member.web.MemberJoin;
import co.micol.member.web.MemberJoinForm;


@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private HashMap<String, Command> map = new HashMap<String, Command>();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }
 
    
    
    
    
	public void init(ServletConfig config) throws ServletException {
		map.put("/main.do", new MainCommand()); //메인화면
		map.put("/loginForm.do", new LogoinForm());//로그인 화면
		map.put("/login.do", new Login());//로그인 확인
		map.put("/logout.do", new Logout());//로그아웃
		map.put("/memberJoinForm.do", new MemberJoinForm()); // 회원 가입
		map.put("/memberJoin.do", new MemberJoin());
		map.put("/memberPage.do", new MemberPage()); // 멤버 페이지
		map.put("/idCheck.do", new IdCheck()); // 중복확인
	}
		 
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String contextPath = request.getContextPath();
		String uri = request.getRequestURI();
		String path = uri.substring(contextPath.length()); 
		
		Command command = map.get(path); 
		String viewPage = command.execute(request, response);
		
		if(!viewPage.endsWith(".do")) viewPage = "/WEB-INF/jsp/" + viewPage + ".jsp"; 

		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
