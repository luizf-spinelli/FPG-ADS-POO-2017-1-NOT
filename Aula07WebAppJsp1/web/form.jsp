<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page: Form</title>
    </head>
    <body>
        <h1>Formulário</h1>
        <hr/>
        <%
            String nome = request.getParameter("nome");
            String idade = request.getParameter("idade");
        %>
        <%if(request.getParameter("nome")!= null){%>
        <h1>
            Seu nome é <%=nome%> 
            e você tem <%=idade%> anos.
        </h1>        
        <hr/>
        <%}%>
        <form>
            Nome:
            <input type="text" name="nome"/>
            Idade:
            <input type="number" name="idade"/>
            <input type="submit"/>
        </form>
    </body>
</html>
