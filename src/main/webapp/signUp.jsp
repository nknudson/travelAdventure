<%--
  Created by IntelliJ IDEA.
  User: nataliya.knudson
  Date: 12/8/2016
  Time: 11:42 AM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="contentType.jsp" />
<jsp:include page="navigationBar.jsp" />
<jsp:include page="head.jsp" />
<html>
<div class="wrapper">
<body role="document" >
<div class="container theme-showcase" role="main" class="jumbotron"  >
    <div class="page-header" class="jumbotron">
        <h1 style="color: blue; text-align: center">New User Form </h1>
    </div>
    <div class="mainText">
    <h3>Please fill out this form. All fields are required</h3>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>ad</title>

    <form  method="post" action="/travelAdventure/signUp"  class="form-horizontal" >
        <table class="form-group">
            <tr>
                <td class="control-label col-xs-4">User Name: </td> <td><input required="required" id="userName" name="userName" class="form-control"/></td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp;</td></tr>

            <tr>
                <td class="control-label col-xs-4">Password</td> <td><input required="required" id="password" name="password" type="password" class="form-control"/></td>
            </tr>
            <tr>
                <td></td>
                <td class="control-label col-xs-4" ><input type="submit"  value="Submit" class="bt btn-primary btn-lg " /></td>
            </tr>
        </table>



    </form>
    </div>
</div>

</body>
</div>
<jsp:include page="footer.jsp" />
</html>
