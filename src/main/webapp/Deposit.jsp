<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deposit</title>
</head>
<body>
    <h2>Deposit</h2>
    <form action="DepositServlet" method="post">
        Enter amount to Deposit: 
        <input type="text" name="amount" required><br><br>
        
        <input type="submit" value="Deposit">
    </form>

    <c:if test="${not empty errorMessage}">
        <p style="color: red;">${errorMessage}</p>
    </c:if>
</body>
</html>