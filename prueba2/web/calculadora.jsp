<%-- 
    Document   : calculadora
    Created on : Jun 5, 2024, 8:47:12 PM
    Author     : marua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora-MEAE</title>
    </head>
    <body>
        <h1> Calculadora-MEAE </h1>
        
        <!--Parte de HTML para formulario -->
        <form method="post" action="calculadora.jsp">
            Número 1: <input type="text" name="numero1"/><br/>
            Número 2: <input type="text" name="numero2"/><br/>
            Operación: 
            <select name="operacion">
                <option value="1">Suma</option>
                <option value="2">Resta</option>
                <option value="3">Multiplicación</option>
                <option value="4">División</option>
            </select><br/>
            <input type="submit" value="Calcular"/>  
        </form>
      
        <!--Parte de Java para lógica de programación -->
        <%
            if(request.getParameter("numero1")!=null&&request.getParameter("numero2")!=null){
            try{
            double numero1=Double.parseDouble(request.getParameter("numero1"));
            double numero2=Double.parseDouble(request.getParameter("numero2"));
            int operacion=Integer.parseInt(request.getParameter("operacion"));
            double resultado=0;
            
            switch(operacion){
            case 1:
            resultado = numero1 + numero2;
            break;
            
            case 2:
            resultado = numero1 - numero2;
            break;
            
            case 3:
            resultado = numero1 * numero2;
            break;
            
            case 4:
            resultado = numero1 / numero2;
            break;
            default:
            out.println("Operacion no valida");
            break;
            }
           
            out.println("Resultado:"+resultado);
            }catch(NumberFormatException e){
                        out.println("Introducir numero validos");
            }
            }
            
        %>
        
    </body>
</html>
