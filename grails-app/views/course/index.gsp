
<%@ page import="com.library.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-course" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-course" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'course.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="code" title="${message(code: 'course.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="tutor" title="${message(code: 'course.tutor.label', default: 'Tutor')}" />
					
						<g:sortableColumn property="department" title="${message(code: 'course.department.label', default: 'Department')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'course.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${courseInstanceList}" status="i" var="courseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${courseInstance.id}">${fieldValue(bean: courseInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: courseInstance, field: "code")}</td>
					
						<td>${fieldValue(bean: courseInstance, field: "tutor")}</td>
					
						<td>${fieldValue(bean: courseInstance, field: "department")}</td>
					
						<td>${fieldValue(bean: courseInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${courseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
