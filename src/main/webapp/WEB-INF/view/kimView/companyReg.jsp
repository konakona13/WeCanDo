<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	response.setCharacterEncoding("utf-8");
 %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	기업회원 가입 승인
	<div>
		<table border ="1" >
        	<tr><td><input type="checkbox" name = "chkCompany">
				<td>기업회원번호</td>
				<td>기업회원분류</td>
                <td>기업회원이름</td>
                <td>담당자</td>
                <td>연락처</td>
                <td>승인상태</td>                      
             </tr>
<c:if test="${! empty kendoJoins}">                
	<c:forEach var="kendoJoin" items="${kendoJoins}">
            <tr>
                <td>${kendoJoin.doNum}</td>
                <td>${kendoJoin.doName}</td>  
                <td>${kendoJoin.doStartDate}</td>  
                <td>${kendoJoin.doEndDate}</td>   
                <td>${kendoJoin.doStatus}</td>    
             </tr>
	</c:forEach>
</c:if>               
		</table>     
	</div>
	
	<div>
<c:if test="${empty kendoJoins}">
미승인 내역이 없습니다.
</c:if>
	</div>

<br/>               

        
<a href="kim" >메인</a>
</body>
</html>