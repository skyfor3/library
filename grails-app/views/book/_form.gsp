<%@ page import="com.library.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${bookInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="book.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${bookInstance?.author}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'isbn', 'error')} required">
	<label for="isbn">
		<g:message code="book.isbn.label" default="Isbn" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="isbn" required="" value="${bookInstance?.isbn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'dateBorrowed', 'error')} required">
	<label for="dateBorrowed">
		<g:message code="book.dateBorrowed.label" default="Date Borrowed" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dateBorrowed" required="" value="${bookInstance?.dateBorrowed}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'returnDate', 'error')} required">
	<label for="returnDate">
		<g:message code="book.returnDate.label" default="Return Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="returnDate" required="" value="${bookInstance?.returnDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'library', 'error')} required">
	<label for="library">
		<g:message code="book.library.label" default="Library" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="library" name="library.id" from="${com.library.Library.list()}" optionKey="id" required="" value="${bookInstance?.library?.id}" class="many-to-one"/>

</div>

