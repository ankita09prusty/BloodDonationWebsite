<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <title>Receiver List</title>
    <style>
        body { background-color: #000000; font-family: Arial, sans-serif; color: white; }
        .container { width: 80%; margin: auto; padding: 20px; background-color: #1c1c1c; border-radius: 8px; }
        table { width: 100%; border-collapse: collapse; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #00bcd4; color: white; }
        .btn { background-color: #00bcd4; color: white; padding: 10px; text-decoration: none; border-radius: 5px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Receiver List</h1>

        <c:choose>
            <c:when test="${not empty receivers}">
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Patient Name</th>
                        <th>Blood Group</th>
                        <th>Hospital</th>
                        <th>Age</th>
                        <th>Address</th>
                    </tr>
                    <c:forEach var="receiver" items="${receivers}">
                        <tr>
                            <td>${receiver.id}</td>
                            <td>${receiver.patientName}</td>
                            <td>${receiver.bloodGroup}</td>
                            <td>${receiver.hospitalName}</td>
                            <td>${receiver.age}</td>
                            <td>${receiver.address}</td>
                        </tr>
                    </c:forEach>
                </table>
            </c:when>
            <c:otherwise>
                <p>No data available.</p>
            </c:otherwise>
        </c:choose>

        <a href="/receiver" class="btn">Add New Receiver</a>
    </div>
</body>
</html>
