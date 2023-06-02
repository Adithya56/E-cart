<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Payment Page</title>
</head>
<body>
    <h1>Payment Page</h1>

    <form action="https://api.razorpay.com/v1/payments" method="POST">
        <input type="hidden" th:name="_csrf" value="${_csrf.token}"/>
        <input type="hidden" name="amount" value="${amount}"/>
        <input type="hidden" name="currency" value="${currency}"/>
        <input type="hidden" name="order_id" value="${orderId}"/>

        <input type="text" name="bank_account_number" placeholder="Bank Account Number" required />

        <input type="submit" value="Submit">

        <script src="https://checkout.razorpay.com/v1/checkout.js"
                data-key="${razorpayApiKey}"
                data-amount="${amount}"
                data-currency="${currency}"
                data-order_id="${orderId}"
                data-buttontext="Pay with Razorpay"
                data-name="E-Cart"
                data-description="Payment for Order"
                data-image="https://your-store-logo.png"
                data-prefill.name="John Doe"
                data-prefill.email="john.doe@example.com"
                data-theme.color="#F37254">
        </script>
    </form>
</body>
</html>
