<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- For display the data from database -->

<h1 align="center" style='color:grey' >Students Information</h1>
<table border="20" class="center">
<tr>
<td >Student Id</td>
<td>Student name</td>
<td>Student address</td>
<td>Student age</td>
<style>
        table,
        tr,
        td {
            border: 3px solid black;
            border-collapse: collapse;
            padding: 10px;
            font-size:20px
        }
        .center{
        margin-left:auto;
        margin-right:auto;
        }
</style>


</tr>
<%
try

{
 
 
	Class.forName("com.mysql.jdbc.Driver");

	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Javaaugust", "root",
			"vaibh@7055");

    
   String sql ="select * from Student";
   PreparedStatement ps=con.prepareStatement(sql);
   ResultSet rs=ps.executeQuery();
  
    while(rs.next()){
%>
<tr>
<td><%=rs.getString("Student_id") %></td>
<td><%=rs.getString("Student_name") %></td>
<td><%=rs.getString("Student_address") %></td>
<td><%=rs.getString("Student_age") %></td>

</tr>
<%
}
//connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 

</body>
</html>