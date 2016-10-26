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
            case 'signInConfirmation.jsp':
                $('#signInConfirmation').addClass("active");
                break;
            case 'about.jsp':
                $('#about').addClass("active");
                break;
            case 'signUp.jsp':
                $('#signUp').addClass("active");
                break;
        }
    });
</script>

<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container">
        <a class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <img src="http://cdn.adventuretravel.biz/wp-content/uploads/2014/04/ATTA-Logo-CMYK-white-URL.png?x66985" alt="Adventure Travel Trade Association" style="width: 100%;">

        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li id="index"><a href="index.jsp">Welcome</a></li>
                <li id="viewTrips"><a href="displayTrip">Trips</a></li>
                <li id="addReport"><a href="addTrip">New
                    Trip</a></li>
                <li id="login"><a
                        href="login.jsp">Sign In</a></li>
                <li id="signUp"><a href="signUp.jsp">Sign Up</a></li>
                <li id="about"><a href="about.jsp">About</a></li>

            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>