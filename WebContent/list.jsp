<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.List" %>      
<%@ page import = "com.javaex.dao.PhoneDao" %>   
<%@ page import = "com.javaex.vo.PersonVo" %>   


<%	
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> pList = phoneDao.dbSelect();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>전화번호 리스트</h1>
<br>
<p>입력한 정보 내역입니다.</p>

<% for (int i=0; i<pList.size(); i++){  %>
	<table border = '1'>
		<tr>
			<td>이름(name)</td>
			<td><%=pList.get(i).getName()%></td>
		</tr>
		<tr>
			<td>핸드폰(hp)</td>
			<td><%=pList.get(i).getHp()%></td>
		</tr>
		<tr>
			<td>회사(company)</td>
			<td><%=pList.get(i).getCompany()%></td>
		</tr>
		<tr>
			<td><a href = "./delete.jsp?id=<%=pList.get(i).getPersonId()%>">삭제</a></td>
		</tr>
	</table>
	<br>
<%}%>
<a href = "./insertForm.jsp">추가번호 등록</a>

</body>
</html>