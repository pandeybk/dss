<%@ page import="com.dss.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <!-- Le styles -->

    <style type="text/css">
    body {
        padding-top: 60px;
        padding-bottom: 40px;
    }

    .sidebar-nav {
        padding: 9px 0;
    }

    @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
            float: none;
            padding-left: 5px;
            padding-right: 5px;
        }
    }
    </style>
</head>

<body>

<div class="span9">
    <div class="page-header">
        <div class="fluid-grid">
            <div class="thumbnails">
                <div class="span12">
                    <div class="row-fluid">
                        <div class="span4">
                            <div class="nav" role="navigation">
                                <h3><g:message code="default.list.label" args="[entityName]"/></h3>
                            </div>
                        </div>

                        <div class="span4 pull-right">
                            <form class="form-search">
                                <div class="input-append">
                                    <input type="text" class="search-query" value="" name="search">
                                    <button type="button" class="btn">Search</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="thumbnails">
                <div class="span9">
                    <div class="row-fluid">
                        <div class="span2">
                            %{--<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label"--}%
                            %{--default="Skip to content&hellip;"/></a>--}%
                            <div class="btn-group">
                                <li class="btn btn-mini">
                                    <g:link class="create" action="create"><g:message code="default.new.label"
                                                                                      args="[entityName]"/></g:link>
                                </li>
                                <button class="btn btn-mini" disabled="disabled"><i class="icon-plus-sign"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="list-user" class="content scaffold-list" role="main">

        <div class="row-fluid">

            <g:if test="${flash.message}">
                <div class="alert alert-info" role="status">${flash.message}</div>
            </g:if>
            <table class="table table-bordered table-striped">
                <thead>
                <tr>

                    <g:sortableColumn property="username"
                                      title="${message(code: 'user.username.label', default: 'Username')}"/>

                    <g:sortableColumn property="accountExpired"
                                      title="${message(code: 'user.accountExpired.label', default: 'Account Expired')}"/>

                    <g:sortableColumn property="accountLocked"
                                      title="${message(code: 'user.accountLocked.label', default: 'Account Locked')}"/>

                    <g:sortableColumn property="enabled"
                                      title="${message(code: 'user.enabled.label', default: 'Enabled')}"/>

                    <g:sortableColumn property="passwordExpired"
                                      title="${message(code: 'user.passwordExpired.label', default: 'Password Expired')}"/>

                    <td></td>
                </tr>
                </thead>
                <tbody>
                <g:each in="${userInstanceList}" status="i" var="userInstance">

                    <tr>

                        <td><g:link action="show"
                                    id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>

                        <td><g:formatBoolean boolean="${userInstance.accountExpired}"/></td>

                        <td><g:formatBoolean boolean="${userInstance.accountLocked}"/></td>

                        <td><g:formatBoolean boolean="${userInstance.enabled}"/></td>

                        <td><g:formatBoolean boolean="${userInstance.passwordExpired}"/></td>

                        <td>
                            <g:link class="btn btn-mini" controller="user" action="edit" id="${userInstance?.id}"><i
                                    class="icon-edit"></i></g:link>
                            <g:link class="btn btn-mini" name="enabled" controller="user" action="enabledUser"
                                    id="${userInstance?.id}"><i class="icon-share"></i></g:link>
                        %{--<button class="btn btn-mini" formaction="update"><i class="icon-check"></i></button>--}%
                            <g:link class="btn btn-mini" name="disabled" controller="user" action="disableUser"
                                    id="${userInstance?.id}"><i class="icon-minus"></i></g:link>
                            <g:form>
                                <fieldset class="buttons">
                                    <g:hiddenField name="id" value="${userInstance?.id}"/>
                                    <g:actionSubmit class="delete"
                                                    action="delete"
                                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                                </fieldset>
                            </g:form>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${userInstanceTotal}"/>
            </div>
        </div>
    </div>
</body>
</html>
