
<%@ page import="com.dss.SalaryTable" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'salaryTable.label', default: 'SalaryTable')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-salaryTable" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-salaryTable" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="taxPaid" title="${message(code: 'salaryTable.taxPaid.label', default: 'Tax Paid')}" />
					
						<g:sortableColumn property="salaryPaidDate" title="${message(code: 'salaryTable.salaryPaidDate.label', default: 'Salary Paid Date')}" />
					
						<g:sortableColumn property="netSalaryPayment" title="${message(code: 'salaryTable.netSalaryPayment.label', default: 'Net Salary Payment')}" />
					
						<th><g:message code="salaryTable.employee.label" default="Employee" /></th>
					
						<g:sortableColumn property="employeeId" title="${message(code: 'salaryTable.employeeId.label', default: 'Employee Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${salaryTableInstanceList}" status="i" var="salaryTableInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${salaryTableInstance.id}">${fieldValue(bean: salaryTableInstance, field: "taxPaid")}</g:link></td>
					
						<td><g:formatDate date="${salaryTableInstance.salaryPaidDate}" /></td>
					
						<td>${fieldValue(bean: salaryTableInstance, field: "netSalaryPayment")}</td>
					
						<td>${fieldValue(bean: salaryTableInstance, field: "employee")}</td>
					
						<td>${fieldValue(bean: salaryTableInstance, field: "employeeId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${salaryTableInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
