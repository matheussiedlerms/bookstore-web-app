<%-- 
    Document   : Header
    Created on : 27 de abr de 2022, 09:49:14
    Author     : devsys-b
--%>

<header>
    <h1>Aplicação BookStoreWeb</h1>
</header>

<nav>
    <a href="<%=request.getContextPath()%>/bstore/new">
        <span class="material-symbols-outlined">add</span>
        <span>Adicionar novo Livro</span>
    </a>
    <a href="<%=request.getContextPath()%>/bstore/list">
        <span class="material-symbols-outlined">list</span>
        <span>Lista todos Livros</span>
    </a>
    <a href="<%=request.getContextPath()%>/bsuser/list">
        <span class="material-symbols-outlined">group</span>
        <span>Lista de Usuários</span>
    </a>
    <a href="<%=request.getContextPath()%>/logout">
        <span class="material-symbols-outlined">logout</span>
        <span>Sair</span>
    </a> 
</nav>
