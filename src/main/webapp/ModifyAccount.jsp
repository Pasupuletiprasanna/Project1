<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modify Account</title>
    <style>
        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .input-group {
            margin-bottom: 15px;
        }
        .input-group label {
            display: block;
            margin-bottom: 5px;
        }
        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        .button:hover {
            background-color: #0056b3;
        }
        .message {
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h2 style="text-align: center;">Modify Account</h2>
    <form action="UpdateCustomerServlet" method="post">
        <c:if test="${not empty message}">
            <div class="message"><c:out value="${message}" /></div>
        </c:if>
        <div class="input-group">
            <label for="accountno">Account Number</label>
            <input type="text" id="accountno" name="accountno" value="<c:out value='${customer.accountno}' />" readonly>
        </div>
        <div class="input-group">
            <label for="fullname">Full Name</label>
            <input type="text" id="fullname" name="fullname" value="<c:out value='${customer.fullname}' />">
        </div>
        <div class="input-group">
            <label for="address">Address</label>
            <input type="text" id="address" name="address" value="<c:out value='${customer.address}' />">
        </div>
        <div class="input-group">
            <label for="phono">Phone</label>
            <input type="text" id="phono" name="phono" value="<c:out value='${customer.phono}' />">
        </div>
        <div class="input-group">
            <label for="emailid">Email ID</label>
            <input type="email" id="emailid" name="emailid" value="<c:out value='${customer.emailid}' />">
        </div>
        <div class="input-group">
            <label for="dob">Date of Birth</label>
            <input type="date" id="dob" name="dob" value="<c:out value='${customer.dob}' />">
        </div>
        <div class="input-group">
            <label for="accounttype">Account Type</label>
            <input type="text" id="accounttype" name="accounttype" value="<c:out value='${customer.accounttype}' />">
        </div>
        <div class="input-group">
            <label for="idProof">ID Proof</label>
            <input type="text" id="idProof" name="idProof" value="<c:out value='${customer.idProof}' />">
        </div>
        <input type="submit" value="Update" class="button">
    </form>
</body>
</html>
