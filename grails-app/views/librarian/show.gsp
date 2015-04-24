
<%@ page import="com.library.Librarian" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'librarian.label', default: 'Librarian')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-librarian" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-librarian" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list librarian">
			
				<g:if test="${librarianInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="librarian.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${librarianInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${librarianInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="librarian.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${librarianInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${librarianInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="librarian.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${librarianInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${librarianInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="librarian.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${librarianInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${librarianInstance?.telephone}">
				<li class="fieldcontain">
					<span id="telephone-label" class="property-label"><g:message code="librarian.telephone.label" default="Telephone" /></span>
					
						<span class="property-value" aria-labelledby="telephone-label"><g:fieldValue bean="${librarianInstance}" field="telephone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${librarianInstance?.library}">
				<li class="fieldcontain">
					<span id="library-label" class="property-label"><g:message code="librarian.library.label" default="Library" /></span>
					
						<span class="property-value" aria-labelledby="library-label"><g:link controller="library" action="show" id="${librarianInstance?.library?.id}">${librarianInstance?.library?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:librarianInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${librarianInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
