
<%@ page import="com.library.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-course" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-course" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list course">
			
				<g:if test="${courseInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="course.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${courseInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="course.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${courseInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.tutor}">
				<li class="fieldcontain">
					<span id="tutor-label" class="property-label"><g:message code="course.tutor.label" default="Tutor" /></span>
					
						<span class="property-value" aria-labelledby="tutor-label"><g:fieldValue bean="${courseInstance}" field="tutor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.department}">
				<li class="fieldcontain">
					<span id="department-label" class="property-label"><g:message code="course.department.label" default="Department" /></span>
					
						<span class="property-value" aria-labelledby="department-label"><g:fieldValue bean="${courseInstance}" field="department"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="course.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${courseInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.students}">
				<li class="fieldcontain">
					<span id="students-label" class="property-label"><g:message code="course.students.label" default="Students" /></span>
					
						<g:each in="${courseInstance.students}" var="s">
						<span class="property-value" aria-labelledby="students-label"><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:courseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${courseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
