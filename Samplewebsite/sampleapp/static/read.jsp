



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
        String un = request.getParameter("uname");
        String pw = request.getParameter("pword");
        


        try {
		      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:logindsn1");



              st = con.prepareStatement("select * from userdata where name=? and password=?");

 		 st.setString(1,un);
                 st.setString(2,pw);
		
                 

           rs=st.executeQuery();
		
		if(rs.next())
                  {
			
			String db= rs.getString(5);
			String em= rs.getString(6);
			
			
			session.setAttribute("uname",un);
			session.setAttribute("dbase",db);
			
                        prw.println("<h3>welcome " +" " + un +"</h3>");
                        //RequestDispatcher rd1=request.getRequestDispatcher("success.html");
                        //rd1.include(request,response);
                        //or
                        response.sendRedirect("success.jsp");
                       
                        
                  }
                  else
                  {
                        prw.println("<center><h3>invalid username/password Enter Correct username/password</h3></center>");
                        RequestDispatcher rd2=request.getRequestDispatcher("Login.html");
                        rd2.include(request,response);
                        //or
                        //response.sendRedirect("Login.html");
                  }
              st.clearParameters(); 



             st.close();
             con.close();
        } 
		
      
		
		catch (Exception e) { 
		     out.println("Error.."+e);
		}

       
%>



