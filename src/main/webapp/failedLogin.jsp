<%--
  Created by IntelliJ IDEA.
  User: nataliya.knudson
  Date: 10/18/2016
  Time: 4:06 PM
  To change this template use File | Settings | File Templates.
--%>

<jsp:include page="contentType.jsp" />
<jsp:include page="navigationBar.jsp" />
<jsp:include page="head.jsp" />
<html>
<body role="document" style="background-color: yellow;" >

<div class="container theme-showcase" role="main" class="jumbotron"  >
    <div class="page-header" class="jumbotron">
        <h1 style="color: blue; text-align: center">Whoops! </h1>
    </div>

    <h3 style="text-align: center">Invalid userid/password combination.
<a href="login.jsp"> Please try again</a></h3>
    </div>
</body>
<jsp:include page="contentEnd.jsp" />
<jsp:include page="footer.jsp" />
</html>


