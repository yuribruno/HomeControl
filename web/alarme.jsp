<%-- 
    Document   : alarme
    Created on : 29/04/2015, 07:20:05
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
            <h1>Alarme</h1>
            <table border="0" cellspacing="10" cellpadding="10">
                <thead>
                    <tr>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="radio" name="status" value="ativado" />Ativado<br></td>
                        <td><input type="radio" name="status" value="desativado" checked/>Desativado<br></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Ativar" name="ativar" /></td>
                        <td><input type="submit" value="Desativar" name="desativar" /></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
