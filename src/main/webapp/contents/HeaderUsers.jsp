<%-- 
    Document   : Header
    Created on : 27 de abr de 2022, 09:49:14
    Author     : devsys-b
--%>

<header>
    <h1>Aplicação BookStoreWeb</h1>
</header>

<nav>
    <a href="<%=request.getContextPath()%>/bsuser/new">
        <span class="material-symbols-outlined">person_add</span>
        <span>Adicionar novo Usuario</span>
    </a>
    <a href="<%=request.getContextPath()%>/bsuser/list">
        <span class="material-symbols-outlined">list</span>
        <span>Lista todos Usuários</span>
    </a>
    <a href="<%=request.getContextPath()%>/bstore/list">
        <span class="material-symbols-outlined">undo</span>
        <span>Voltar para Livros</span>
    </a> 
</nav>
