<%@ page import="DeewalkSalarySystem.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		
	</label>
	<g:textField name="username" maxlength="45" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:textField name="password" maxlength="45" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="user.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${DeewalkSalarySystem.Employee.list()}" optionKey="id" required="" value="${userInstance?.employee?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'employeeId', 'error')} required">
	<label for="employeeId">
		<g:message code="user.employeeId.label" default="Employee Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="employeeId" type="number" value="${userInstance.employeeId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userRoles', 'error')} ">
	<label for="userRoles">
		<g:message code="user.userRoles.label" default="User Roles" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.userRoles?}" var="u">
    <li><g:link controller="userRole" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="userRole" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'userRole.label', default: 'UserRole')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userStatus', 'error')} ">
	<label for="userStatus">
		<g:message code="user.userStatus.label" default="User Status" />
		
	</label>
	<g:checkBox name="userStatus" value="${userInstance?.userStatus}" />
</div>

