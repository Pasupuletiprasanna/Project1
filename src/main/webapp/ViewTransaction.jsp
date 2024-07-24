<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Transaction </title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #9FC5E8;
            margin: 0;
            padding: 0;
        }
        .container {
            margin: 50px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        .button-container {
            margin-top: 20px;
            text-align: right;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            margin-left: 10px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #0056b3;
        }
        .pagination {
            margin-top: 20px;
            text-align: center;
        }
        .pagination a {
            display: inline-block;
            padding: 10px 20px;
            margin: 0 5px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .pagination a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <form method="get" action="ViewTransactionServlet">
            <label for="sortOrder">Sort by Date:</label>
            <select id="sortOrder" name="sortOrder">
                <option value="DESC">Descending</option>
                <option value="ASC">Ascending</option>
            </select>
            <button type="submit">Sort</button>
        </form>
        
        <table>
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Type</th>
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="transaction" items="${transactions}">
                    <tr>
                        <td>${transaction.date}</td>
                        <td>${transaction.type}</td>
                        <td>${transaction.amount}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div class="pagination">
            <c:if test="${currentPage > 1}">
                <a href="ViewTransactionServlet?page=${currentPage - 1}&sortOrder=${param.sortOrder}">Previous</a>
            </c:if>
            <c:if test="${currentPage < totalPages}">
                <a href="ViewTransactionServlet?page=${currentPage + 1}&sortOrder=${param.sortOrder}">Next</a>
            </c:if>
        </div>

        <div class="button-container">
            <a href="CustomerDashboard.jsp" class="button">Back to Dashboard</a>
            <a href="PrintTransactionServlet" class="button">Print</a>
        </div>
    </div>
</body>
</html>