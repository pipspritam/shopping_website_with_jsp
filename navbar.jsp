<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="./css/navbar.css">
</head>
<body>
    <nav class="navbar">
        <a href="./index.jsp" class="logo"><i class="fab fa-pied-piper-alt"></i>
            <h2>Pied Piper</h2>
        </a>
        <form class="search" action="./search.jsp" method="post">
                <input type="search" name="search">
                <button><i class="fas fa-search"></i></button>
        </form>
        <%
            if(((String)session.getAttribute("email"))!=null){
                String name = (String)session.getAttribute("name");
        %>
        <ul class="menu">
            <li><a href="./cart.jsp">Cart</a></li>
            <li>
                <a href=""><%= name.split(" ", 0)[0] %></a>
                <ul class="submenu">
                    <li><a href="account.jsp">My Profile</a></li>
                    <li><a href="./my_orders.jsp">Orders</a></li>
                    <li><a href="./wishlist.jsp">Wishlist</a></li>
                    <li><a href="./logout.jsp">Logout</a></li>
                </ul>
            </li>
        </ul>
        <%
        } else {
        %>
        <ul class="menu">
            <li><a href="./cart.jsp">Cart</a></li>
            <li>
                <a href="./login.jsp">Login</a> 
            </li>
        </ul>
        <% } %>
    </nav>
</body>
</html>