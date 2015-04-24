<%@ page import="com.library.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="course.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${courseInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="course.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${courseInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'tutor', 'error')} required">
	<label for="tutor">
		<g:message code="course.tutor.label" default="Tutor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tutor" required="" value="${courseInstance?.tutor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'department', 'error')} required">
	<label for="department">
		<g:message code="course.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="department" required="" value="${courseInstance?.department}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="course.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" maxlength="100" required="" value="${courseInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'students', 'error')} ">
	<label for="students">
		<g:message code="course.students.label" default="Students" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.students?}" var="s">
    <li><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="student" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'student.label', default: 'Student')])}</g:link>
</li>
</ul>


</div>

