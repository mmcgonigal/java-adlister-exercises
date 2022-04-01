<%--
  Created by IntelliJ IDEA.
  User: mina.mcgonigal
  Date: 4/1/22
  Time: 9:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pizzahouse</title>
</head>
<body>
<%--This form features choices to select the crust type, sauce type, size type (use select inputs), toppings (checkboxes), and delivery address (text input).--%>

<%--this is for the crust--%>
<form action = "pizza_order.jsp" method="post" >
    <div class="crust">
        <label for="crust">Select Your Crust</label>
        <select name="crust" id="crust" >
            <option value="thin">Thin</option>
            <option value="pan">Pan</option>
            <option value="handToss">Hand Toss</option>
        </select>
    </div>
</form>
<br>

<%--this is for the size of pizza--%>
<form action="pizza_order.jsp" method="post">
    <div class="size">
        <label for="size">Pick a size</label>
        <select name="size" id="size">
            <option value="small">10 inch</option>
            <option value="medium">12 inch</option>
            <option value="large">14 inch</option>
            <option value="extra large">16 inch</option>
        </select>
    </div>
</form>
<br>

<%--this is for the sauce type--%>
<form action="pizza_order.jsp" method="post">
    <div class="sauce">
        <label for="sauce">Select Your Sauce</label>
        <select name="" id="sauce">
            <option value="tomatoSauce">Robust Inspired Tomato Sauce</option>
            <option value="marinara">Marinara Sauce</option>
            <option value="bbq">BBQ Sauce</option>
            <option value="alfredo">Alfredo Sauce</option>
        </select>
    </div>
</form>
<br>


</body>
</html>
