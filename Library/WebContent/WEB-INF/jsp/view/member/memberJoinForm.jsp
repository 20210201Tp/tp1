<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script type="text/javascript">
	function formCheck(){
		if(frm.memberPassword.value != frm.memberPassword1.value){
			alert("패스워드 불일치");
			frm.memberPassword.value = null;
			frm.memberPassword1.value = null;
			frm.memberPassword.focus();
			return false;
		}
		return true;
	}
	
	function idCheck(str){
		var url = "idCheck.do?memberId="+str;
		if(str == ""){
			alert("아이디 입력하시오");
			frm.memberId.focus();
		}else{
			window.open(url,"아이디 중복확인", "width=400,heigth=300, top=100, left=100");
		}
	}


</script>
</head>
<body>
<div align="center">
	<h1>회원가입</h1>
 <div>
	<form id="frm" name="frm" onsubmit="formCheck()" action="memberJoin.do" method="post">
	 <div>
		<table border="1">
			<tr>
				<th width="150">아이디 :</th>
				<td width="250">
					<input type="text" id="memberId" name="memberId" size="20" required="required">
					<button type="button" onclick="idCheck(memberId.value)">중복체크</button>
				</td>	
			</tr>
			<tr>
				<th width="150">회원 명 :</th>
				<td width="200">
					<input type="text" id="memberName" name="memberName" size="20" required="required">
					</td>
			</tr>		
			<tr>
				<th width="150">비밀번호 :</th>
				<td width="200">
					<input type="password" id="memberPassword" name="memberPassword" size="20" required="required"></td>
			</tr>		
			<tr>
				<th width="150">비밀번호 확인 :</th>
				<td width="200"><input type="password" id="memberPassword1" name="memberPassword1" size="20" required="required"></td>
			</tr>		
			<tr>
				<th width="150">전화번호 :</th>
				<td width="200">
					<input type="text" id="memberTel" name="memberTel" size="20" required="required"></td>
			</tr>  
			<tr>
				<th width="150">회원 주소 :</th>
				<td width="200">
					<input type="text" id="memberAddress" name="memberAddress" size="20" required="required"></td>
			<tr>
		</table>
	  </div>	
	  	<div>
	  			<input type="submit" value="회원가입">&nbsp;&nbsp;&nbsp;
	  			<input type="reset" value="가입취소">&nbsp;&nbsp;&nbsp;
	  			<button type="button" onclick="location.href='main.do'">홈 가기</button>
	  	</div>
	 </form>		
	</div>
</div>	
</body>
</html>