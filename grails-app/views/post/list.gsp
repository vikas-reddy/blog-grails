
<%@ page import="blog.Post" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <legend class="row-fluid">
            <div class="pull-left">
                <h2>Posts</h2>
            </div>
            <div class="pull-right">
                <g:link class="create btn btn-primary" action="create">
                    <i class="icon-white icon-plus"></i>
                    <g:message code="default.new.label" args="[entityName]" />
                </g:link>
            </div>
        </legend>
		<div id="list-post" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
			</g:if>
            <g:each in="${postInstanceList}" status="i" var="postInstance">
                <div class="well">
                    <h3>
                        <g:link action="show" id="${postInstance.id}">${fieldValue(bean: postInstance, field: "title")}</g:link>
                    </h3>
                    <div>${fieldValue(bean: postInstance, field: "body")}</div>
                    <div class="pull-left">
                        ${blog.Comment.countByPost(postInstance)}
                        Comments
                    </div>
                    <div class="pull-right">
                        Posted on <g:formatDate format="d MMMMM, yyyy" date="${postInstance.dateCreated}" />
                    </div>
                </div>
            </g:each>
			<div class="pagination">
				<g:paginate total="${postInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
