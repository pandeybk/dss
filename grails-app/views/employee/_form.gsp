<%@ page import="com.dss.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="employee.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" maxlength="45" value="${employeeInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="employee.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" maxlength="45" value="${employeeInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="employee.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" maxlength="45" value="${employeeInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="employee.email.label" default="Email" />
		
	</label>
	<g:textField name="email" maxlength="100" value="${employeeInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'maritalStatus', 'error')} ">
	<label for="maritalStatus">
		<g:message code="employee.maritalStatus.label" default="Marital Status" />
		
	</label>
	<g:textField name="maritalStatus" maxlength="45" value="${employeeInstance?.maritalStatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'designation', 'error')} ">
	<label for="designation">
		<g:message code="employee.designation.label" default="Designation" />
		
	</label>
	<g:textField name="designation" maxlength="45" value="${employeeInstance?.designation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'phoneMobile', 'error')} ">
	<label for="phoneMobile">
		<g:message code="employee.phoneMobile.label" default="Phone Mobile" />
		
	</label>
	<g:textField name="phoneMobile" maxlength="45" value="${employeeInstance?.phoneMobile}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'phoneHouse', 'error')} ">
	<label for="phoneHouse">
		<g:message code="employee.phoneHouse.label" default="Phone House" />
		
	</label>
	<g:textField name="phoneHouse" maxlength="45" value="${employeeInstance?.phoneHouse}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'personalMail', 'error')} ">
	<label for="personalMail">
		<g:message code="employee.personalMail.label" default="Personal Mail" />
		
	</label>
	<g:textField name="personalMail" maxlength="100" value="${employeeInstance?.personalMail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'addressTemporary', 'error')} ">
	<label for="addressTemporary">
		<g:message code="employee.addressTemporary.label" default="Address Temporary" />
		
	</label>
	<g:textField name="addressTemporary" maxlength="200" value="${employeeInstance?.addressTemporary}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'addressPermanent', 'error')} ">
	<label for="addressPermanent">
		<g:message code="employee.addressPermanent.label" default="Address Permanent" />
		
	</label>
	<g:textField name="addressPermanent" maxlength="200" value="${employeeInstance?.addressPermanent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'citizenshipNo', 'error')} ">
	<label for="citizenshipNo">
		<g:message code="employee.citizenshipNo.label" default="Citizenship No" />
		
	</label>
	<g:textField name="citizenshipNo" maxlength="45" value="${employeeInstance?.citizenshipNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'bankAccountNo', 'error')} ">
	<label for="bankAccountNo">
		<g:message code="employee.bankAccountNo.label" default="Bank Account No" />
		
	</label>
	<g:textField name="bankAccountNo" maxlength="45" value="${employeeInstance?.bankAccountNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'panNo', 'error')} ">
	<label for="panNo">
		<g:message code="employee.panNo.label" default="Pan No" />
		
	</label>
	<g:textField name="panNo" maxlength="45" value="${employeeInstance?.panNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'basicSalary', 'error')} required">
	<label for="basicSalary">
		<g:message code="employee.basicSalary.label" default="Basic Salary" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="basicSalary" type="number" value="${employeeInstance.basicSalary}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'dob', 'error')} required">
	<label for="dob">
		<g:message code="employee.dob.label" default="Dob" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dob" precision="day"  value="${employeeInstance?.dob}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'employeeCategories', 'error')} ">
	<label for="employeeCategories">
		<g:message code="employee.employeeCategories.label" default="Employee Categories" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${employeeInstance?.employeeCategories?}" var="e">
    <li><g:link controller="employeeCategory" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="employeeCategory" action="create" params="['employee.id': employeeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'employeeCategory.label', default: 'EmployeeCategory')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'joinedDate', 'error')} required">
	<label for="joinedDate">
		<g:message code="employee.joinedDate.label" default="Joined Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="joinedDate" precision="day"  value="${employeeInstance?.joinedDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'salaryTables', 'error')} ">
	<label for="salaryTables">
		<g:message code="employee.salaryTables.label" default="Salary Tables" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${employeeInstance?.salaryTables?}" var="s">
    <li><g:link controller="salaryTable" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="salaryTable" action="create" params="['employee.id': employeeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'salaryTable.label', default: 'SalaryTable')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'termedDate', 'error')} required">
	<label for="termedDate">
		<g:message code="employee.termedDate.label" default="Termed Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="termedDate" precision="day"  value="${employeeInstance?.termedDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="employee.users.label" default="Users" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${employeeInstance?.users?}" var="u">
    <li><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="user" action="create" params="['employee.id': employeeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'user.label', default: 'User')])}</g:link>
</li>
</ul>

</div>

