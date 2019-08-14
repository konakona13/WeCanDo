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
        <h3>활동참가신청</h3>
        <p>
        <form name="frm" action="kendoJoinAction" method="POST">
            <table>
                <tr>
                    <td>활동번호 </td>
                    <td></td>
                </tr>
                <tr>
                    <td>활동구분 </td>
                    <td></td>
                </tr>
                <tr>
                    <td>활동지역 </td>
                    <td></td>
                </tr>
                <tr>
                    <td>이름 </td>
                    <td></td>
                </tr>
                <tr>
                    <td>연락처 </td>
                    <td></td>
                </tr>
                <tr>
                    <td>나이 </td>
                    <td></td>
                </tr>
                <tr>
                    <td>성별 </td>
                    <td></td>
                </tr>
                <tr>
                    <td>주소 </td>
                    <td></td>
                </tr>
                <tr>
                    <td>이메일 </td>
                    <td></td>
                </tr>
                <tr>
                    <td>카카오톡 아이디 </td>
                    <td><input type="text" name = "joinKakaoId"></td>
                </tr>
                <tr>
                    <td>자기소개 </td>
                    <td><textarea name = "joinIntroduce" ></textarea></td>
                </tr>
                <tr>
                    <td>신청수량 </td>
                    <td><input type="number" name = "joinQty" min="1"></td>
                </tr>
            </table>
<hr>
<h3>친구 정보 입력</h3>

         <div>
            <table>
                <tr>
                    <td>친구 이름</td>
                    <td><input type="text" name = "friendName"></td>                       
                </tr>
                <tr>
                    <td>친구 연락처 </td>
                    <td><input type="text" name = "friendPh"></td>    
                 </tr>
                 <tr>
                    <td>친구 나이</td>
                    <td><input type="text" name = "friendAge"></td>    
                 </tr>
            </table>     
        </div>
   
            <input type = "submit" value = "활동참가신청" name = "kendoJoin"/>
        </form>


</body>
</html>