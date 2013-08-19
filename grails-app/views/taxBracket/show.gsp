
<%@ page import="DeewalkSalarySystem.TaxBracket" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'taxBracket.label', default: 'TaxBracket')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-taxBracket" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-taxBracket" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list taxBracket">
			
				<g:if test="${taxBracketInstance?.taxRatePercentage}">
				<li class="fieldcontain">
					<span id="taxRatePercentage-label" class="property-label"><g:message code="taxBracket.taxRatePercentage.label" default="Tax Rate Percentage" /></span>
					
						<span class="property-value" aria-labelledby="taxRatePercentage-label"><g:fieldValue bean="${taxBracketInstance}" field="taxRatePercentage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taxBracketInstance?.maritalStatus}">
				<li class="fieldcontain">
					<span id="maritalStatus-label" class="property-label"><g:message code="taxBracket.maritalStatus.label" default="Marital Status" /></span>
					
						<span class="property-value" aria-labelledby="maritalStatus-label"><g:fieldValue bean="${taxBracketInstance}" field="maritalStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taxBracketInstance?.maxBalance}">
				<li class="fieldcontain">
					<span id="maxBalance-label" class="property-label"><g:message code="taxBracket.maxBalance.label" default="Max Balance" /></span>
					
						<span class="property-value" aria-labelledby="maxBalance-label"><g:fieldValue bean="${taxBracketInstance}" field="maxBalance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taxBracketInstance?.minBalance}">
				<li class="fieldcontain">
					<span id="minBalance-label" class="property-label"><g:message code="taxBracket.minBalance.label" default="Min Balance" /></span>
					
						<span class="property-value" aria-labelledby="minBalance-label"><g:fieldValue bean="${taxBracketInstance}" field="minBalance"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${taxBracketInstance?.id}" />
					<g:link class="edit" action="edit" id="${taxBracketInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
