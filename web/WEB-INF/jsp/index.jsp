<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="CSS/hc-template.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="CSS/hc-slider.css" type="text/css" media="screen" charset="utf-8" />
        
        <script src="js/jquery-1.2.6.js" type="text/javascript"></script>
        <script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
        <script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/jquery.serialScroll-1.2.1.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>
        
        <title>HomeControl</title>
    </head>

    <body>
        <div id="slider">
            <div id="templatemo_sidebar">
                <div id="templatemo_header">
                    <a href="" target="_parent"><img src="images/templatemo_logo.png" alt="Home Control" /></a>
                </div> <!-- end of header -->
            </div>
                
            <div id="templatemo_main">
                <div id="content">
                    <div class="scroll">
                        <div class="scrollContainer">
                            <div class="panel" id="login">
                                <div align="center">
                                    <form action="" method="" style="font-size: 12pt; alignment-adjust: middle">
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
                                                <td><input  type="button" value="Novo Cadastro" name="botao" onclick="location.href='#cadastro'"></td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                            <div class="panel" id="cadastro">
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
