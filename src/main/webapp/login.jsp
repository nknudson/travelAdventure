<%--
  Created by IntelliJ IDEA.
  User: nataliya.knudson
  Date: 10/18/2016
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="contentType.jsp" />
<jsp:include page="head.jsp" />
<jsp:include page="navigationBar.jsp" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<FORM ACTION="j_security_check" METHOD="POST">
    <TABLE>
        <TR><TD>User name: <INPUT TYPE="TEXT" NAME="j_username">
        <TR><TD>Password: <INPUT TYPE="PASSWORD" NAME="j_password">
        <TR><TH><INPUT TYPE="SUBMIT" VALUE="Log In">
    </TABLE>
</FORM>
</body>
<jsp:include page="contentEnd.jsp" />
<jsp:include page="footer.jsp" />
</html>