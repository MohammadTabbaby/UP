<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hello</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
</head>
<body>
<%@include file="Views/menu.jsp" %>
<div class=container pt-5>
    <div>
        <h1> Bonjour DevOps & Cloud </h1>
        <form action="hello-servlet" method="post" name="form1">
            <label class="form-label" for="pNom">Nom:</label>
            <input class="form-control" name="pNom" id="pNom" type="text" placeholder="Donner votre nom" required/>
            <br>
            <button class="btn btn-primary" type="submit" name="save">Save</button>

        </form>
        <c:if test="${ !empty pNom }">
            <div>
                Bonjour <c:out value="${ sessionScope.pNom }"/> ;
            </div>
        </c:if>
        <%--<h3>Nom: ${ nom }</h3>--%>
        <%--    <h3>Prenom: ${prenom}</h3>--%>
        <a class="btn btn-success" href="#">Test</a>
    </div>
</div>

</body>
</html>
