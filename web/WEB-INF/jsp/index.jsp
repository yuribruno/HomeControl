<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomeControl</title>
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
                </table>
                <table align="center">
                    <tr>
                        <td><input  type="submit" value="Entrar" name="botao"></td>
                        <td><input  type="submit" value="Novo Cadastro" name="botao"></td>
                    </tr>
                </table>
            </form>
            <head id="valida"></head>
        </div>
    </body>
</html>
