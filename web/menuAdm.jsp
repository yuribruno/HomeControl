<%-- 
    Document   : menuAdm
    Created on : 28/04/2015, 23:02:26
    Author     : Yuri Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        
        <title>Home Control</title>
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
                                                <th>Serviços</th>
                                                <th>Descrição</th>
                                                <th>Disponibilidade</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Lâmpadas</td>
                                                <td>
                                                    <textarea name="Descricao" autofocus="autofocus" readonly="readonly">Automatização de lampadas</textarea>
                                                </td>
                                                <td>Serviço Disponível</td>
                                                <td><a href="#editar">Editar</a></td>
                                            </tr>
                                            <tr>
                                                <td>Portas</td>
                                                <td>
                                                    <textarea name="Descricao" autofocus="autofocus" readonly="readonly">Automatização de portões</textarea>
                                                </td>
                                                <td>Serviço Disponível</td>
                                                <td><a href="#editar">Editar</a></td>
                                            </tr>
                                            <tr>
                                                <td>Controle de Temperatura</td>
                                                <td>
                                                    <textarea name="Descricao" autofocus="autofocus" readonly="readonly">Automatização de temperatura</textarea>
                                                </td>
                                                <td>Serviço Disponível</td>
                                                <td><a href="#editar">Editar</a></td>
                                            </tr>
                                            <tr>
                                                <td>Alarme</td>
                                                <td>
                                                    <textarea name="Descricao" autofocus="autofocus" readonly="readonly">Automatização de alarme</textarea>
                                                </td>
                                                <td>Serviço Disponível</td>
                                                <td><a href="#editar">Editar</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div align="center" style="margin-top: 50px">
                                        <table align="center">
                                                <tr>
                                                    <a href="#cadastrarNovo">Cadastrar Novo Serviço</a>
                                                </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="panel" id="editar">
                                <div align="center">
                                    <h1>Editar Serviço</h1>
                                    <form name="editarServ" method="POST">
                                        <table>
                                            <tr>
                                                <td>Nome do Serviço</td><td><input type="tetx" name="nome" size="50">                    
                                            </tr>
                                            <tr>
                                                <td>Descrição do Serviço</td><td><textarea name="descricao" rows="4" cols="20"></textarea>
                                            </tr>
                                            <tr>
                                                <td>Custo de Instalação</td><td><input type="text" name="precoInstalacao" pattern="^\d+(\.|\,)\d{2}$" style="width: 60px">                    
                                            </tr>
                                            <tr>
                                                <td>Custo de Manutenção</td><td><input type="text" name="precoManutencao" pattern="^\d+(\.|\,)\d{2}$" style="width: 60px">                    
                                            </tr>
                                            <tr>
                                                <td>Disponibilidade</td>
                                                <td>
                                                    <input type="checkbox" name="disponibilidade" value=true>Serviço Disponível<br>
                                                    <input type="checkbox" name="disponibilidade" value=false>Serviço não Disponível<br>
                                                </td>
                                            </tr>
                                        </table>
                                        <table align="center">
                                            <tr>
                                                <input type="submit" value="Editar Serviço" name="add" />
                                                <input type="submit" value="Cancelar" name="cancelar" />
                                            </tr>
                                        </table>
                                    </form>

                                </div>
                            </div>
                            <div class="panel" id="cadastrarNovo">
                                <div align="center">
                                    <form name="cadastrarServ" method="POST">
                                        <table>
                                            <tr>
                                                <td>Nome do Serviço</td><td><input type="tetx" name="nome" size="50">                    
                                            </tr>
                                            <tr>
                                                <td>Descrição do Serviço</td><td><textarea name="descricao" rows="4" cols="20"></textarea>
                                            </tr>
                                            <tr>
                                                <td>Custo de Instalação</td><td><input type="number" name="precoInstalacao" pattern="^\d+(\.|\,)\d{2}$">                    
                                            </tr>
                                            <tr>
                                                <td>Custo de Manutenção</td><td><input type="number" name="precoManutencao" pattern="^\d+(\.|\,)\d{2}$">                    
                                            </tr>
                                            <tr>
                                                <td>Disponibilidade</td><td><input type="checkbox" name="disponibilidade" value=true>Serviço Disponível<br>
                                                    <input type="checkbox" name="disponibilidade" value=false>Serviço não Disponível<br>
                                            </tr>
                                        </table>
                                        <table align="center">
                                            <tr>
                                                <input type="submit" value="Cadastrar Serviço" name="add" />
                                                <input type="submit" value="Cancelar" name="cancelar" />
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                            <div class="panel" id="alocar">
                                <div align="center">
                                    <input type="text" name="buscaCliente" value="" size="50" />
                                    <input type="submit" value="Buscar" name="buscaCliente" />
                                    
                                    <table border="1">
                                        <thead>
                                            <tr>
                                        <h1 style="margin-top: 30px " align="left">Clientes:</h1>
                                            </tr>
                                            <tr>
                                                <th>Nome</th>
                                                <th>E-mail</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Felipe Ribeiro</td>
                                                <td>felipe@gmail.com</td>
                                                <td> <input type="submit" value="Selecionar" name="cliente" onclick="location.href='#cliente'"/> </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="panel" id="cliente">
                                <input type="submit" value="Voltar" name="voltarPagina" />
                                <div align="center">
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>Cliente: Felipe Ribeiro</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><a href="#historico">Consultar Histórico de pagamentos</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#alocarServ">Alocar Plano de Serviços</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="panel" id="historico">
                                <input type="submit" value="Voltar" name="voltarPagina" />
                                <div align="center">
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>Cliente: Felipe Ribeiro</th>
                                            </tr>
                                            <tr>
                                                <th>Data</th>
                                                <th>Situação</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>01/05/20115</td>
                                                <td>Em aberto</td>
                                            </tr>
                                            <tr>
                                                <td>01/04/20115</td>
                                                <td>Pago</td>
                                            </tr>
                                            <tr>
                                                <td>01/03/20115</td>
                                                <td>Pago</td>
                                            </tr>
                                            <tr>
                                                <td>01/02/20115</td>
                                                <td>Pago</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="panel" id="alocarServ">
                                <input type="submit" value="Voltar" name="voltarPagina" />
                                <div align="center">
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>Cliente: Felipe Ribeiro</th>
                                            </tr>
                                            <tr>
                                                <td>Serviço</td>
                                                <td>Manutenção</td>
                                                <td>Instalação</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Lâmpada</td>
                                                <td>R$ 2,00</td>
                                                <td>R$ 5,00</td>
                                                <td>Desabilitar</td>
                                                <td> <input type="submit" value="Editar" name="editar" /> </td>
                                            </tr>
                                            <tr>
                                                <td>Porta</td>
                                                <td>R$ 5,50</td>
                                                <td>R$ 55,00</td>
                                                <td>Desabilitar</td>
                                                <td> <input type="submit" value="Editar" name="editar" /> </td>
                                            </tr>
                                            <tr>
                                                <td>Alarme</td>
                                                <td>R$ 5,00</td>
                                                <td>R$ 50,00</td>
                                                <td>Desabilitar</td>
                                                <td> <input type="submit" value="Editar" name="editar" /> </td>
                                            </tr>
                                            <tr>
                                                <td>Ar condicionado</td>
                                                <td>R$ 10,00</td>
                                                <td>R$ 150,00</td>
                                                <td>Desabilitar</td>
                                                <td> <input type="submit" value="Editar" name="editar" /> </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div style="margin-top: 30px">
                                    <input type="submit" value="Alocar Novo Serviço" name="alocarNovo" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- end of content -->
        
            <div id="templatemo_footer">

                Copyright © 2048 <a href="#">Home Control</a> | by <a href="" target="_parent">Yuri Bruno</a>

            </div> <!-- end of templatemo_footer -->
        </div> <!-- end of main -->
    </body>
</html>
