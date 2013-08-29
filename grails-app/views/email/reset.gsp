<%@ page contentType="text/html" %>
%{-- File: grails-app/views/email/reset.gsp --}%
<!doctype html>
<head>
    <title>Confirmation</title>
</head>

<body>

<h3>Hi, ${username}</h3>

<p>
    You (or someone pretending to be you) has recently requested for password reset on our system.
    <br /><br />
    Please <a href="${reset_url}">click here</a> or follow the link below to reset your password:
    <br />
    ${reset_url}
    <br /><br />
    If you did not request the password reset, please ignore this e-mail.
    <br /><br />
</p>

</body>
</html>