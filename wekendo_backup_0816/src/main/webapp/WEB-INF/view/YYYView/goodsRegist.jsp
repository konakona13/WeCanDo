<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" 
				uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src = "js/jquery.form.js"></script>
<script>
	$(function(){
		$.ajax({
			type:"POST",
			url :"mapL",
			datatype: "html",
			success: function(data1){
				$("#mapLarge_main").html(data1);
			}
		});
	})

</script>
</head>
<body>
<form:form action="GoodsRegAction" name="frm" id="frm" method="POST" commandName="placeRegCommand">
<h3> ��� ��ǰ ��� <h3>
<br><br><br>
��������<br> <div id = "mapLarge_main"> </div>  
	 <br>
�׸�����<br> <a href="theme"></a> <br>
��ǰ��: <form:input path="goodsName" id="goodsName" placeholder=""/><br><br>
���� �̹���: <input type= "file" id="goodsMainImg" /><br><br>
�� �̹���: <input type= "file" id="goodsDetailImg" /><br><br>
�󼼳��� : <form:input path = "goodsDetail" placeholder=""/><br><br>
���ǻ��� : <form:input path = "goodsDanger" placeholder="ex: ���� ������ �޹�"/><br><br>
���� : <form:input path = "goodsStock" placeholder=""/><br><br>
��ǰ�ݾ� : <form:input path = "goodsPrice" placeholder=""/><br><br>

<input type ="submit" value="��Ͻ�û" id="submit1" />
<input type="reset" name="reset" value="�ٽ��ۼ�">
<input type ="button" value="��Ͼ���"	onclick="javascript:location.href='goodsMain'" />

</form:form>

</body>
</html>