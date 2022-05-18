<%-- 
    Document   : Style
    Created on : 27 de abr de 2022, 10:31:01
    Author     : devsys-b
--%>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap');
            
    :root {
        --cor0: #D9C6BA;
        --cor1: #A66953;
        --cor2: #8C3F23;
        --cor3: #59362E;
        --cor4: #142126;

        --fonte-padrao: Arial, Helvetica, sans-serif;
        --fonte-destaque: 'Bebas Neue', cursive;
    }

    * {
        margin: 0;
        padding: 0;
    }

    body {
        background-color: var(--cor0);
        font-family: var(--fonte-padrao);
    }
    
    #userAtivo {
        color: white;
        text-align: center;
        background-color: var(--cor4);
        font-weight: bold;
        padding: 5px;
    }

    header {
        background-image: linear-gradient(to bottom, var(--cor1), var(--cor4));
        min-height: 100px;
        text-align: center;
        padding-top: 40px;
    }

    header > h1 {
        color: white;
        font-family: var(--fonte-destaque);
        font-size: 3.5em;
        font-weight: normal;
        margin-bottom: 20px;
        text-shadow: 2px 2px 0px rgba(0, 0, 0, 0.270);
    }

    nav {
        background-color: var(--cor4);
        padding: 15px;
        text-align: center;
        box-shadow: 0px 7px 7px rgba(0, 0, 0, 0.2);
    }

    nav > a {
        color: var(--cor0);
        padding: 10px;
        margin: 0px 12px;
        text-decoration: none;
        font-weight: bold;
        border-radius: 5px;
        transition-duration: .5s;
    }

    nav > a:hover {
        background-color: var(--cor0);
        color: var(--cor4);
    }
    
    nav > a span {
        vertical-align: middle;
    }

    main {
        min-width: 300px;
        max-width: 800px;
        min-height: 690px;
        margin: auto;
        margin-bottom: 30px;
        padding: 20px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.50);
        border-bottom-left-radius: 10px;
        border-bottom-right-radius: 10px;
        background-color: white;
    }

    main h2 {
        color: var(--cor4);
        font-weight: normal;
        font-family: var(--fonte-destaque);
        font-size: 2.2em;
        margin-bottom: 8px;
    }

    main > table {
        margin: auto;
        padding: 5px;
        text-align: center;
        border-radius: 10px;
        background-color: var(--cor1);
        border: 3px solid var(--cor4);
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.50);
    }

    main th {
        color: white;
        padding: 5px;
        border-radius: 5px;
        background-color: var(--cor3);
        border: 2px solid var(--cor4);
    }

    main td {
        padding: 5px;
        border-radius: 3px;
        background-color: var(--cor0);
        border: 1px solid var(--cor4);
        font-weight: bold;
    }

    footer {
        background-color: var(--cor4);
        padding: 5px;
        text-align: center;
        font-size: 0.8em;
        color: white;
    }
    
    .material-symbols-outlined {
        font-variation-settings:
        'FILL' 0,
        'wght' 400,
        'GRAD' 0,
        'opsz' 48
    }
</style>
