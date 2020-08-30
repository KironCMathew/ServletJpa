<%@page import="com.dao.Dao"%>
<%@page import="com.model.Book"%>
<%@page import="java.util.List"%>
<%@ page import=" javax.persistence.EntityManager,
 javax.persistence.EntityManagerFactory,
 javax.persistence.Persistence"
 %>
<html>
<body>
<h2>Library Form</h2>
<form action="Controller" name="post">
Library Id :<br>
<input type= "text" name ="libraryId"> <br> <br>
Library Name: <br>
<input type= "text" name ="libraryName"> <br> <br>
Book Name : <br>
<input type ="text" name= "bookName"><br> <br>
Book Id: <br>
 <input type ="text" name="bookId"><br> <br>
Publisher :<br>
 <input type="text" name="publisher"><br> <br>
Author: <br>
<input type="text" name="author"><br><br>
<input type ="submit"> 
<br> 
</form>
<form action="FindController" name="get">
Find by id: <br>
<input type="text" name="bookId"> <br> <br>
<input type ="submit"> 
</form>
<table border="2">
<tr>
<th> Library Id </th>
<th> Library Name </th>
<th> Book Name </th>
<th> Book Id </th>
<th> Publisher </th>
<th> Author </th>
</tr>

<% 
Dao dao = new Dao();
List<Book> books = dao.showAllBooks();
			%> 
			<% 
				for (Book b : books) { 
			%> 
			<tr> 
				<td><%=b.getLibrary().getLibraryId()%></td> 
				<td><%=b.getLibrary().getLibraryName()%></td> 
				<td><%=b.getBookName()%></td> 
				<td><%=b.getBookId()%></td> 
				<td><%=b.getPublisher()%></td> 
				<td><%=b.getAuthor()%></td>
				<td>
                <form action:"UpdateController" name="post">
                <a href="update.jsp?bookId=<%=b.getBookId()%>">Update</a></div>
                </form>
                </td>
                <td>
                <form action:"DeleteController" name="get">
                <a href="DeleteController?bookId=<%=b.getBookId()%>">Delete</a></form>
                 </td>
			</tr> 
			<% 
				} 
			%> 
</table>
</body>
</html>

