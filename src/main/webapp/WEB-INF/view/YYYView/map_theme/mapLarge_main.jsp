<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*,Model.DTO.YYYDTO.*" %>
<%
	List<MapLarge> result = (List<MapLarge>)request.getAttribute("result");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/mybatis-spring-smrit/js/jquery.form.js"></script>
<script type="text/javascript">
	function mapLarge(val){
		$.ajax({
			type:"POST",
			url :"mapM",
			data: "mapLNum=" +val,
			datatype: "html",
			success: function(data1){
				$("#mapMedium").html(data1);
				$("#mapSmall").html("");//a���̺� ���� ����� c���̺� �������ʵ���
			}
		});
	}
	
	function bb2(val){
		var aval = $("#mapLarge").val(); // a���̺��� aNum ��������
		$.ajax({
			type:"POST",
			url :"mapS",
			data: "mapMNum=" +val + "& mapLNum="+ aval ,
			datatype: "html",
			success: function(data){ 
				$("#mapSmall").html(data); //aNum �����ͼ� c���̺� �ѱ��
			}
		});
		
	}

</script>
</head>
<body>


<div>
	<h2>Ȱ����� ����</h2>
	<select id="mapLarge" name="mapLNum" onchange="mapLarge(this.value)"> <!-- this.value�� <option value="1"> ��  value���� ���� -->
	
		<% for(MapLarge aa : result ) { %>
		
		 <option value= "<%= aa. getMapLNum() %>"> <%= aa.getMapLName() %></option>
		
		<% } %>

	</select>
</div>

	
	<div id="mapMedium"></div>
	<div id="mapSmall"></div>

<!-- <select name='MapLarge'>
  <option value='' selected>-- �������� --</option>
  <option value='����'>����</option>
  <option value='���'>���</option>
  <option value='��õ'>��õ</option>
  <option value='��õ'>����</option>
  <option value='��õ'>�뱸</option>
  <option value='��õ'>�λ�</option>
  <option value='��õ'>����</option>
  <option value='��õ'>����</option>
</select> -->




</body>
</html>