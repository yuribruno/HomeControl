<%-- 
    Document   : menuAdm
    Created on : 28/04/2015, 23:02:26
    Author     : Yuri Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            //allow access only if session exists
            String user = null;
            if(session.getAttribute("email") == null){
                response.sendRedirect("redirect.jsp");
            }else user = (String) session.getAttribute("email");
            String userName = null;
            String sessionID = null;
            Cookie[] cookies = request.getCookies();
            if(cookies !=null){
                for(Cookie cookie : cookies){
                    if(cookie.getName().equals("email")) userName = cookie.getValue();
                    if(cookie.getName().equals("email")) sessionID = cookie.getValue();
                }
            }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="CSS/hc-template.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="CSS/hc-slider.css" type="text/css" media="screen" charset="utf-8" />

        <script src="js/jquery-1.2.6.js" type="text/javascript"></script>
        <script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
        <script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/jquery.serialScroll-1.2.1.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>
        
        <title>Home Control - <%=userName%></title>
    </head>
    <body>
        <div id="slider">
            <div id="templatemo_sidebar">
                <div id="templatemo_header">
                    <a href="" target="_parent"><img src="images/templatemo_logo.png" alt="Home Control" /></a>
                </div> <!-- end of header -->
        
                <ul class="navigation">
                    <li><a href="#home">Home<span class="ui_icon home"></span></a></li>
                    <li><a href="#gerenciar">Gerenciar Serviços<span class="ui_icon services"></span></a></li>
                    <li><a href="#alocar">Alocar Serviços<span class="ui_icon aboutus"></span></a></li>
                    <li><a href="#logout">Sair<span class="ui_icon gallery"></span></a></li>
                </ul>
            </div> <!-- end of sidebar -->

            <div id="templatemo_main">
                <div id="content">
                    <div class="scroll">
                        <div class="scrollContainer">
                            <div class="panel" id="home">
                                <img src="images/homeBack.png">
                            </div>                    
                            <div class="panel" id="gerenciar">
                                <div align="center">
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>Nome</th>
                                                <th>Descrição</th>
                                                <th>Custo de Instalação</th>
                                                <th>Custo de Manutenção</th>
                                                <th>Disponibilidade</th>
                                                <th>Tipo</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    
                                                </td>
                                                <td>
                                                    
                                                </td>
                                                <td>
                                                    
                                                </td>
                                                <td>
                                                    
                                                </td>
                                                <td>
                                                    
                                                </td>
                                                <td>
                                                    <input type="button" name="editar" value="Editar" id="editserv">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>  
                            <div class="panel" id="cadastrarNovo">
                            </div>
                            <div class="panel" id="alocar">
                            </div>
                            <div class="panel" id="cliente">
                            </div>
                            <div class="panel" id="historico">
                            </div>
                            <div class="panel" id="alocarServ">
                            </div>
                            <div class="panel" id="logout">
                                <div align="center">
                                    <form action="LogoutServlet" method="post">
                                        <h1>Até a proxima!</h1>
                                        <input type="submit" value="Sair">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
             </div> <!-- end of content -->
        </div> <!-- end of main -->
    </body>
</html>
