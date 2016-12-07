<%--
  Created by IntelliJ IDEA.
  User: nataliya.knudson
  Date: 10/19/2016
  Time: 11:22 AM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="contentType.jsp" />
<jsp:include page="navigationBar.jsp" />
<jsp:include page="head.jsp" />
<html>
<body role="document" style="background-color: yellow;" >

<div class="container theme-showcase" role="main" class="jumbotron"  >
    <div class="page-header" class="jumbotron">
        <h1 style="color: blue; text-align: center">New Trip Form </h1>
    </div>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>ad</title>

<form  method="post" action="/travelAdventure/addTrip"  class="form-horizontal" >
    <table class="form-group">
        <tr>
            <td class="control-label col-xs-4">Country* </td> <td><input id="country" name="country" class="form-control"/></td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp;</td></tr>

        <tr>
            <td class="control-label col-xs-4">City* </td> <td><input id="city" name="city" class="form-control"/></td>
        </tr>
        <tr><td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp;</td></tr>
        <tr>
            <td class="control-label col-xs-4">Hotel*</td> <td><input id="hotel" name="hotel" class="form-control"/></td>
        </tr>
        <tr><td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp;</td></tr>
        <tr>
            <td class="control-label col-xs-4">Activity* </td> <td><input id="activity" name="activity" class="form-control" /></td>
        </tr>
        <tr><td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp;</td></tr>
        <tr>
            <td class="control-label col-xs-4" >Begin Date* </td> <td><input id="beginDate" type="date" name="beginDate"  class="form-control"/></td>
        </tr>
        <tr><td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp;</td></tr>
        <tr>
            <td class="control-label col-xs-4">End Date* </td> <td><input id="endDate" type="date"  name="endDate" class="form-control" /></td>
        </tr>
        <tr><td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp;</td></tr>
        <tr>
            <td class="control-label col-xs-4">Cost* </td> <td><input id="cost" type="number" name="cost" class="form-control" /></td>
        </tr>
        <tr><td>&nbsp;&nbsp;&nbsp; </td><td> &nbsp;&nbsp;&nbsp;</td></tr>
        <tr>
            <td></td>
            <td class="control-label col-xs-4" ><input type="submit"  value="Submit" class="bt btn-primary btn-lg " /></td>
        </tr>
    </table>



</form>

</body>
<jsp:include page="contentEnd.jsp" />
<jsp:include page="footer.jsp" />
</html>
