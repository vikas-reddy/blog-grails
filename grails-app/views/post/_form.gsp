<%@ page import="blog.Post" %>



<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'body', 'error')} ">
	<label for="body">
		<g:message code="post.body.label" default="Body" />
		
	</label>
	<g:textField name="body" value="${postInstance?.body}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="post.comments.label" default="Comments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${postInstance?.comments?}" var="c">
    <li><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comment" action="create" params="['post.id': postInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comment.label', default: 'Comment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="post.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${postInstance?.title}"/>
</div>

