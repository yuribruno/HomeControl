<%-- 
    Document   : validar
    Created on : 28/04/2015, 22:40:32
    Author     : Yuri Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%!
        String s_email;
        String s_senha;
        String s_botao;
        %>
    </head>
    <body>
        <%
            s_botao = request.getParameter("botao");
            if(s_botao.equals("Entrar")){
                s_email = request.getParameter("email");
                s_senha = request.getParameter("senha");
                if(s_email.equals("yuribruno@msn.com") && s_senha.equals("123")){
                    response.sendRedirect("menuAdm.jsp");
                } else {
                    out.println("Dados incorretos ou usuário não cadastrado.");
                }
            }
            if(s_botao.equals("Novo Cadastro")){
                response.sendRedirect("cadastro.jsp");
            }
        %>
    </body>
</html>
