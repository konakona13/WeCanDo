<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div>
        <h3>활동결제</h3>
        <p>
        <form name="frm" action="payDone" method="POST">
            활동번호 :  <br /> 
            활동이름 :  <br />
            수     량  :  <br />  
            결제금액 :  <br />
                        결제수단 :
            <select name="payStyle">
	            <option value="card">신용카드</option>
	            <option value="qrcode">카카오 QR결제</option>
            </select>    
            <br />            
            카드사명 : 
            <select name="payCardName">
                <option value="shCard">신한카드</option>
                <option value="bcCard">비싸카드</option>
                <option value="ssCard">삼성카드</option>
                <option value="kbCard">국민카드</option>
                <option value="hdCard">현대카드</option>
                <option value="ldCard">롯데카드</option>
                <option value="wlCard">우리카드</option>
                <option value="hnCard">하나카드</option>
            </select> 
            <br />
            카드번호 : <input type="text" name = "payCardNum"> <br />
     CVC번호 : <input type="text" name = "payCvcNum"><br />
            유효날짜 :  <input type="text" name = "payDate"><br />
    	</p> 
    	
        	<input type = "submit" value = "결제하기" name = "guestPay"/>
        </form>
    </div>
</body>
</html>