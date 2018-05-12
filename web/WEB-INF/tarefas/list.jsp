<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../jspf/cabecalho.jspf" %>
<p>Tarefas a serem feitas:</p>
<p><a href="tarefa-nova.html">[Adicionar]</a></p>
<table>
    <thead>
        <tr>
            <th>Título</th>
            <th>Ações</th>
        </tr>
    </thead>
    <c:forEach var="tarefa" items="${tarefas}">
        <tr>
            <td>${tarefa.titulo}</td>
            <td>
            <form method="post" action="terefa-exclui.html">
                <input type="hidden" name="id" value="${tarefa.id}"/>
                <input type="submit" value="X"/>
            </form>
            </td>
        </tr>
    </c:forEach>
</table>
<%@include file="../jspf/rodape.jspf" %>
