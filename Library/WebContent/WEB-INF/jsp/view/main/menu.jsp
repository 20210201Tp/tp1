<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="main.do" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">목 록<i class="fa fa-caret-down"></i></button>
      
      
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
      <c:if test="${empty vo.memberId }">
        <a href="loginForm.do" class="w3-bar-item w3-button">로그인</a>
        <a href="memberJoinForm.do" class="w3-bar-item w3-button">회원가입</a>
        <a href="memberPage.do" class="w3-bar-item w3-button">마이페이지</a>
        </c:if>
        <c:if test="${not empty vo.memberId }">
        <a href="logout.do" class="w3-bar-item w3-button">로그아웃</a>
        </c:if>
      </div>
     
    </div>
    
   
    <c:if test="${not empty vo.}">   
    <div class="w3-dropdown-hover w3-hide-small">
      <button class="#" title="More">도서목록<i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="#" class="w3-bar-item w3-button">도서관리</a>
        <a href="#" class="w3-bar-item w3-button">도서등록</a>
        <a href="#" class="w3-bar-item w3-button">회원관리</a>
      </div>
    </div>
    </c:if>
  </div>
</div>



