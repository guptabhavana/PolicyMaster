<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Congratulations !!!!</h1>
Your Policy has been Successfully Generated.
<%PostPremiumDetails finalresponse=(PostPremiumDetails) session.getAttribute("finalresponse"); %>
<h1>Response : <%= finalresponse.getMessage() %></h1>
<h1>PolicyNumber : <%= finalresponse.getPolicyNumber() %></h1>
<h1>PolicyID : <%= finalresponse.getPolicyID()%></h1>

<!-- <form name='form' action='http://168.87.83.122:8180/Home/GetPolicySchedulePDF' method='post'>
<input type="submit" value="Click for Policy-PDF">
</form> -->
<a href="https://api.libertyinsurance.in/Home/GetPolicySchedulePDF">Click for Policy-PDF</a>
<!-- <a href="http://168.87.83.122:8180/Home/GetPolicySchedulePDF">Click for Policy-PDF</a> -->
</body>
</html>