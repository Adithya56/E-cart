<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Options</title>
</head>
<body>
    <h1>Payment Options</h1>

    <c:if test="${errorMessage != null}">
        <p>Error: ${errorMessage}</p>
    </c:if>

    <c:if test="${not empty paymentMethods}">
        <h2>Choose a payment method:</h2>
        <ul>
            <c:forEach var="method" items="${paymentMethods}">
                <li>
                    <p>${method.name}</p>
                    <!-- Display additional details for the payment method -->
                </li>
            </c:forEach>
        </ul>
    </c:if>
</body>
</html>
