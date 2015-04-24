<%@ page import="com.library.Library" %>



<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="library.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${libraryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'location', 'error')} required">
	<label for="location">
		<g:message code="library.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="location" required="" value="${libraryInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'openingHours', 'error')} required">
	<label for="openingHours">
		<g:message code="library.openingHours.label" default="Opening Hours" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="openingHours" required="" value="${libraryInstance?.openingHours}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'books', 'error')} ">
	<label for="books">
		<g:message code="library.books.label" default="Books" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${libraryInstance?.books?}" var="b">
    <li><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="book" action="create" params="['library.id': libraryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'book.label', default: 'Book')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'librarians', 'error')} ">
	<label for="librarians">
		<g:message code="library.librarians.label" default="Librarians" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${libraryInstance?.librarians?}" var="l">
    <li><g:link controller="librarian" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="librarian" action="create" params="['library.id': libraryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'librarian.label', default: 'Librarian')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'students', 'error')} ">
	<label for="students">
		<g:message code="library.students.label" default="Students" />
		
	</label>
	<g:select name="students" from="${com.library.Student.list()}" multiple="multiple" optionKey="id" size="5" value="${libraryInstance?.students*.id}" class="many-to-many"/>

</div>

