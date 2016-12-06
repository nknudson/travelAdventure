<%--
  Created by IntelliJ IDEA.
  User: nataliya.knudson
  Date: 10/19/2016
  Time: 11:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>
This is the admin page where fancy admin-only stuff happens.
<ul>
    <li><a href="displayTrip.jsp">Take me to the Display Page</a></li>
    <li><a href="index.jsp">Take me Home</a></li>
</ul>
<form  method="post" action="/travelAdventure/addTrip">
    <table>
        <tr>
            <td>Country </td> <td><input id="country" name="country" /></td>
        </tr>
        <tr>
            <td>City </td> <td><input id="city" name="city" /></td>
        </tr>
        <tr>
            <td>Hotel</td> <td><input id="hotel" name="hotel" /></td>
        </tr>
        <tr>
            <td>Activity </td> <td><input id="activity" name="activity" /></td>
        </tr>
        <tr>
            <td>Begin Date </td> <td><input id="beginDate" type="date" name="beginDate" /></td>
        </tr>
        <tr>
            <td>End Date </td> <td><input id="endDate" type="date"  name="endDate" /></td>
        </tr>
        <tr>
            <td>Cost </td> <td><input id="cost" type="number" name="cost" /></td>
        </tr>
        <tr>
            <td><input type="submit"  value="Submit" /></td>
        </tr>
    </table>



</form>

</body>
</html>