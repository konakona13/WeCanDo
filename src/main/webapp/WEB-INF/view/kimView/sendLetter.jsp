<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <h3>활동선택확인</h3>
        <p>
<form name="frm" action="sendLetterAction" method="POST">
<div>

	<table border ="1">
		<tr>
			<td>보내는 사람 </td>
			<td><input type="text" name = "letterSender"></td>
		</tr>
		<tr>
			<td>받는 사람 </td>
			<td><input type="text" name = "letterReceiver"></td>
		</tr>
		<tr>
			<td>내용 </td>
			<td><input type="text" name = "letterContent"></td>
		</tr>		
	</table>
</div>
<input type = "submit" value = "발송" name = "sendLetterAction"/>
 </form>
</body>
</html>