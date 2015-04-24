
<%@ page import="com.library.Librarian" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'librarian.label', default: 'Librarian')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-librarian" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-librarian" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'librarian.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'librarian.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'librarian.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'librarian.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="telephone" title="${message(code: 'librarian.telephone.label', default: 'Telephone')}" />
					
						<th><g:message code="librarian.library.label" default="Library" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${librarianInstanceList}" status="i" var="librarianInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${librarianInstance.id}">${fieldValue(bean: librarianInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: librarianInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: librarianInstance, field: "username")}</td>
					
						<td>${fieldValue(bean: librarianInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: librarianInstance, field: "telephone")}</td>
					
						<td>${fieldValue(bean: librarianInstance, field: "library")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${librarianInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
