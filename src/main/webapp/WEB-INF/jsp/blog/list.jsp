<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../top-nav.jsp"></jsp:include>

<div class="col-sm-12">
    <h2>文章列表</h2>
    <div class="pull-right">
        <button class="btn btn-primary write-btn">写文章</button>
    </div>

    <table id="blogsTable" class="table table-striped">
        <thead>
        <tr>
            <th>Title</th>
            <th>Content</th>
            <th>CreateTime</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${blogs}" var="blog">
            <tr>
                <td><a href="/blog/${blog.id}">${blog.title}</a></td>
                <td>${blog.content}</td>
                <td>${blog.gmtCreated}</td>
            </tr>
        </c:forEach>
        </tbody>

    </table>
</div>
<jsp:include page="../footer.jsp"></jsp:include>


<footer class="panel-footer rest-footer">
    <div class="footer-nav">
        <a href="/" target="_blank" hidefocus="true">RestFeel</a>
        |
        <a href="https://universsky.github.io/" target="_blank">光剑免费图书馆</a>
        |
        <a href="https://jason-chen-2017.github.io/Jason-Chen-2017/" target="_blank">博客</a>
        |
        <a href="#" target="_blank" hidefocus="true">微信公众号：ols-lightshadow</a>
    </div>
    <div class="copyright">RestFeel 2017-7017</div>

</footer>

</body>
</html>



