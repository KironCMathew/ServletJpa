<%@page import="com.model.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Book</title>
</head>
<body>
<%
Book book =(Book) request.getAttribute("book");
%>
<br>
<br>
<table border="2">
<tr>
<th> Library Id </th>
<th> Library Name </th>
<th> Book Name </th>
<th> Book Id </th>
<th> Publisher </th>
<th> Author </th>
</tr>
<tr>
  <td><%=book.getLibrary().getLibraryId()%></td> 
  <td><%=book.getLibrary().getLibraryName()%></td> 
  <td><%=book.getBookName()%></td> 
  <td><%=book.getBookId()%></td> 
  <td><%=book.getPublisher()%></td> 
  <td><%=book.getAuthor()%></td>
</tr>
</table>
<br> <br>
<a href= "index.jsp"> Go to Home </a>
</body>
</html>