<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<%@ page pageEncoding="utf-8"%>
<div class="jumbotron">
    <h1>Books INDEX</h1>
    <p>views/books/index.jsp</p>
</div>
<div class="search">
    <form class="">
        <div class="row">
            <div class="col-md-10">
                <input type="text" class="form-control input-lg" placeholder="도서명으로 검색">
            </div>
            <div class="col-md-2">
                <button type="submit" class="form-control input-lg btn btn-primary">
                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                    검색
                </button>
            </div>
        </div>
    </form>
</div>
<div class="row">
    <c:forEach var="book" items="${books}" varStatus="status">
        <div class="col-md-4">
            <div class="thumbnail">
                <c:url var="show" value="/books/${ book.id }" />
                <a href="${ show }"> <img src="${ book.image }" />
                </a>
                <div class="caption">
                    <h3>${ book.title }
                        <small>${ book.author }</small>
                    </h3>
                    <s:authorize access="hasRole('ADMIN')">
                        <a href="<c:url value='/books/edit/${ book.id }' />"
                            class="btn btn-lg btn-default">수정</a>
                        <a href="<c:url value='/books/delete/${ book.id }' />"
                            class="btn btn-lg btn-danger">삭제</a>
                    </s:authorize>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
<s:authorize access="hasRole('ADMIN')">
    <a href="<c:url value="/books/new" />"
        class="btn btn-block btn-lg btn-primary">도서등록</a>
</s:authorize>