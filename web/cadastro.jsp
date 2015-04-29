<%-- 
    Document   : cadastro
    Created on : 28/04/2015, 22:14:01
    Author     : Yuri Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
            <form action="validar.jsp" method="post" style="font-size: 12pt; alignment-adjust: middle">
                <table>
                    <tr>
                        <td>E-mail:</td><td><input type="email" name="email">                    
                    </tr>
                    <tr>
                        <td>Senha:</td><td><input type="password" name="senha">                    
                    </tr>
                    <tr>
                        <td>CPF:</td><td><input type="text" size="11" name="cpf">                    
                    </tr>
                </table>
                <table align="center">
                    <tr>
                        <td><input  type="submit" value="Cadastrar"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
