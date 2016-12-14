<%--
  Created by IntelliJ IDEA.
  User: nataliya.knudson
  Date: 10/19/2016
  Time: 12:32 PM
  To change this template use File | Settings | File Templates.
--%>
<script type="text/javascript">
    function getPageNameFromURL() {
        var URL = document.location.href;
        var PageFileName = URL.substring(URL.lastIndexOf('/') + 1);
        return PageFileName;
    }
    $(document).ready(function() {
        var PageName = getPageNameFromURL();
        switch (PageName) {
            case 'index.jsp':
                $('#index').addClass("active");
                break;
            case 'displayTrip.jsp':
                $('#viewTrips').addClass("active");
                break;
            case 'addTrip.jsp':
                $('#addTrip').addClass("active");
                break;
            case 'signInConfirmation.jsp':
                $('#signInConfirmation').addClass("active");
                break;
            case 'signUp.jsp':
                $('#signUp').addClass("active");
                break;
        }
    });
</script>

<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <a class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <img src="http://cdn.adventuretravel.biz/wp-content/uploads/2014/04/ATTA-Logo-CMYK-white-URL.png?x66985" alt="Adventure Travel Trade Association" style="width: 100%;"></a>


        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li style="font-size: 20px" id="index"><a href="index">Home</a></li>
                <li style="font-size: 20px" id="viewTrips"><a href="displayTrip"> All Trips</a></li>
                <li style="font-size: 20px" id="addTrip"><a href="addTrip">Add a Trip</a></li>
                <li style="font-size: 20px" id="signUp"><a href="signUp">Sign Up</a></li>

            </ul>
            <br />
            <form action="${pageContext.request.contextPath}/logout" method="post">
                <input type="submit" value="Logout" class="bt btn-primary btn-sm "/>
            </form>

        </div><!--/.nav-collapse -->


        </div>



</nav>


