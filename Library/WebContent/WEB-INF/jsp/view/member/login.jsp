<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 로그인 화면</title>
</head>
<body>
 <div align="center">
<jsp:include page="../main/menu.jsp" />
 	<div><h1>로그인 화면</h1></div>
	<form id="frm" name="frm" action="login.do" method="post">
	<div>
		<table border="1">
			<tr>
				<th width="100">아 이 디</th>
				<td width="150"><input type="text" id="memberId" name = "memberId" value=${vo.memberId } ><br></td>
			</tr>
			<tr>
				<th width="100">패스워드</th>
				<td width="150"><input type="password" id="memberPassword" name = "memberPassword" value="${vo.memberPassword }" ></td>	
			</tr>
		</table>
	</div><br>
	<div>
		<input type = "submit" value="로그인">&nbsp;&nbsp;&nbsp;
		<input type = "submit" onclick="location.href='memberJoinForm.do'" value="회원 가입">&nbsp;&nbsp;&nbsp;
		<button type="button" onclick="location.href='main.do'">홈 가기</button>
	</div>	
	</form>
 </div>	 
</body> 
</html>