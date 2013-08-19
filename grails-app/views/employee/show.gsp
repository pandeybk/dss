
<%@ page import="DeewalkSalarySystem.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-employee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list employee">
			
				<g:if test="${employeeInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="employee.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${employeeInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="employee.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${employeeInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="employee.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${employeeInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="employee.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${employeeInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.maritalStatus}">
				<li class="fieldcontain">
					<span id="maritalStatus-label" class="property-label"><g:message code="employee.maritalStatus.label" default="Marital Status" /></span>
					
						<span class="property-value" aria-labelledby="maritalStatus-label"><g:fieldValue bean="${employeeInstance}" field="maritalStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.designation}">
				<li class="fieldcontain">
					<span id="designation-label" class="property-label"><g:message code="employee.designation.label" default="Designation" /></span>
					
						<span class="property-value" aria-labelledby="designation-label"><g:fieldValue bean="${employeeInstance}" field="designation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.phoneMobile}">
				<li class="fieldcontain">
					<span id="phoneMobile-label" class="property-label"><g:message code="employee.phoneMobile.label" default="Phone Mobile" /></span>
					
						<span class="property-value" aria-labelledby="phoneMobile-label"><g:fieldValue bean="${employeeInstance}" field="phoneMobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.phoneHouse}">
				<li class="fieldcontain">
					<span id="phoneHouse-label" class="property-label"><g:message code="employee.phoneHouse.label" default="Phone House" /></span>
					
						<span class="property-value" aria-labelledby="phoneHouse-label"><g:fieldValue bean="${employeeInstance}" field="phoneHouse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.personalMail}">
				<li class="fieldcontain">
					<span id="personalMail-label" class="property-label"><g:message code="employee.personalMail.label" default="Personal Mail" /></span>
					
						<span class="property-value" aria-labelledby="personalMail-label"><g:fieldValue bean="${employeeInstance}" field="personalMail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.addressTemporary}">
				<li class="fieldcontain">
					<span id="addressTemporary-label" class="property-label"><g:message code="employee.addressTemporary.label" default="Address Temporary" /></span>
					
						<span class="property-value" aria-labelledby="addressTemporary-label"><g:fieldValue bean="${employeeInstance}" field="addressTemporary"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.addressPermanent}">
				<li class="fieldcontain">
					<span id="addressPermanent-label" class="property-label"><g:message code="employee.addressPermanent.label" default="Address Permanent" /></span>
					
						<span class="property-value" aria-labelledby="addressPermanent-label"><g:fieldValue bean="${employeeInstance}" field="addressPermanent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.citizenshipNo}">
				<li class="fieldcontain">
					<span id="citizenshipNo-label" class="property-label"><g:message code="employee.citizenshipNo.label" default="Citizenship No" /></span>
					
						<span class="property-value" aria-labelledby="citizenshipNo-label"><g:fieldValue bean="${employeeInstance}" field="citizenshipNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.bankAccountNo}">
				<li class="fieldcontain">
					<span id="bankAccountNo-label" class="property-label"><g:message code="employee.bankAccountNo.label" default="Bank Account No" /></span>
					
						<span class="property-value" aria-labelledby="bankAccountNo-label"><g:fieldValue bean="${employeeInstance}" field="bankAccountNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.panNo}">
				<li class="fieldcontain">
					<span id="panNo-label" class="property-label"><g:message code="employee.panNo.label" default="Pan No" /></span>
					
						<span class="property-value" aria-labelledby="panNo-label"><g:fieldValue bean="${employeeInstance}" field="panNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.basicSalary}">
				<li class="fieldcontain">
					<span id="basicSalary-label" class="property-label"><g:message code="employee.basicSalary.label" default="Basic Salary" /></span>
					
						<span class="property-value" aria-labelledby="basicSalary-label"><g:fieldValue bean="${employeeInstance}" field="basicSalary"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.dob}">
				<li class="fieldcontain">
					<span id="dob-label" class="property-label"><g:message code="employee.dob.label" default="Dob" /></span>
					
						<span class="property-value" aria-labelledby="dob-label"><g:formatDate date="${employeeInstance?.dob}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.employeeCategories}">
				<li class="fieldcontain">
					<span id="employeeCategories-label" class="property-label"><g:message code="employee.employeeCategories.label" default="Employee Categories" /></span>
					
						<g:each in="${employeeInstance.employeeCategories}" var="e">
						<span class="property-value" aria-labelledby="employeeCategories-label"><g:link controller="employeeCategory" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.joinedDate}">
				<li class="fieldcontain">
					<span id="joinedDate-label" class="property-label"><g:message code="employee.joinedDate.label" default="Joined Date" /></span>
					
						<span class="property-value" aria-labelledby="joinedDate-label"><g:formatDate date="${employeeInstance?.joinedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.salaryTables}">
				<li class="fieldcontain">
					<span id="salaryTables-label" class="property-label"><g:message code="employee.salaryTables.label" default="Salary Tables" /></span>
					
						<g:each in="${employeeInstance.salaryTables}" var="s">
						<span class="property-value" aria-labelledby="salaryTables-label"><g:link controller="salaryTable" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.termedDate}">
				<li class="fieldcontain">
					<span id="termedDate-label" class="property-label"><g:message code="employee.termedDate.label" default="Termed Date" /></span>
					
						<span class="property-value" aria-labelledby="termedDate-label"><g:formatDate date="${employeeInstance?.termedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.users}">
				<li class="fieldcontain">
					<span id="users-label" class="property-label"><g:message code="employee.users.label" default="Users" /></span>
					
						<g:each in="${employeeInstance.users}" var="u">
						<span class="property-value" aria-labelledby="users-label"><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${employeeInstance?.id}" />
					<g:link class="edit" action="edit" id="${employeeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
