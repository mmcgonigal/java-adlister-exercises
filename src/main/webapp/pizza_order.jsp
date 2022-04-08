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
<h1>Pizza Order Here</h1>
<form action = "pizza_order" method="post" >
    <div class="crust">
        <label for="crust">Select Your Crust</label>
        <select name="crust" id="crust" >
            <option value="thin">Thin</option>
            <option value="pan">Pan</option>
            <option value="handToss">Hand Toss</option>
        </select>
    </div>
<br>

<%--this is for the size of pizza--%>
    <div class="size">
        <label for="size">Pick a size</label>
        <select name="size" id="size">
            <option value="small">10 inch</option>
            <option value="medium">12 inch</option>
            <option value="large">14 inch</option>
            <option value="extra large">16 inch</option>
        </select>
    </div>

<br>

<%--this is for the sauce type--%>
    <div class="sauce">
        <label for="sauce">Select Your Sauce</label>
        <select name="sauce" id="sauce">
            <option value="tomatoSauce">Robust Inspired Tomato Sauce</option>
            <option value="marinara">Marinara Sauce</option>
            <option value="bbq">BBQ Sauce</option>
            <option value="alfredo">Alfredo Sauce</option>
        </select>
    </div>
<br>

<%--choose topping--%>
    <div class="topping">
        <p>Please Select Your Toppings</p>
        <input type="checkbox" name="topping" value="beef">beef
        <input type="checkbox" name="topping" value="han">ham
        <input type="checkbox" name="topping" value="chicken">chicken           <input
            type="checkbox" name="topping" value="pepperoni">pepperoni
        <input type="checkbox" name="topping" value="cheese">cheese
        <input
            type="checkbox" name="topping" value="mushroom">mushroom
        <input type="checkbox" name="topping" value="cherry_tomato">cherry tomatoes
        <input  type="checkbox" name="topping" value="jalapenos">jalapenos
        <input type="checkbox" name="topping" value="bell_peppers">bell peppers
    </div>

    <div class="delivery">
        <label for="address">Please enter your delivery address</label>
        <textarea id = "address" name="address" ></textarea>
    </div>
    <br>
    <br>

    <input type="submit" name="submit" value="submit">


</form>
</body>
</html>
