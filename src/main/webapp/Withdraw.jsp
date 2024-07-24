<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Withdraw</title>
</head>
<body>
    <h2>Withdraw Amount</h2>
    <form action="WithdrawServlet" method="post">
        Enter amount to Withdraw: 
        <input type="text" name="amount" required><br><br>
        
        <input type="submit" value="Withdraw">
    </form>

    <c:if test="${not empty errorMessage}">
        <p style="color: red;">${errorMessage}</p>
    </c:if>
</body>
</html>