<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Page</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>
<body>
    <h1>Payment Page</h1>


    <form action="OrderCreation" method="POST" name="razorpayForm">
        <label for="username">User name:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone" required><br><br>
        
        <label for="address">Address:</label>
        <textarea id="address" name="address" required></textarea><br><br>
        
        <label for="amount">Amount:</label>
        <input type="number" id="amount" name="amount" required><br><br>
        
        <input id="razorpay_payment_id" type="hidden" name="razorpay_payment_id" />
        <input id="razorpay_order_id" type="hidden" name="razorpay_order_id" />
        <input id="razorpay_signature" type="hidden" name="razorpay_signature" />
        
        <input type="submit" value="Pay"> 
    </form>

    	
</body>
</html>





<%-- 

























<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Page</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>
<body>
    <h1>Payment Page</h1>

    <button id="rzp-button1" onclick="openCheckout('${razorpayOrderId}')">Pay</button>

    <form action="OrderCreation" method="POST" name="razorpayForm">
        <input id="razorpay_payment_id" type="hidden" name="razorpay_payment_id" />
        <input id="razorpay_order_id" type="hidden" name="razorpay_order_id" />
        <input id="razorpay_signature" type="hidden" name="razorpay_signature" />
    </form>

    <script>
        function openCheckout(orderId) {
            var options = {
                key: "rzp_test_Xe8wdVU6XUBoBd",
                name: "E-Cart",
                description: "SLAM payments",
                image: "https://s29.postimg.org/r6dj1g85z/daft_punk.jpg",
                prefill: {
                    name: "Daft Punk",
                    email: "customer@merchant.com",
                    contact: "+919999999999"
                },
                notes: {
                    address: "Hello World",
                    merchant_order_id: "12312321"
                },
                theme: {
                    color: "#F37254"
                },
                order_id: orderId,
                handler: function (response) {
                    document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
                    document.getElementById('razorpay_order_id').value = orderId;
                    document.getElementById('razorpay_signature').value = response.razorpay_signature;
                    document.razorpayForm.submit();
                },
                modal: {
                    ondismiss: function () {
                        console.log("This code runs when the popup is closed");
                    },
                    escape: true,
                    backdropclose: false
                }
            };

            var rzp = new Razorpay(options);
            rzp.open();
        }
    </script>
</body>
</html>
 --%>