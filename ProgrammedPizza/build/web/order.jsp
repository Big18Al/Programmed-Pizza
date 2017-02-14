<%-- 
    Document   : order.jsp
    Created on : Feb 14, 2017, 3:35:11 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alex's JSP Pizza Order</title>
    </head>
    <body>
        <h1>Order Results</h1>
        
        <p>Email = ${param.email}</p>
        <p>Size = ${param.size}</p>
        <p>Type = ${param.type}</p>
        
        <%
            double cost = 0;
            String toppings[] = request.getParameterValues("toppings");
            if (toppings != null && toppings.length != 0) {
                out.println("<p>Toppings: ");
                for (String myTopping : toppings) {
                    out.println(myTopping + ", ");
                }
                out.println("</p>");
            }
            
            switch (request.getParameter("size")){
                case "small": cost += 5.00; break;
                case "medium": cost += 6.00; break;
                case "large": cost += 7.00; break;
            }
            
            switch (request.getParameter("type")){
                case "pan": cost += 1.00; break;
                case "hand-tossed": cost += 0.50; break;
                case "thin": cost += 0.00; break;
            }
            out.println("<p>Cost: $" + cost);
            
         %>
    </body>
</html>
