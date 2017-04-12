<%-- 
    Document   : home
    Created on : 12/04/2017, 20:03:44
    Author     : RicardoPupo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WebApp: JSP</title>
    </head>
    <body>
        <h3><a href="home.jsp">Voltar</a></h3>
        <h1>WebApp: JSP</h1>
        <h2>TABUADA</h2>
        <hr/>
        <%
            int n=10;
            try{n = Integer.parseInt(request.getParameter("n"));}
            catch(Exception e){}
        %>
        <form>
            Número:<br/>
            <input type="number" name="n" value="<%=n%>"/>
            <input type="submit" value="Gerar Tabuada"/>
        </form>
        <hr/>
        <table>
            <%for(int i=1; i<=10; i++){%>
            <tr>
                <td><%=n%> x <%=i%></td>
                <td>= <%=(n*i)%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
