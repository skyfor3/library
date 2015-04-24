<%@ page import="com.library.Librarian" %>



<div class="fieldcontain ${hasErrors(bean: librarianInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="librarian.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${librarianInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: librarianInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="librarian.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${librarianInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: librarianInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="librarian.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${librarianInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: librarianInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="librarian.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${librarianInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: librarianInstance, field: 'telephone', 'error')} required">
	<label for="telephone">
		<g:message code="librarian.telephone.label" default="Telephone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telephone" required="" value="${librarianInstance?.telephone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: librarianInstance, field: 'library', 'error')} required">
	<label for="library">
		<g:message code="librarian.library.label" default="Library" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="library" name="library.id" from="${com.library.Library.list()}" optionKey="id" required="" value="${librarianInstance?.library?.id}" class="many-to-one"/>

</div>

