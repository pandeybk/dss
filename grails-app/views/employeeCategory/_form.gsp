<%@ page import="dss.EmployeeCategory" %>



<div class="fieldcontain ${hasErrors(bean: employeeCategoryInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="employeeCategory.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" type="number" value="${employeeCategoryInstance.amount}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeCategoryInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="employeeCategory.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${DeewalkSalarySystem.Category.list()}" optionKey="id" required="" value="${employeeCategoryInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeCategoryInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="employeeCategory.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${DeewalkSalarySystem.Employee.list()}" optionKey="id" required="" value="${employeeCategoryInstance?.employee?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeCategoryInstance, field: 'percentage', 'error')} required">
	<label for="percentage">
		<g:message code="employeeCategory.percentage.label" default="Percentage" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="percentage" type="number" value="${employeeCategoryInstance.percentage}" required=""/>
</div>

