
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
        <h1>Previous Trips</h1>
    </div>

    <c:forEach items="${tripReports}" var="report">
        <div class="col-sm-7">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">${report.country}</h3> <h5><i> (from ${report.beginDate} to ${report.endDate})</i> </h5>
                </div>
                <div class="panel-body">
                        I arrived to ${report.city} and stayed in ${report.hotel}. During this trip I ${report.activity}.<br />
                        Total cost for the trip was <b>$${report.cost}</b>.
                </div>
            </div>
        </div>

    </c:forEach>


</div>


</body>
<jsp:include page="contentEnd.jsp" />
<jsp:include page="footer.jsp" />
</html>