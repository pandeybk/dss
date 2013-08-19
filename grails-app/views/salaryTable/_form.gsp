<%@ page import="DeewalkSalarySystem.SalaryTable" %>



<div class="fieldcontain ${hasErrors(bean: salaryTableInstance, field: 'taxPaid', 'error')} ">
	<label for="taxPaid">
		<g:message code="salaryTable.taxPaid.label" default="Tax Paid" />
		
	</label>
	<g:field name="taxPaid" type="number" value="${salaryTableInstance.taxPaid}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salaryTableInstance, field: 'salaryPaidDate', 'error')} ">
	<label for="salaryPaidDate">
		<g:message code="salaryTable.salaryPaidDate.label" default="Salary Paid Date" />
		
	</label>
	<g:datePicker name="salaryPaidDate" precision="day"  value="${salaryTableInstance?.salaryPaidDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: salaryTableInstance, field: 'netSalaryPayment', 'error')} ">
	<label for="netSalaryPayment">
		<g:message code="salaryTable.netSalaryPayment.label" default="Net Salary Payment" />
		
	</label>
	<g:field name="netSalaryPayment" type="number" value="${salaryTableInstance.netSalaryPayment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salaryTableInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="salaryTable.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${DeewalkSalarySystem.Employee.list()}" optionKey="id" required="" value="${salaryTableInstance?.employee?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salaryTableInstance, field: 'employeeId', 'error')} required">
	<label for="employeeId">
		<g:message code="salaryTable.employeeId.label" default="Employee Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="employeeId" type="number" value="${salaryTableInstance.employeeId}" required=""/>
</div>

