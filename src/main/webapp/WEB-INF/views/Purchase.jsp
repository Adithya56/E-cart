<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Page</title>
</head>
<body>
    <h1>Payment Page</h1>
    
    <form action="p" method="POST">
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
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>
