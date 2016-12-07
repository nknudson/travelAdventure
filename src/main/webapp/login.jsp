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
<body style="background-color: yellow;" >
<div class="container theme-showcase" role="main" class="jumbotron"  >
    <div class="page-header">
        <h1 style="color: blue; text-align: center">Are You Authorized?</h1>
    </div>


    <h3>Please log in to view the trip information </h3>


<FORM ACTION="j_security_check" METHOD="POST" class="form-horizontal">

    <TABLE class="form-group">
        <TR><TD class="control-label col-xs-4">User name:</TD><td> <INPUT TYPE="TEXT" NAME="j_username" class="form-control"></td></TR>
        &nbsp;
        <tr><td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp;</td></tr>
        <TR><TD class="control-label col-xs-4">Password:</TD><td> <INPUT TYPE="PASSWORD" NAME="j_password" class="form-control"></td></TR>
        &nbsp;
        <tr><td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp;</td></tr>
        &nbsp;
        <TR><td></td><Td><INPUT TYPE="SUBMIT" VALUE="Log In" class="bt btn-primary btn-lg "></Td></TR>
    </TABLE>
</FORM>
</body>
<jsp:include page="contentEnd.jsp" />
<jsp:include page="footer.jsp" />
</html>


