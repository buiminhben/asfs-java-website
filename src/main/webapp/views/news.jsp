<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
    <form action="" class=" offset-3 col-6">
        <label class="form-label">ID</label>
        <input type="text" class="form-control">
        <label class="form-label">Link</label>
        <input type="text" class="form-control">
        <label class="form-label">Credit</label>
        <input type="text" class="form-control">
        <label class="form-label">Image</label>
        <input type="text" class="form-control">
        <label class="form-label">Content</label>
        <textarea class="form-control"></textarea>
        <div class="mt-3">
            <button class="btn btn-outline-info">Create</button>
            <button class="btn btn-outline-info">Update</button>
            <button class="btn btn-outline-info">Delete</button>
            <button class="btn btn-outline-info">Reset</button>
        </div>
    </form>
    <table class="table mt-3">
        <tr>
            <th>ID</th>
            <th>Link</th>
            <th>Cre</th>
            <th>Image</th>
            <th>Content</th>
            <th></th>
        </tr>
        <tr c:forEach="">
            <td></td>
        </tr>
    </table>
</body>
</html>