<%-- 
    Document   : Login
    Created on : 2 de mai de 2022, 16:17:20
    Author     : devsys-b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Bookstore Website</title>
        <link rel="icon" type="image/x-icon" href="images/default-icon.ico">
        <jsp:include page="./contents/Style.jsp"/>
        <style>
            main {
                max-width: 400px;
                min-height: 100px;
                margin-top: 50px;
                margin-bottom: 565px;
                border-radius: 10px;
            }
            
            div {
                text-align: center;
            }
            
            form label {
                font: bolder 12pt var(--fonte-padrao);
                color: var(--cor4);
            }
            
            form input {
                border-radius: 5px;
            }
            
            form input[type=text]:focus, input[type=password]:focus {
                text-indent: 5px;
                background-color: var(--cor0);
            }
            
            form p {
                color: red;
                margin-top: 12px;
            }
            
            form button {
                border: 1.2px solid var(--cor4);
                color: white;
                background-color: var(--cor3);
                font: bolder 10pt var(--fonte-padrao);
                border-radius: 10px;
                margin-top: 12px;
                padding: 10px 20px;
                transition: .5s;
            }
            
            form button:hover {
                color: var(--cor4);
                background-color: var(--cor0);
            }
            
            div p {
                margin-top: 15px;
                font: normal 12pt var(--fonte-padrao);
            }
            
            div p a {
                text-decoration: none;
                font-weight: bold;
                font-style: italic;
                color: var(--cor3);
            }
            
            div p a:hover {
                text-decoration: underline;
                color: var(--cor2);
            }
        </style>
    </head>
    <body>
        <header>
            <h1>Admin Login</h1>
        </header>
        
        <main>
            <div>
                <form action="login" method="post">
                    <label for="email">Email:</label>
                    <input type="text" name="email" size="30" required/>
                    <br><br>
                    <label for="password">Password:</label>
                    <input type="password" name="password" size="30" required/>
                    <!--
                    Esse atributo MESSAGE será utilizado como retorno de 
                    mensagem ao usuário caso
                    login inválido.
                    -->
                    <p>${message}</p>
                    <button type="submit">Login</button>
                </form>
                    
                <p>Não tem uma conta? <a href="<%=request.getContextPath()%>/bsuser/new">Registre-se</a></p>
            </div>
        </main>       
        
        <jsp:include page="./contents/Footer.jsp"/>
    </body>
</html>