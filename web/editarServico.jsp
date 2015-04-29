<%-- 
    Document   : editarServico
    Created on : 29/04/2015, 01:48:18
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
            <h1>Editar Serviço</h1>
            <form name="Add" method="POST" id="servicoAdd">
                <table cellspacing="10" cellpadding="10">
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
                        <input type="submit" value="Editar Serviço" name="add" />
                        <input type="submit" value="Cancelar" name="cancelar" />
                    </tr>
                </table>
            </form>

        </div>
    </body>
</html>
