<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="GoodsDetailAction" name="detail" id="detail" method="POST" >
<h3> 등록 상세 <h3>
<br><br><br>
지역:  <a> ${} <br>
테마:  ${} </a> <br>
상품명: ${} <br><br>
메인 이미지: ${} <br><br>
상세 이미지: ${} <br><br>
상세내용 : ${}<br><br>
주의사항 : ${} <br><br>
수량 : ${}<br><br>
상품금액 : ${}<br><br>

<a href="BoardModify.bo?num=${board.boardNum }">[수정]</a>&nbsp;&nbsp;
<a href="BoardDelete.bo?num=${board.boardNum}">	[삭제]</a>&nbsp;&nbsp;
<a href="./board_list.bo">[목록]</a>&nbsp;&nbsp;

</form>




</body>
</html>