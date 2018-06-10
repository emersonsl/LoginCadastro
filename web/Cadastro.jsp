<%-- 
    Document   : LoginCadastro
    Created on : Jun 7, 2018, 7:49:55 AM
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
        <h1> Cadastro </h1>
        <form action="LoginCadastroServelet" method="POST">
            Email: <input type="text" name="email" /> <br>
            Senha: <input type="password" name="senha"/> <br>
            <input type="hidden" name= "tipo" value = "cadastro"/>
            <input type="submit" value="Cadastrar"/>
        </form> 
    </body>
</html>
