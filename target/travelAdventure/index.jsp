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
<html>
<jsp:include page="head.jsp" />

<body role="document">
<jsp:include page="navigationBar.jsp" />
<div class="container theme-showcase" role="main">
    <div class="page-header">
        <h1>Welcome to the Magical World of Travel </h1>
        <p>If you are curious when is the best time to start planning your vacation the answer is...on
        <i><nk:Date /></i> -- which is <b>TODAY</b>!
    </div>

   <%-- <a href = "searchTrip">Search for the country</a>--%>
    <form  method="post" action="/travelAdventure/searchTrip">
        <table>
            <tr>
                <td>Where would you like to go? Let's choose a country! </td>
                <td>
                    <select id="country" name="country">
                        <c:forEach var="country" items="${countries}">
                            <option><c:out value="${country}"/></option>
                        </c:forEach>
                    </select>
                </td>

            </tr>


            <tr>
                <td><input type="submit"  value="Submit" /></td>
            </tr>
        </table>



    </form>


</div>


</body>
<jsp:include page="contentEnd.jsp" />
<jsp:include page="footer.jsp" />
</html>