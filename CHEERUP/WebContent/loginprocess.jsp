
<%@page import="ExamplePackage.LoginDao"%>  
<jsp:useBean id="obj" class="ExamplePackage.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=LoginDao.validate(obj);  
if(status){  %>
	<jsp:include page="login.jsp"></jsp:include>  
<%session.setAttribute("session","TRUE");  
}  
else  
{  
out.print("Sorry, email o password incorrectos");  
%>  
<jsp:include page="login.jsp"></jsp:include>  
<%  
}  
%>  
