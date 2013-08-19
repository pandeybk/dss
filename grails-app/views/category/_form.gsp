<%@ page import="com.dss.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'categoryName', 'error')} ">
	<label for="categoryName">
		<g:message code="category.categoryName.label" default="Category Name" />
		
	</label>
	<g:textField name="categoryName" maxlength="45" value="${categoryInstance?.categoryName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'employeeCategories', 'error')} ">
	<label for="employeeCategories">
		<g:message code="category.employeeCategories.label" default="Employee Categories" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.employeeCategories?}" var="e">
    <li><g:link controller="employeeCategory" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="employeeCategory" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'employeeCategory.label', default: 'EmployeeCategory')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'isDeductible', 'error')} ">
	<label for="isDeductible">
		<g:message code="category.isDeductible.label" default="Is Deductible" />
		
	</label>
	<g:checkBox name="isDeductible" value="${categoryInstance?.isDeductible}" />
</div>

