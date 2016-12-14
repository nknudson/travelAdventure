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
<div class="wrapper">
<body role="document" style="background-color: yellow;" >

<div class="container theme-showcase" role="main" class="jumbotron"  >
    <div class="page-header" class="jumbotron">
        <h1>Whoops! </h1>
    </div>
    <div class="mainText">
    <h3 style="text-align: center">Invalid userid/password combination. Please <b><a href="login.jsp"> try again. </a></b> If you are a new user, <b><a href="signUp.jsp">  sign up </a></b> first </h3>
    </div>
    </div>
</body>
</div>
<jsp:include page="footer.jsp" />
</html>


