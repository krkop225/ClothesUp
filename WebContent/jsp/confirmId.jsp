<%@page import="kr.ac.cu.dao.PersonDAO"%>
<%@page import="kr.ac.cu.service.Impl.PersonServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="kr.ac.cu.service.PersonService"%>
<%@ page import="kr.ac.cu.vo.PersonVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ID �ߺ�Ȯ��</title>



</head>
<body>
	<%
		String id = request.getParameter("pid");
		String check = request.getParameter("check");
		System.out.println("*****check : " + check);
		System.out.println("pid " + id);

		if ("false".equals(check)) {
	%>
	<b><font color="red"><%=id%></font>�� �̹� ������� ���̵��Դϴ�.</b>
	<form action="checkIdForm" method="post">
		<b>�ٸ� ���̵� �����ϼ���.</b><br /> 
		<input type="text" id="pid" name="pid">
		<input type="submit" value="ID�ߺ�Ȯ��">
	</form>
	<%
		} else {
	%><center>
		<b>�Է��Ͻ� ���̵�<font color="red"><%=id%></font>��<br /> ����Ͻ� �� �ִ� ID�Դϴ�.
		</b> <input type="button" value="�ݱ�" onclick="setid()">
	</center>
	<%
		}
	%>
	
		<script>
	function setid()
	{
		self.close();
	}
	</script>

</body>
</html>
