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
            $("#mapMain").html(data1);
         }
      });
      $.ajax({
         type:"POST",
         url :"themeL",
         datatype: "html",
         success: function(data1){
            $("#themeMain").html(data1);
         }
      });
   })

</script>
</head>
<body>
<form:form action="GoodsRegAction" name="frm" id="frm" method="POST" commandName="placeRegCommand">
<h3> 장소 상품 등록 <h3>
<br><br><br>
지역선택<br> <div id = "mapMain"> </div>  
    <br>
테마선택<br> <div id = "themeMain"> </div>  <br>
상품명: <form:input path="goodsName" id="goodsName" placeholder=""/><br><br>
메인 이미지: <input type= "file" id="goodsMainImg" /><br><br>
상세 이미지: <input type= "file" id="goodsDetailImg" /><br><br>
상세내용 : <form:input path = "goodsDetail" placeholder=""/><br><br>
주의사항 : <form:input path = "goodsDanger" placeholder="ex: 매주 월요일 휴무"/><br><br>
수량 : <form:input path = "goodsStock" placeholder=""/><br><br>
상품금액 : <form:input path = "goodsPrice" placeholder=""/><br><br>

<input type ="submit" value="등록신청" id="submit1" />
<input type="reset" name="reset" value="다시작성">
<input type ="button" value="등록안함"   onclick="javascript:location.href='goodsMain'" />

</form:form>

</body>
</html>