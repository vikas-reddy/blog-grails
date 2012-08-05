<%@ page import="blog.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'body', 'error')} ">
	<label for="body">
		<g:message code="comment.body.label" default="Body" />
		
	</label>
	<g:textField name="body" value="${commentInstance?.body}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'post', 'error')} required">
	<label for="post">
		<g:message code="comment.post.label" default="Post" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="post" name="post.id" from="${blog.Post.list()}" optionKey="id" required="" value="${commentInstance?.post?.id}" class="many-to-one"/>
</div>

