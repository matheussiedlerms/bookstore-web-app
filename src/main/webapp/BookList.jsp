<%-- 
    Document   : BookList
    Created on : 20 de abr de 2022, 09:04:33
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
        <link rel="icon" type="image/x-icon" href="../images/list-of-books.ico">
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
        
        <jsp:include page="./contents/HeaderBooks.jsp"/>

        <main>
            <table border="1" cellpadding="5">
                <caption><h2>List of Books</h2></caption>
                <tr>
                    <th>ID</th>
                    <th>Titulo</th>
                    <th>Autor</th>
                    <th>Preco</th>
                    <th>Ações</th>
                </tr>

                <c:forEach var="book" items="${listaBook}">
                    <tr>
                        <td><c:out value="${book.id}" /></td>
                        <td><c:out value="${book.titulo}" /></td>
                        <td><c:out value="${book.autor}" /></td>
                        <td class="preco"><c:out value="${book.preco}" /></td>
                        <td>
                            <a href="<%=request.getContextPath()%>/bstore/edit?id=<c:out value='${book.id}'/>">
                                <span class="material-symbols-outlined">edit</span>
                            </a>
                            &nbsp;
                            <a href="<%=request.getContextPath()%>/bstore/delete?id=<c:out value='${book.id}'/>" onclick="avisoDeletar()">
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
                var teste = window.confirm('Deletar o livro?');
                
                if (teste) {
                    window.alert('Livro deletado com sucesso!');
                } else {
                    window.alert('Ops... Você deletou o registro. Registre o livro novamente!');
                }
            }
        </script>
    </body>
</html>