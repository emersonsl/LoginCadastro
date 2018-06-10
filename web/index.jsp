<%-- 
    Document   : index
    Created on : Jun 7, 2018, 8:50:09 AM
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String e = (String)session.getAttribute("email");
            Long t = (System.currentTimeMillis() - session.getCreationTime())/1000;
            if(e!=null){ 
                if(t>30){ //verifica se a sessão já expirou
                    session.invalidate();
                    out.println(e+": Sessão expirada <br> Clique <a href='Cadastro.jsp'>aqui</a> para cadastrar ou <a href='Login.jsp'>aqui</a> para logar.");
                }
                else{
                    out.println(e+": está logado há: "+t+" segundos");
                }
            }else{
                out.println("Clique <a href='Cadastro.jsp'>aqui</a> para cadastrar ou <a href='Login.jsp'>aqui</a> para logar.");
            }
        %>
        
    </body>
</html>
