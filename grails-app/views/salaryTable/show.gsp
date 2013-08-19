
<%@ page import="DeewalkSalarySystem.SalaryTable" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'salaryTable.label', default: 'SalaryTable')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-salaryTable" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-salaryTable" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list salaryTable">
			
				<g:if test="${salaryTableInstance?.taxPaid}">
				<li class="fieldcontain">
					<span id="taxPaid-label" class="property-label"><g:message code="salaryTable.taxPaid.label" default="Tax Paid" /></span>
					
						<span class="property-value" aria-labelledby="taxPaid-label"><g:fieldValue bean="${salaryTableInstance}" field="taxPaid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salaryTableInstance?.salaryPaidDate}">
				<li class="fieldcontain">
					<span id="salaryPaidDate-label" class="property-label"><g:message code="salaryTable.salaryPaidDate.label" default="Salary Paid Date" /></span>
					
						<span class="property-value" aria-labelledby="salaryPaidDate-label"><g:formatDate date="${salaryTableInstance?.salaryPaidDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${salaryTableInstance?.netSalaryPayment}">
				<li class="fieldcontain">
					<span id="netSalaryPayment-label" class="property-label"><g:message code="salaryTable.netSalaryPayment.label" default="Net Salary Payment" /></span>
					
						<span class="property-value" aria-labelledby="netSalaryPayment-label"><g:fieldValue bean="${salaryTableInstance}" field="netSalaryPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salaryTableInstance?.employee}">
				<li class="fieldcontain">
					<span id="employee-label" class="property-label"><g:message code="salaryTable.employee.label" default="Employee" /></span>
					
						<span class="property-value" aria-labelledby="employee-label"><g:link controller="employee" action="show" id="${salaryTableInstance?.employee?.id}">${salaryTableInstance?.employee?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${salaryTableInstance?.employeeId}">
				<li class="fieldcontain">
					<span id="employeeId-label" class="property-label"><g:message code="salaryTable.employeeId.label" default="Employee Id" /></span>
					
						<span class="property-value" aria-labelledby="employeeId-label"><g:fieldValue bean="${salaryTableInstance}" field="employeeId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${salaryTableInstance?.id}" />
					<g:link class="edit" action="edit" id="${salaryTableInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
