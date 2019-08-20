<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,Model.DTO.YYYDTO.*" %>
<%
	List<MapSmall> list = (List<MapSmall>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>렌트카 선택</h2>
		<select id="mapSmall" name="mapSNum" onchange="mapSmall(this.value)">

		<% for(MapSmall cc : list) { %>
		
		 <option value= "<%= cc. getMapSNum() %>"> <%= cc.getMapSName() %></option>
		
		<% } %>
</body>
</html>