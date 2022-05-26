<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.List" %>
<%@ page import = "com.javaex.dao.PhoneDao" %>
<%@ page import = "com.javaex.vo.PersonVo" %>

<%
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");

	PersonVo personVo = new PersonVo(name, hp, company);
	PhoneDao phoneDao = new PhoneDao();
	
	phoneDao.dbInsert(personVo);
	
	List<PersonVo> pList = phoneDao.dbSelect();
	
	response.sendRedirect("./list.jsp");

%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>