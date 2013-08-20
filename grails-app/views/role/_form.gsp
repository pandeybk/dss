<%@ page import="com.dss.Role" %>



<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'roleName', 'error')} ">
	<label for="roleName">
		<g:message code="role.roleName.label" default="Role Name" />
		
	</label>
	<g:textField name="roleName" maxlength="45" value="${roleInstance?.roleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'userRoleId', 'error')} ">
	<label for="userRoleId">
		<g:message code="role.userRoleId.label" default="User Role Id" />
		
	</label>
	<g:field name="userRoleId" type="number" value="${roleInstance.userRoleId}"/>
</div>

