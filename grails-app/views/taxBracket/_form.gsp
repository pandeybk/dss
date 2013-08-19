<%@ page import="com.dss.TaxBracket" %>



<div class="fieldcontain ${hasErrors(bean: taxBracketInstance, field: 'taxRatePercentage', 'error')} ">
	<label for="taxRatePercentage">
		<g:message code="taxBracket.taxRatePercentage.label" default="Tax Rate Percentage" />
		
	</label>
	<g:field name="taxRatePercentage" type="number" value="${taxBracketInstance.taxRatePercentage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taxBracketInstance, field: 'maritalStatus', 'error')} ">
	<label for="maritalStatus">
		<g:message code="taxBracket.maritalStatus.label" default="Marital Status" />
		
	</label>
	<g:textField name="maritalStatus" maxlength="45" value="${taxBracketInstance?.maritalStatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taxBracketInstance, field: 'maxBalance', 'error')} required">
	<label for="maxBalance">
		<g:message code="taxBracket.maxBalance.label" default="Max Balance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maxBalance" type="number" value="${taxBracketInstance.maxBalance}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: taxBracketInstance, field: 'minBalance', 'error')} required">
	<label for="minBalance">
		<g:message code="taxBracket.minBalance.label" default="Min Balance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="minBalance" type="number" value="${taxBracketInstance.minBalance}" required=""/>
</div>

