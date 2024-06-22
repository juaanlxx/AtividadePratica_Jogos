<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novos Jogos</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <h1>Novos Jogos</h1>
            <form action="/jogos/insert" method="post">
                <div>
                    <label class="form-label">Título:</label>
                    <input type="text" name="titulo" class="form-control" />
                </div>
                <div>
                    <label class="form-label">Gênero:</label>
                    <select name="genero" class="form-select">
                        <c:forEach var="item" items="${generos}">
                            <option value="${item.id}">${item.nome}</option>
                        </c:forEach>
                    </select>
                </div>
                <div>
                    <label class="form-label">Multiplayer:</label>
                    <select name="multiplayer" class="form-select" >
                        <option value="Sim">Sim</option>
                        <option value="Não">Não</option>
                    </select>
                </div>

                <br />
                <a href="/jogos/list" class="btn btn-secondary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>