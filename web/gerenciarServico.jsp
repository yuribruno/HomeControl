<%-- 
    Document   : gerenciarServico
    Created on : 28/04/2015, 22:33:42
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
        <div align="center" style="margin-top: 100px">
            <table align="center">
                    <tr>
                        <input type="submit" value="Cadastrar Novo Serviço" name="add" />
                    </tr>
            </table>
        </div>
        <div align="center" style="margin-top: 30px">
            <table border="0" cellspacing="15" cellpadding="15">
                <thead>
                    <tr>
                        <th>Serviços</th>
                        <th>Descrição</th>
                        <th>Disponibilidade</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Lampada</td>
                        <td>
                            <textarea name="Descricao" autofocus="autofocus" readonly="readonly">Automatização de lampadas</textarea>
                        </td>
                        <td>Serviço Disponível</td>
                        <td><input type="submit" value="Editar" /></td>
                    </tr>
                    <tr>
                        <td>Portão</td>
                        <td>
                            <textarea name="Descricao" autofocus="autofocus" readonly="readonly">Automatização de portões</textarea>
                        </td>
                        <td>Serviço Disponível</td>
                        <td><input type="submit" value="Editar" /></td>
                    </tr>
                    <tr>
                        <td>Temperatura</td>
                        <td>
                            <textarea name="Descricao" autofocus="autofocus" readonly="readonly">Automatização de temperatura</textarea>
                        </td>
                        <td>Serviço Disponível</td>
                        <td><input type="submit" value="Editar" /></td>
                    </tr>
                    <tr>
                        <td>Alarme</td>
                        <td>
                            <textarea name="Descricao" autofocus="autofocus" readonly="readonly">Automatização de alarme</textarea>
                        </td>
                        <td>Serviço Disponível</td>
                        <td><input type="submit" value="Editar" /></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
