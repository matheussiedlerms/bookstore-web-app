<%-- 
    Document   : UserList
    Created on : 2 de mai de 2022, 14:51:29
    Author     : devsys-b
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Aplicação BookStoreWeb</title>
        <jsp:include page="./contents/HeadTags.jsp"/>
        <link rel="icon" type="image/x-icon" href="../images/list-of-users.ico">
        <jsp:include page="./contents/Style.jsp"/>
        <style>
            main td.preco {
                text-align: right;
                color: #025940;
            }

            main td a {
                color: black;
                text-decoration: none;
            }

            main td a:hover {
                color: var(--cor2);
            }
        </style>
    </head>
     
    <body>
        <div id="userAtivo">
            <p>User ativo: <c:out value="${user.fullname}" /></p>
        </div>
        
        <jsp:include page="./contents/HeaderUsers.jsp"/>

        <main>
            <table border="1" cellpadding="5">
                <caption><h2>List of User</h2></caption>
                <tr>
                    <th>ID</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Nome Completo</th>
                    <th>Ações</th>
                </tr>

                <c:forEach var="user" items="${listaUser}">
                    <tr>
                        <td><c:out value="${user.id}" /></td>
                        <td><c:out value="${user.email}" /></td>
                        <td><c:out value="${user.password}" /></td>
                        <td><c:out value="${user.fullname}" /></td>
                        <td>
                            <a href="<%=request.getContextPath()%>/bsuser/edit?id=<c:out value='${user.id}'/>">
                                <span class="material-symbols-outlined">edit</span>
                            </a>
                            &nbsp;
                            <a href="<%=request.getContextPath()%>/bsuser/delete?id=<c:out value='${user.id}'/>" onclick="avisoDeletar()">
                                <span class="material-symbols-outlined">delete</span>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </main>
        
        <jsp:include page="./contents/Footer.jsp"/>
        
        <script>
            function avisoDeletar() {
                var teste = window.confirm('Deletar o usuário?');
                
                if (teste) {
                    window.alert('Usuário deletado com sucesso!');
                } else {
                    window.alert('Ops... Você deletou o registro. Registre o usuário novamente!');
                }
            }
        </script>
    </body>
</html>