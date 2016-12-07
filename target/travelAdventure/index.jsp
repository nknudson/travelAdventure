<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://nknudson.tags" prefix="nk" %>

<%--
  Created by IntelliJ IDEA.
  User: nknudson
  Date: 10/19/16
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="contentType.jsp" />
<jsp:include page="navigationBar.jsp" />
<jsp:include page="head.jsp" />
<html>
<body role="document" style="background-color: yellow;" >

<div class="container theme-showcase" role="main" class="jumbotron"  >
    <div class="page-header" class="jumbotron">
        <h1 style="color: blue; text-align: center">Welcome to the Magical World of Travel </h1>
</div>

    <h3 style="text-align: center">If you are curious when is the best time to start planning your vacation the answer is...</h3>
    <h2 style="text-align: center"> on <i><nk:Date /></i> -- which is <b>TODAY</b>!</h2>
    <h3 style="text-align: center">Our website provides information on countries from all over the world! Here you can find a list of activities to do, hotels to stay and approximate budget necessary for trip expenses. </h3>
    <h3 >Are you ready for adventure?</h3>
    <form  method="post" action="/travelAdventure/searchTrip" role = "form" >
        <table>

            <tr>
                <td><h3>Then choose a country of your dreams here:   </h3>&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;<select id="country" name="country"  class = "form-control" style="font-size: large">
                    <c:forEach var="country" items="${countries}">
                        <option><c:out value="${country}"/></option>
                    </c:forEach>
                </select>&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;<input type="submit"  value="Submit" class="bt btn-primary btn-lg "  /></td>
            </tr>

        </table>
    </form>

</div>


</body>
<jsp:include page="contentEnd.jsp" />
<jsp:include page="footer.jsp" />
</html>

