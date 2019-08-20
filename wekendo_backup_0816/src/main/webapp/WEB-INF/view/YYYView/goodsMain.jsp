<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>

<c:if test="${! empty list}">

<tr align="center" valign="middle">
      <td colspan="3">상품 목록</td>
   </tr>
   
   <tr align="center" valign="middle" bordercolor="#333333">
      <td style="font-family:Tahoma;font-size:8pt;" width="8%" height="26">
         <div align="center">상품번호</div>
      </td>
      <td style="font-family:Tahoma;font-size:8pt;" width="50%">
         <div align="center">제목</div>
      </td>
      <td style="font-family:Tahoma;font-size:8pt;" width="14%">
         <div align="center">작성자</div>
      </td>
      <td style="font-family:Tahoma;font-size:8pt;" width="17%">
         <div align="center">날짜</div>
      </td>
	  <td style="font-family:Tahoma;font-size:8pt;" width="17%">
         <div align="center">승인상태</div>
      </td>
   </tr>
   <tr align="right">
      <td colspan="5">
            <a href="GoodsReg">[글쓰기]</a>
      </td>
   </tr>

<c:forEach var="hotplace" items="${list}">
   <tr align="center" valign="middle">
      <td height="23" style="font-family:Tahoma;font-size:10pt;">
         ${list.goodsNum}
      </td>
      
      <td style="font-family:Tahoma;font-size:10pt;">
         <div align="left">

         
         <a href="./GoodsRegDetail.goods?num=${list.goodsNum}">
         <img  width=50% alt="" src="YYYView/fileupload/${list2.goodsImgName}">&nbsp;
		 ${list.goodsName }         
         </a>
         </div>
      </td>
      
      <td style="font-family:Tahoma;font-size:10pt;">
         <div align="center">${list.memberId}</div>
      </td>
      <td style="font-family:Tahoma;font-size:10pt;">
         <div align="center">
         <fmt:formatDate value="${list.companyNum}" 
				type="Date" />
         </div>
      </td>   
            <td style="font-family:Tahoma;font-size:10pt;">
         <div align="center">
         <fmt:formatDate value="${list.companyNum}" 
				type="Date" />
         </div>
      </td>   
   </tr>
</c:forEach>
</c:if>

 </table>
 
</body>
</html>