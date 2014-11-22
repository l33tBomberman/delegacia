<%-- 
    Document   : index
    Created on : 11/11/2014, 07:45:36
    Author     : alunos
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="mvc.Contato"%>
<%@page import="mvc.ContatoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ficha</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <style>
            h4 {color:whitesmoke}
        </style>
    </head>
    <body style="background:#000000">
        <div class="container">
		<header>
                    <div class="col-md-12">
                        <a href="index.jsp">
                            <img style="display: block; margin-left: auto; margin-right: auto" src="http://www.dpf.gov.br/logo.png" class="img-responsive" alt="ufmg"/>
                        </a>
                    </div>
                </header>
        </div>
        <hr>
        <div class="panel panel-default">
        <div class="panel-heading"><h1>Fichas</h1></div>
        <div class="panel-body"><p>Tabela contendo os arquivos polícias, toda
                informação contida nele é de autoria da Polícia Federal Brasileira,
                qualquer cópia indevida é crime federal passível de punições severas.</p></div>
        <table class="table">
        <tr>
                <td>
                    ID
                </td>
                <td>
                    NOME
                </td>
                <td>
                    CPF
                </td>
                <td>
                    RESIDENCIA
                </td>
                <td>
                    DELITO
                </td>
                <td>
                    DATA
                </td>
                <td>
                    HORA
                </td>
                <td>
                    LOCAL
                </td>
                <td>
                    ESTADO
                </td>
                <td>
                    IMAGEM
                </td>
            </tr>
            <%
                ContatoDao dao = new ContatoDao();
                ArrayList<Contato> contatos = dao.getListaAlfabetica();
                for (Contato contato : contatos) {
            %>
            <tr>
                <td>
                    <%= contato.getId()%>
                </td>
                <td>
                    <%= contato.getNome()%>
                </td>
                <td>
                    <%= contato.getCpf()%>
                </td>
                <td>
                    <%= contato.getResidencia()%>
                </td>
                <td>
                    <%= contato.getDelito()%>
                </td>
                <td>
                    <%= contato.getData()%>
                </td>
                <td>
                    <%= contato.getHora()%>
                </td>
                <td>
                    <%= contato.getLocal()%>
                </td>
                <td>
                    <%= contato.getEstado()%>
                </td>
                <td>
                    <img src="<%= contato.getImagem()%>" alt="meliantz" height="50" width="50">
                </td>
            </tr>
            <%
                }
            %>
        </table>
        </div>
        <div class="container" style="background:#080808">
        <h1 style="color:whitesmoke">Remove Ficha</h1>
        <br>
        <form action="mvc">
            <div class="col-md-2">
            </div>
            <div class="col-md-10">
            <input type="text" style="display: none;" value="RemoveContatoLogic" name="logica" />
            <h4>ID:</h4> <input type="text" class="form-control" name="id"/><br><br>
            </div>
            <button type="submit">Remove</button> 
        </form>
        </div>
    </body>
</html>
