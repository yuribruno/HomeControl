<%-- 
    Document   : menuUser
    Created on : 28/04/2015, 23:02:43
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
                    <li><a href="#alarme">Alarme<span class="ui_icon home"></span></a></li>
                    <li><a href="#dispositivos">Dispositivos<span class="ui_icon aboutus"></span></a></li>
                    <li><a href="#dados">Dados<span class="ui_icon services"></span></a></li>
                    <li><a href="#servicos">Serviços<span class="ui_icon gallery"></span></a></li>
                </ul>
            </div> <!-- end of sidebar -->

            <div id="templatemo_main">
                <div id="content">
                    <div class="scroll">
                        <div class="scrollContainer">
                            <div class="panel" id="home">
                                <img src="images/homeBack.png">
                            </div>
                            <div class="panel" id="alarme">
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
                                        </tbody>
                                    </table>
                                    <div align="center" wigth="100px" height="100px">
                                        <table>
                                            <tr>
                                                <td><input type="button" name="tecladoNum" value="1" /></td>
                                                <td><input type="button" name="tecladoNum" value="2" /></td>
                                                <td><input type="button" name="tecladoNum" value="3" /></td>
                                            </tr>
                                            <tr>
                                                <td><input type="button" name="tecladoNum" value="4" /></td>
                                                <td><input type="button" name="tecladoNum" value="5" /></td>
                                                <td><input type="button" name="tecladoNum" value="6" /></td>
                                            </tr>
                                            <tr>
                                                <td><input type="button" name="tecladoNum" value="7" /></td>
                                                <td><input type="button" name="tecladoNum" value="8" /></td>
                                                <td><input type="button" name="tecladoNum" value="9" /></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td><input type="button" name="tecladoNum" value="0" /></td>
                                                <td></td>
                                            </tr>
                                        </table>
                                        <div align="center" style="margin-top: 25px">
                                            <input type="button" name="estado" value="Ativar" style="width: 100px"/>
                                            <input type="button" name="estado" value="Desativar" style="width: 100px"/>
                                        </div>
                                    </div>
                                </div>
                            </div>                    
                            <div class="panel" id="dispositivos">
                                <div align="center">
                                    <a href="#luzes"><img src="images/botaoLuzes.png"></a>
                                    <a href="#ar"><img src="images/botaoArcondicionado.png"></a>
                                    <a href="#porta"><img src="images/botaoPorta.png"></a>
                                </div>
                            </div>
                            <div class="panel" id="luzes">
                                <div align="center">
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>Local</th>
                                                <th>Estado</th>
                                                <th>Ação</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Quarto 01</td>
                                                <td>Ligado</td>
                                                <td>
                                                    <input type="submit" value="Ligar" name="ligar" />
                                                    <input type="submit" value="Desligar" name="ligar" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Quarto 02</td>
                                                <td>Desligado</td>
                                                <td>
                                                    <input type="submit" value="Ligar" name="ligar" />
                                                    <input type="submit" value="Desligar" name="ligar" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Sala 01</td>
                                                <td>Ligado</td>
                                                <td>
                                                    <input type="submit" value="Ligar" name="ligar" />
                                                    <input type="submit" value="Desligar" name="ligar" />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="panel" id="ar">
                                <div align="center">
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>Local</th>
                                                <th>Estado</th>
                                                <th>Ação</th>
                                                <th>Temperatura</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Quarto 01</td>
                                                <td>Ligado</td>
                                                <td>
                                                    <input type="submit" value="Ligar" name="ligar" />
                                                    <input type="submit" value="Desligar" name="ligar" />
                                                </td>
                                                <td>
                                                    <input type="number" name="temp" min="5" max="25" style="width: 30px"/>
                                                    <input type="submit" value="Mudar" name="mudarTemp" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Quarto 02</td>
                                                <td>Desligado</td>
                                                <td>
                                                    <input type="submit" value="Ligar" name="ligar" />
                                                    <input type="submit" value="Desligar" name="ligar" />
                                                </td>
                                                <td>
                                                    <input type="number" name="temp" min="5" max="25" style="width: 30px"/>
                                                    <input type="submit" value="Mudar" name="mudarTemp" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Sala 01</td>
                                                <td>Ligado</td>
                                                <td>
                                                    <input type="submit" value="Ligar" name="ligar" />
                                                    <input type="submit" value="Desligar" name="ligar" />
                                                </td>
                                                <td>
                                                    <input type="number" name="temp" min="5" max="25" style="width: 30px"/>
                                                    <input type="submit" value="Mudar" name="mudarTemp" />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="panel" id="porta">
                                <div align="center">
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>Local</th>
                                                <th>Estado</th>
                                                <th>Ação</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Garagem</td>
                                                <td>Fechado</td>
                                                <td>
                                                    <input type="submit" value="Abrir" name="abrir" />
                                                    <input type="submit" value="Fechar" name="fechar" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Porta da frente</td>
                                                <td>Fechado</td>
                                                <td>
                                                    <input type="submit" value="Abrir" name="abrir" />
                                                    <input type="submit" value="Fechar" name="fechar" />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="panel" id="dados">
                                <div align="center">
                                    <a href="#dadosDispositivos"><img src="images/botaoDadosDis.png"></a>
                                    <a href="#dadosSensores"><img src="images/botaoDadosSensor.png"></a>
                                </div>
                            </div>
                            <div class="panel" id="dadosSensores">
                                <div align="center">
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>Sensor</th>
                                                <th>Data da ultima verificação</th>
                                                <th>Hora</th>
                                                <th>Estado</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Sensor de Presença</td>
                                                <td>05/05/2015</td>
                                                <td>10:05</td>
                                                <td>Ativo</td>
                                                <td><a href="#presenca">Listar</a></td>
                                            </tr>
                                            <tr>
                                                <td>Sensor de Temperatura</td>
                                                <td>05/05/2015</td>
                                                <td>10:05</td>
                                                <td>Ativo</td>
                                                <td><a href="#temperatura">Listar</a></td>
                                            </tr>
                                            <tr>
                                                <td>Sensor de Luminosidade</td>
                                                <td>05/05/2015</td>
                                                <td>10:05</td>
                                                <td>Ativo</td>
                                                <td><a href="#luminosidade">Listar</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="panel" id="dadosDispositivos">
                                <div align="center">
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>Nome</th>
                                                <th>Local</th>
                                                <th>Data</th>
                                                <th>Hora</th>
                                                <th>Usuário</th>
                                                <th>Ação</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Luz</td>
                                                <td>Quarto 01</td>
                                                <td>05/05/2015</td>
                                                <td>10:05</td>
                                                <td>Felipe Ribeiro</td>
                                                <td>Ligar</td>
                                            </tr>
                                            <tr>
                                                <td>Luz</td>
                                                <td>Sala</td>
                                                <td>05/05/2015</td>
                                                <td>10:05</td>
                                                <td>Felipe Ribeiro</td>
                                                <td>Desligar</td>
                                            </tr>
                                            <tr>
                                                <td>Porta</td>
                                                <td>Garagem</td>
                                                <td>05/05/2015</td>
                                                <td>10:05</td>
                                                <td>Felipe Ribeiro</td>
                                                <td>Abrir</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <input type="submit" align="right" value="Atualizar" name="atualizar" />
                                </div>
                            </div>
                            <div class="panel" id="presenca">
                                <div align="center">
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <h4>Sensor de Presença</h4>
                                            </tr>
                                            <tr>
                                                <th>Data de Atividade</th>
                                                <th>Hora</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>05/05/2015</td>
                                                <td>10:05</td>
                                            </tr>
                                            <tr>
                                                <td>05/05/2015</td>
                                                <td>10:05</td>
                                            </tr>
                                            <tr>
                                                <td>05/05/2015</td>
                                                <td>10:05</td>
                                            </tr>
                                            <tr>
                                                <td>05/05/2015</td>
                                                <td>10:05</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="panel" id="temperatura">
                                <div align="center">
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <h4>Sensor de Temperatura</h4>
                                            </tr>
                                            <tr>
                                                <th>Local</th>
                                                <th>ºC</th>
                                                <th>Padrão</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Quarto 01</td>
                                                <td>25</td>
                                                <td>20</td>
                                                <td><a>Atualizar</a></td>
                                            </tr>
                                            <tr>
                                                <td>Quarto 02</td>
                                                <td>25</td>
                                                <td>20</td>
                                                <td><a>Atualizar</a></td>
                                            </tr>
                                            <tr>
                                                <td>Sala 01</td>
                                                <td>25</td>
                                                <td>20</td>
                                                <td><a>Atualizar</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="panel" id="luminosidade">
                                <div align="center">
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <h4>Sensor de Luminosidade</h4>
                                            </tr>
                                            <tr>
                                                <th>Local</th>
                                                <th>%</th>
                                                <th>Padrão</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Quarto 01</td>
                                                <td>50</td>
                                                <td>100</td>
                                                <td><a>Atualizar</a></td>
                                            </tr>
                                            <tr>
                                                <td>Quarto 02</td>
                                                <td>50</td>
                                                <td>100</td>
                                                <td><a>Atualizar</a></td>
                                            </tr>
                                            <tr>
                                                <td>Sala 01</td>
                                                <td>50</td>
                                                <td>100</td>
                                                <td><a>Atualizar</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="panel" id="servicos">
                                <div align="center">
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <td>Serviço</td>
                                                <td>Manutenção</td>
                                                <td>Instalação</td>
                                                <td>Quantidade</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Lâmpada</td>
                                                <td>R$ 2,00</td>
                                                <td>R$ 5,00</td>
                                                <td> <input type="number" value="" name="quantidade" style="width: 50px"/> </td>
                                                <td> <input type="checkbox" name="Selecionar" value="ON" /> </td>
                                            </tr>
                                            <tr>
                                                <td>Porta</td>
                                                <td>R$ 5,50</td>
                                                <td>R$ 55,00</td>
                                                <td> <input type="number" value="" name="quantidade" style="width: 50px"/> </td>
                                                <td> <input type="checkbox" name="Selecionar" value="ON" /> </td>
                                            </tr>
                                            <tr>
                                                <td>Alarme</td>
                                                <td>R$ 5,00</td>
                                                <td>R$ 50,00</td>
                                                <td> <input type="number" value="" name="quantidade" style="width: 50px"/> </td>
                                                <td> <input type="checkbox" name="Selecionar" value="ON" /> </td>
                                            </tr>
                                            <tr>
                                                <td>Ar condicionado</td>
                                                <td>R$ 10,00</td>
                                                <td>R$ 150,00</td>
                                                <td> <input type="number" value="" name="quantidade" style="width: 50px"/> </td>
                                                <td> <input type="checkbox" name="Selecionar" value="ON" /> </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div align="center">
                                    <h3>Orçamento: </h3>
                                    <textarea name="Orçamento" rows="4" cols="20" readonly="readonly">
                                    </textarea>
                                    <input type="submit" value="Efetivar orçamento" name="orcamento" />
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
