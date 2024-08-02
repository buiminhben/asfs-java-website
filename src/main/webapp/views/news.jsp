<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lí tin tức</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/views/assets/css/templatemo-scholar.css">
        <link rel="stylesheet" href="/views/assets/css/news.css">
</head>

<body class="container" style="background-image: url(/views/assets/images/banner-bg.jpg);">
    <h1 class="text-center mt-5 mb-3">Quản lí tin tức</h1>
    <form action="" class=" offset-3 col-6" modelAttribute="tintuc" method="post">
        <label class="form-label">ID</label>
        <input type="text" class="form-control" value="${tt.newId}" name="newId">
        <label class="form-label">Link</label>
        <input type="text" class="form-control" value="${tt.link_news}" name="link_news">
        <label class="form-label">Credit</label>
        <input type="text" class="form-control" value="${tt.created}" name="created">
        <label class="form-label">Image</label>
        <input type="text" class="form-control" value="${tt.link_image}" name="link_image">
        <label class="form-label">Date</label>
        <input type="date" class="form-control" value="${tt.createDate}" name="createDate">
        <label class="form-label">Content</label>
        <textarea class="form-control" name="title">${tt.title}</textarea>
        <br>
        <c:if test="${not empty mes}">
        <div class="alert alert-danger">${mes}</div>
        </c:if>
        <div class="mt-3">
            <button class="btn btn-outline-info" formaction="/admin/news/create">Create</button>
            <button class="btn btn-outline-info" formaction="/admin/news/update">Update</button>
            <button class="btn btn-outline-info" formaction="/admin/news/delete/${tt.newId}">Delete</button>
            <button class="btn btn-outline-info" formaction="/admin/news">Reset</button>
        </div>
    </form>
    <table class="table table-striped table-bordered mt-3 ">
        <tr>
            <th>ID</th>
            <th>Link</th>
            <th>Cre</th>
            <th>Image</th>
            <th>Content</th>
            <th>Date</th>
            <th></th>
        </tr>
        <c:forEach var="n" items="${list_news}">
        <tr>
            <td>${n.newId}</td>
            <td>${n.link_news}</td>
            <td>${n.created}</td>
            <td>${n.link_image}</td>
            <td>${n.title}</td>
            <td>${n.createDate}</td>
            <td><a href="/admin/news/edit/${n.newId}">Edit</a></td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>