<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Details</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            margin-top: 20px;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2 style="text-align: center;">Customer Details</h2>

    <table>
        <thead>
            <tr>
                <th>Full Name</th>
                <th>Address</th>
                <th>MobileNo</th>
                <th>Emailid</th>
                <th>DOB</th>
                <th>AccountNo</th>
                <th>AccountType</th>
                <th>IDProof</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="customer" items="${customers}">
                <tr>
                    <td>${customer.fullname}</td>
                    <td>${customer.address}</td>
                    <td>${customer.phono}</td>
                    <td>${customer.emailid}</td>
                    <td>${customer.dob}</td>
                    <td>${customer.accountno}</td>
                    <td>${customer.accounttype}</td>
                    <td>${customer.idProof}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="AdminDashboard.jsp" class="button">Back to Dashboard</a>
</body>
</html>