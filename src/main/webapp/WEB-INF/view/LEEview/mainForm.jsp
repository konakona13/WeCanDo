<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
	String msg111 = request.getParameter("msg111");
	if(msg111 == null) msg111 = "";
	boolean isId = false;// 쿠키 여부
	String userid = "";
	Cookie [] cookies = request.getCookies();
	if(cookies != null && cookies.length >0){
		for(Cookie c : cookies)	{
			if(c.getName().equals("id")){
				isId = true;
				userid = c.getValue();
			}else if(c.getName().equals("auto")){
				session.setAttribute("memid", c.getValue());
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="login.title"/> </title>
<script type="text/javascript" 
	src="http://code.jquery.com/jquery-latest.js" ></script>
 <script type="text/javascript" 
 			src="/mybatis-spring-smrit/js/jquery.form.js"></script>
<script type="text/javascript">



	$(function(){
		$("#btn1").click(function(){
			if($("#id1").val() == ""){
				$("#idmsg").html("아이디를 입력하세요.");
				$("#id1").focus();
				return false;
			}
			if($("#pw").val() == ""){
				$("#pwmsg").html("비밀번호를 입력하세요.");
				$("#pw").focus();
				return false;
			}
			$("#frm").submit();
		});
		$("#btn").bind('click',function(){
			var option = {
				type : "POST",
				url : "login_pro.do", //loginPro.jsp
				beforeSubmit : application_check,
				success : application_Ok,
				error : function(){
					
				}
			}
			$("#frm").ajaxSubmit(option);
			return false;
		});
	});
	function application_Ok(responseText, statusText, xhr, $form){
		if(statusText == 'success'){
			if(responseText == '0'){
				$("#msg").html("정보가 부족합니다.");
				document.frm.id1.value = "";
				document.frm.pw.value = "";
				document.frm.id1.focus();
			}else if(responseText == '1'){
				$("#msg").html("아이디가 존재하지 않습니다.");
				document.frm.id1.value = "";
				document.frm.pw.value = "";
				document.frm.id1.focus();
			}else if(responseText == '2'){
				$("#msg").html("비밀번호가 일치하지 않습니다.");
				document.frm.pw.value = "";
				document.frm.pw.focus();
			}else{
				location.href = "main";
			}
		}
	}
	function application_check(){
		if($("#id1").val() == ""){
			$("#idmsg").html("아이디를 입력하세요.");
			$("#id1").focus();
			return false;
		}
		if($("#pw").val() == ""){
			$("#pwmsg").html("비밀번호를 입력하세요.");
			$("#pw").focus();
			return false;
		}	
	}
</script>
</head>
<body>
<!-- 로그인 되지 않았을 때 화면 -->
<%if(session.getAttribute("memid")== null){ %>
<form:form action="loginPro" name="frm" method="post" id="frm" 
commandName="loginCommand">
<table>
	<tr><td colspan=3>회원로그인&nbsp;&nbsp;
	   <span id = "msg"  style="color:red"><%=msg111 %></span></td><tr>
	<tr><td> 아이디 </td>
		<td><input type ="text" id="id1" name="id1" 
				value="<%=userid %>" />
			<form:errors path="id1" />
			<div id = "idmsg"></div>
		</td>
		<td>
			<input type="checkbox" name="idStore" value="store" 
			padding="15px" <% if(isId){ %> checked <%} %> />아이디체크
		</td><tr>
	<tr><td>비밀번호</td>
		<td><input type="password" id="pw" name="pw" />
		<form:errors path="pw" />
		<div id = "pwmsg"></div>
		<td>
			<input type="button" id="btn1" value="<spring:message code="login.btn"/>" 
			padding="15px"/>
			<input type="button" id="btn" value="Ajax를 이용한 전송" 
			padding="15px"/>
		</td>
		</td>
	</tr>
	<tr>
		<td colspan=3>
			자동로그인<input type="checkbox" name="autoLogin" value="auto"/>
			<a href="terms" >회원 가입</a>&nbsp;
			<a href="#" >아이디찾기/비밀번호찾기</a>
		</td>
	<tr>
</table>
</form:form>
<% }else{ %>
<!-- 로그인 된 후의 화면 -->
<%= session.getAttribute("memid") %> 님 환영합니다.<br />
<a href="memberModify" >정보수정</a>
<a href="Logout" >로그아웃</a>
<a href="edit/pwModify" >비밀번호변경</a>
<a href="board_list" >게시글</a>
<a href="member_list" >회원리스트</a>
<a href="goods_list" >상품리스트</a>
<a href="survey" >설문지</a>
<a href="submission" >파일 업로드</a>
<a href="email" >메일보내기</a>
<a href="emailAll" >전체 메일 보내기</a>
<a href="ajaxForm" >Ajax</a>
<a href= "domino" >도미노 속성</a>
<% } %>
</body>
</html>