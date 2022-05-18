<%-- 
    Document   : UserForm
    Created on : 2 de mai de 2022, 14:51:17
    Author     : devsys-b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Aplicação Books Store</title>
        <jsp:include page="./contents/HeadTags.jsp"/>
        <link rel="icon" type="image/x-icon" href="../images/form.ico">
        <jsp:include page="./contents/Style.jsp"/>
        <style>
            main td input {
                padding: 4px;
            }
            
            main td#preco {
                text-align: left;
            }
            
            main #botao {
                color: white;
                font: bold 12pt var(--fonte-padrao);
                padding: 10px;
                border: none;
                background-color: var(--cor4);
                border: 1px solid var(--cor4);
                border-radius: 5px;
                transition: .5s;
            }
            
            main #botao:hover {
                color: var(--cor4);
                background-color: var(--cor1);
            }
        </style>
    </head>
    
    <body>
        <div id="userAtivo">
            <p>User ativo: <c:out value="${user.fullname}" /></p>
        </div>
        
        <jsp:include page="./contents/HeaderUsers.jsp"/>

        <div>
            <c:if test="${userForm != null}">
                <form action="update" method="post">
            </c:if>
            <c:if test="${userForm == null}">
                <form action="insert" method="post">
            </c:if>
                    <main>
                       <table border="1" cellpadding="5">
                            <caption>
                                <h2>
                                <c:if test="${userForm != null}">
                                Editar Usuário
                                </c:if>
                                <c:if test="${userForm == null}">
                                Adicionar novo Usuário
                                </c:if>
                                </h2>
                            </caption>
                            <c:if test="${userForm != null}">
                                <input type="hidden" name="formId" value="<c:out
                            value='${userForm.id}' />" />
                            </c:if>
                            <tr>
                                <th>Email: </th>
                                <td>
                                    <input type="text" name="formEmail" size="45"
                                    value="<c:out value='${userForm.email}' />"
                                    />
                                </td>
                            </tr>
                            <tr>
                                <th>Password: </th>
                                <td>
                                    <input type="text" name="formPassword" size="45"
                                    value="<c:out value='${userForm.password}' />"
                                    />
                                </td>
                            </tr>
                            <tr>
                                <th>Full Name: </th>
                                <td>
                                    <input type="text" name="formFullname" size="45"
                                    value="<c:out value='${userForm.fullname}' />"
                                    />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <input id="botao" type="submit" value="Enviar" />
                                </td>
                            </tr>
                        </table>
                    </main>
                </form>
        </div>
        
        <jsp:include page="./contents/Footer.jsp"/>
    </body>
</html>