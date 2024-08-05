<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Chat Application</title>
</head>
<body>
    <h1>Chat Application</h1>

    <form action="/send" method="post">
        <input type="text" name="sender" placeholder="Your name" required/>
        <textarea name="content" placeholder="Type your message" required></textarea>
        <button type="submit">Send</button>
    </form>

    <h2>Messages</h2>
    <ul>
        <c:forEach var="message" items="${messages}">
            <li><strong><c:out value="${message.sender}"/>:</strong> <c:out value="${message.content}"/></li>
        </c:forEach>
    </ul>
</body>
</html>
