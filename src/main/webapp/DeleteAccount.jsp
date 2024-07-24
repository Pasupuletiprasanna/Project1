<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Account</title>
    <script>
        function validateForm() {
            var accountNo = document.getElementById("AccountNo").value;
            if (accountNo.trim() === "" || isNaN(accountNo) || accountNo <= 0) {
                alert("Please enter a valid positive account number.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <h2>Delete Account Form</h2>
    <form action="AccountDeletionServlet" method="post" onsubmit="return validateForm()">
        <label for="AccountNo">Account No:</label>
        <input type="text" id="AccountNo" name="AccountNo" required>
        <input type="submit" value="Delete">
    </form>
    
    <!-- Display feedback messages -->
    <div class="feedback">
        <% if (request.getAttribute("status") != null) { %>
            <p><%= request.getAttribute("status") %></p>
        <% } %>
    </div>
</body>
</html>