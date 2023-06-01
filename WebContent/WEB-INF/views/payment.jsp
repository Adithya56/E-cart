<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

        <!-- Add additional form fields if required -->
        <input type="submit" value="Submit">

        <script src="https://checkout.razorpay.com/v1/checkout.js"
                data-key="${razorpayApiKey}"
                data-amount="${amount}"
                data-currency="${currency}"
                data-order_id="${orderId}"
                data-buttontext="Pay with Razorpay"
                data-name="Your Store Name"
                data-description="Payment for Order"
                data-image="https://your-store-logo.png"
                data-prefill.name="John Doe"
                data-prefill.email="john.doe@example.com"
                data-theme.color="#F37254">
                console.log(${razorpayApiKey});
                console.log(${amount});
                console.log(${currency});
                console.log(${orderId});
                console.log("heyyyyy fuck u");

        </script>
    </form>
</body>
</html>
