<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="CSS/hc-template.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="CSS/hc-slider.css" type="text/css" media="screen" charset="utf-8" />
        
        <script src="js/mascaravalidacao.js" type="text/javascript"></script>
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
                <ul class="navigation">
                    <li><a href="#home">Home<span class="ui_icon home"></span></a></li>
                    <li><a href="#login">Login<span class="ui_icon home"></span></a></li>
                </ul>
            </div>
                
            <div id="templatemo_main">
                <div id="content">
                    <div class="scroll">
                        <div class="scrollContainer">
                            <div class="panel" id="home">
                                <img src="images/homeBack.png">
                            </div>
                            <div class="panel" id="login">
                                <div align="center" id="contact_form">
                                    <form action="LoginServlet" method="post" id="login">
                                        <table style="width: 540px; text-align: center">
                                            <tr>
                                                <td>
                                                    <input type="text" name="email" class="required input_field" style="width: 200px" placeholder="E-mail:">
                                                <td>                   
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="password" name="senha" class="required input_field" style="width: 200px" placeholder="Senha:">
                                                </td>                    
                                            </tr>
                                        </table>
                                        <table align="center">
                                            <tr>
                                                <td><input  type="submit" value="Entrar" class="submit_btn"></td>
                                                <td><input  type="button" value="Novo Cadastro" name="botao" onclick="location.href='#cadastro'" class="submit_btn"></td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                            <div class="panel" id="cadastro">
                                <div id="contact_form">
                                    <form action="CadastroServlet" method="post" name="cadastro">
                                        <table cellspacing="10px">
                                            <tr >
                                                <td >
                                                    <label>Nome</label>
                                                    <input placeholder="Nome" type="text" name="nome" class="required input_field" style="width: 240px">
                                                </td>
                                                <td >
                                                    <label>Sobrenome</label>
                                                    <input placeholder="Sobrenome" type="text" name="snome" class="required input_field" style="width: 240px">
                                                </td>
                                            </tr>
                                        </table>
                                        <table cellspacing="10px">
                                            <tr>
                                                <td>
                                                    <label>RG</label>
                                                    <input placeholder="00.000.000" type="text"  name="rg" class="required input_field" style="width: 65px">
                                                </td>
                                                <td>
                                                    <label>CPF</label>
                                                    <input placeholder="000.000.000-00" maxlength="14" type="text"  name="cpf"  class="required input_field" style="width: 105px">
                                                </td>
                                                <td>
                                                    <label>Data de Nascimento</label>
                                                    <input placeholder="dd/MM/aaaa" maxlength="10" type="text" name="data" class="required input_field" style="width: 120px">
                                                </td>
                                                <td>
                                                    <label>Telefone</label>
                                                    <input placeholder="(XX)xxxxxxxx" type="text" name="tel" class="required input_field" style="width: 85px">
                                                </td>
                                            </tr>
                                        </table>
                                        <table cellspacing="10px">
                                            <tr>
                                                <td>
                                                    <label>Cep</label>
                                                    <input maxlength="10" placeholder="CEP" type="text" size="8" name="cep" id="campoCEP" class="required input_field"  style="width: 73px">
                                                </td>
                                                <td>
                                                    <label>Cidade</label>
                                                    <input placeholder="Cidade" type="text" size="15" name="cidade" class="required input_field"  style="width: 170px">
                                                </td>
                                                <td>
                                                    <label>Estado</label>
                                                    <input placeholder="UF" type="text" size="2" name="estado"class=" required input_field" style="width: 20px">
                                                </td>
                                                <td>
                                                    <label>Bairro</label>
                                                    <input placeholder="Bairro" type="text" size="10" name="bairro" class="required input_field" style="width: 170px">
                                                </td>
                                            </tr>
                                        </table>
                                        <table cellspacing="10px">
                                            <tr>
                                                <td>
                                                    <label>Endereço</label>
                                                    <input placeholder="Endereço" type="text" size="10" name="endereco" class="required input_field" style="width: 320px">                                               </td>
                                                <td>
                                                    <label>Número</label>
                                                    <input placeholder="Nº" type="text" size="5" name="numero" class="required input_field" style="width: 35px">
                                                </td>
                                                <td>
                                                    <label>Complemento</label>
                                                    <input placeholder="Complemento" type="text" size="10" name="complemento" class="required input_field" style="width: 100px">
                                                </td>
                                            </tr>
                                        </table>
                                        <table cellspacing="10px">
                                            <tr>
                                                <td>
                                                    <label>E-mail</label>
                                                    <input placeholder="E-mail" id="campoEmail" type="email" name="email" class="required input_field" style="width: 200px">
                                                </td>
                                                <td>
                                                    <label>Senha</label>
                                                    <input placeholder="Senha" type="password" name="senha" class="required input_field" style="width: 200px">
                                                </td>
                                            </tr>
                                        </table>
                                        <table align="center" style="text-align: center">
                                            <tr>
                                                <td><input class="submit_btn" type="submit" value="Cadastrar"></td>
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
