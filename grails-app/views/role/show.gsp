
<%@ page import="com.dss.Role" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-role" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-role" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list role">
			
				<g:if test="${roleInstance?.roleName}">
				<li class="fieldcontain">
					<span id="roleName-label" class="property-label"><g:message code="role.roleName.label" default="Role Name" /></span>
					
						<span class="property-value" aria-labelledby="roleName-label"><g:fieldValue bean="${roleInstance}" field="roleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roleInstance?.userRoleId}">
				<li class="fieldcontain">
					<span id="userRoleId-label" class="property-label"><g:message code="role.userRoleId.label" default="User Role Id" /></span>
					
						<span class="property-value" aria-labelledby="userRoleId-label"><g:fieldValue bean="${roleInstance}" field="userRoleId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roleInstance?.userRole}">
				<li class="fieldcontain">
					<span id="userRole-label" class="property-label"><g:message code="role.userRole.label" default="User Role" /></span>
					
						<span class="property-value" aria-labelledby="userRole-label"><g:link controller="userRole" action="show" id="${roleInstance?.userRole?.id}">${roleInstance?.userRole?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${roleInstance?.id}" />
					<g:link class="edit" action="edit" id="${roleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
