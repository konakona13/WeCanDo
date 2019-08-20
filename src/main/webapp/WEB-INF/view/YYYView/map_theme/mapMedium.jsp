<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,Model.DTO.YYYDTO.*" %>
<%
	List<MapMedium> list = (List<MapMedium>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
	<h2>숙박 선택</h2>
		<select id="mapMedium" name="mapMNum" onchange="mapMedium(this.value)">

		<% for(MapMedium bb : list) { %>
		
		 <option value= "<%= bb. getMapMNum() %>"> <%= bb.getMpaMName() %></option>
		
		<% } %>
	   </select>
	  </div>

<!-- <select name='MapMedium'>
  <option value='' selected>-- 지역선택 --</option>
  <option value='1-1'>강남구</option>
  <option value='1-2'>강동구</option>
  <option value='1-3'>관악구</option>
  <option value='1-4'>구로구</option>
  <option value='1-5'>동대문구</option>
  <option value='1-6'>마포구</option>
  <option value='1-7'>서대문구</option>
  <option value='1-8'>서초구</option>
  <option value='1-9'>송파구</option>
  <option value='1-10'>영등포구</option>
  <option value='1-11'>용산구</option>
  <option value='1-12'>종로구</option>
  <option value='1-13'>서대문구</option>
  <option value='1-8'>중구</option>
  
</select>  -->

</body>
</html>