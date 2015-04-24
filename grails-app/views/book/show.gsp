
<%@ page import="com.library.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-book" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list book">
			
				<g:if test="${bookInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="book.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${bookInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="book.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:fieldValue bean="${bookInstance}" field="author"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.isbn}">
				<li class="fieldcontain">
					<span id="isbn-label" class="property-label"><g:message code="book.isbn.label" default="Isbn" /></span>
					
						<span class="property-value" aria-labelledby="isbn-label"><g:fieldValue bean="${bookInstance}" field="isbn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.dateBorrowed}">
				<li class="fieldcontain">
					<span id="dateBorrowed-label" class="property-label"><g:message code="book.dateBorrowed.label" default="Date Borrowed" /></span>
					
						<span class="property-value" aria-labelledby="dateBorrowed-label"><g:fieldValue bean="${bookInstance}" field="dateBorrowed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.returnDate}">
				<li class="fieldcontain">
					<span id="returnDate-label" class="property-label"><g:message code="book.returnDate.label" default="Return Date" /></span>
					
						<span class="property-value" aria-labelledby="returnDate-label"><g:fieldValue bean="${bookInstance}" field="returnDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.library}">
				<li class="fieldcontain">
					<span id="library-label" class="property-label"><g:message code="book.library.label" default="Library" /></span>
					
						<span class="property-value" aria-labelledby="library-label"><g:link controller="library" action="show" id="${bookInstance?.library?.id}">${bookInstance?.library?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bookInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bookInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
