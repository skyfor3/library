
<%@ page import="com.library.Library" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'library.label', default: 'Library')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-library" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-library" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list library">
			
				<g:if test="${libraryInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="library.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${libraryInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${libraryInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="library.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${libraryInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${libraryInstance?.openingHours}">
				<li class="fieldcontain">
					<span id="openingHours-label" class="property-label"><g:message code="library.openingHours.label" default="Opening Hours" /></span>
					
						<span class="property-value" aria-labelledby="openingHours-label"><g:fieldValue bean="${libraryInstance}" field="openingHours"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${libraryInstance?.books}">
				<li class="fieldcontain">
					<span id="books-label" class="property-label"><g:message code="library.books.label" default="Books" /></span>
					
						<g:each in="${libraryInstance.books}" var="b">
						<span class="property-value" aria-labelledby="books-label"><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${libraryInstance?.librarians}">
				<li class="fieldcontain">
					<span id="librarians-label" class="property-label"><g:message code="library.librarians.label" default="Librarians" /></span>
					
						<g:each in="${libraryInstance.librarians}" var="l">
						<span class="property-value" aria-labelledby="librarians-label"><g:link controller="librarian" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${libraryInstance?.students}">
				<li class="fieldcontain">
					<span id="students-label" class="property-label"><g:message code="library.students.label" default="Students" /></span>
					
						<g:each in="${libraryInstance.students}" var="s">
						<span class="property-value" aria-labelledby="students-label"><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:libraryInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${libraryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
