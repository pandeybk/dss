
<%@ page import="dss.EmployeeCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employeeCategory.label', default: 'EmployeeCategory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-employeeCategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-employeeCategory" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="amount" title="${message(code: 'employeeCategory.amount.label', default: 'Amount')}" />
					
						<th><g:message code="employeeCategory.category.label" default="Category" /></th>
					
						<th><g:message code="employeeCategory.employee.label" default="Employee" /></th>
					
						<g:sortableColumn property="percentage" title="${message(code: 'employeeCategory.percentage.label', default: 'Percentage')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employeeCategoryInstanceList}" status="i" var="employeeCategoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employeeCategoryInstance.id}">${fieldValue(bean: employeeCategoryInstance, field: "amount")}</g:link></td>
					
						<td>${fieldValue(bean: employeeCategoryInstance, field: "category")}</td>
					
						<td>${fieldValue(bean: employeeCategoryInstance, field: "employee")}</td>
					
						<td>${fieldValue(bean: employeeCategoryInstance, field: "percentage")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${employeeCategoryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
