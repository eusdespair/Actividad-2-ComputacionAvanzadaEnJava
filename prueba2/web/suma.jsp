<%-- 
    Document   : suma
    Created on : Jun 5, 2024, 8:14:49 PM
    Author     : marua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%! int numero1 = 2; %>
        <%! int numero2 = 3; %>
        
        <%! public int suma (int a, int b)
            {
                return a+b;
            } 
        %>

        <%
            int resultado = suma(numero1, numero2); 
        %>
        <%=resultado%> 

    </body>
</html>
