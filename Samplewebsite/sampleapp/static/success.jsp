<!DOCTYPE html>
<html lang="en">
<head>
<style>
@import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300);
body{
padding:0;
margin:0;
background: url("back.jpg");
    background-size: 100% auto;
    background-repeat: no-repeat;
}

#main{
width:100%;
height:600px;
position:relative;
top:50px;
border-radius:6px;
margin: auto;
font-family: 'Source Sans Pro', sans-serif;
box-shadow:-2px 5px 25px #565858;
overflow:hidden;
text-align:center;

}

#formdata{
width:100%;
height:600px;
background:#51B1A3;
color:#fff;
float:left;
ovreflow:hidden;

}
h1{
font-size:28px;
padding-top:10px;
padding-left:20px;
}
h2{
font-size:22px;
font-family: 'Source Sans Pro', sans-serif;
padding-left:20px;
}
#unametb{
width:200px;
height:30px;
text-align:center;
border:0px solid #222;
border-radius:4px;
background:#D3D7DB;
margin-left:20px;
}
#unametb:hover ,#unametb:focus{
width:250px;
height:30px;

border-radius:4px;
background:#fff;
text-align:center;
box-shadow:2px 2px 20px #565858;
}
#pwordtb{
width:200px;
height:30px;
border:0px solid #222;
border-radius:4px;
text-align:center;
background:#D3D7DB;
margin-left:20px;
}
#pwordtb:hover, #pwordtb:focus{
width:250px;
height:30px;
text-align:center;
border-radius:4px;
background:#fff;
box-shadow:2px 2px 20px #565858;
}
#submitbtn{
background:#fff;
border:0px;
width:200px;
height:30px;
text-align:center;
margin-left:20px;
margin-top:20px;
color:#51B1A3;
font-family: 'Source Sans Pro', sans-serif;
font-size:16px;
font-weight:bold;
border-radius:4px;

}
#submitbtn:hover, #submitbtn:focus{
background:#fff;
border:0px;
width:250px;
height:30px;
text-align:center;


font-family: 'Source Sans Pro', sans-serif;
font-size:16px;
font-weight:bold;
box-shadow:2px 2px 20px #565858;

}
#userimg{
	width:300px;
	height:400px;
box-shadow:2px 2px 20px #565858;
}
</style>

</head>
<body>
<div id="main">

<div id="formdata">
<h1>Welcome <%=session.getAttribute("uname") %></h1>

<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.naming.*,java.sql.*,javax.sql.* ,java.io.PrintWriter" %>


<%
		Connection con = null;  
		PreparedStatement st = null;
		PreparedStatement sta = null;

 		ResultSet rs=null;
		ResultSet rsa=null;

		response.setContentType("text/html");
            PrintWriter prw=response.getWriter();
	
       String database=(String)session.getAttribute("dbase");
        


        try {
		      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:logindsn1");


 
              st = con.prepareStatement("select * from"+" " +database);

 		 //st.setString(1,database);
              
		
                 

           rs=st.executeQuery();
		
		if(rs.next())
                  {
			String a= rs.getString(1);
			String b= rs.getString(2);
			String c= rs.getString(3);
			session.setAttribute("dabase",a);
			session.setAttribute("dbbase",b);
			session.setAttribute("dcbase",c);
			
			
                       // prw.println("<h3>welcome " +" " + un +"</h3>");
                        //RequestDispatcher rd1=request.getRequestDispatcher("success.html");
                        //rd1.include(request,response);
                        //or
                     
                       
                        
                  }
                  else
                  {
                        prw.println("<center><h3>invalid username/password Enter Correct username/password</h3></center>");
                        RequestDispatcher rd2=request.getRequestDispatcher("Login.html");
                        rd2.include(request,response);
                        //or
                        //response.sendRedirect("Login.html");
                  }
              



        } 
		
      
		
		catch (Exception e) { 
		    // out.println("Error.."+e);
		}

       
%>

<table cellspacing="10">
<tr>
<td>
<%=session.getAttribute("dabase") %>
</td>
<td>
<%=session.getAttribute("dbbase") %>
</td>
<td>
<%=session.getAttribute("dcbase") %>
</td>
</tr>
<tr>
<td>
<%=session.getAttribute("dabase") %>
</td>
<td>
<%=session.getAttribute("dbbase") %>
</td>
<td>
<%=session.getAttribute("dcbase") %>
</td>
</tr>
</table>






</div>

</div>
</body>
</html>