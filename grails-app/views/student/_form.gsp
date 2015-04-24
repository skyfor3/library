<%@ page import="com.library.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="student.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${studentInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="student.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${studentInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentId', 'error')} required">
	<label for="studentId">
		<g:message code="student.studentId.label" default="Student Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="studentId" required="" value="${studentInstance?.studentId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="student.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${com.library.Course.list()}" optionKey="id" required="" value="${studentInstance?.course?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'books', 'error')} ">
	<label for="books">
		<g:message code="student.books.label" default="Books" />
		
	</label>
	<g:select name="books" from="${com.library.Book.list()}" multiple="multiple" optionKey="id" size="5" value="${studentInstance?.books*.id}" class="many-to-many"/>

</div>

