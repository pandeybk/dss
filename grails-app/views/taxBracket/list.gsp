
<%@ page import="DeewalkSalarySystem.TaxBracket" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'taxBracket.label', default: 'TaxBracket')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-taxBracket" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-taxBracket" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="taxRatePercentage" title="${message(code: 'taxBracket.taxRatePercentage.label', default: 'Tax Rate Percentage')}" />
					
						<g:sortableColumn property="maritalStatus" title="${message(code: 'taxBracket.maritalStatus.label', default: 'Marital Status')}" />
					
						<g:sortableColumn property="maxBalance" title="${message(code: 'taxBracket.maxBalance.label', default: 'Max Balance')}" />
					
						<g:sortableColumn property="minBalance" title="${message(code: 'taxBracket.minBalance.label', default: 'Min Balance')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${taxBracketInstanceList}" status="i" var="taxBracketInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${taxBracketInstance.id}">${fieldValue(bean: taxBracketInstance, field: "taxRatePercentage")}</g:link></td>
					
						<td>${fieldValue(bean: taxBracketInstance, field: "maritalStatus")}</td>
					
						<td>${fieldValue(bean: taxBracketInstance, field: "maxBalance")}</td>
					
						<td>${fieldValue(bean: taxBracketInstance, field: "minBalance")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${taxBracketInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
