<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
<%@page import="java.sql.*,java.util.*"%>
<!-- Go to DisplayData.jsp for display the records  use jsp database and student table -->
<%
String Student_name=request.getParameter("Student_name");
String Student_address=request.getParameter("Student_address");
String Student_age=request.getParameter("Student_age");

try
{

   Class.forName("com.mysql.jdbc.Driver");

   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Javaaugust", "root",
			"vaibh@7055");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into Student(Student_name,Student_address,Student_age)values('"+Student_name+"','"+Student_address+"','"+Student_age+"')");
           out.println("Data is successfully Inserted....!");
        
        

        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>