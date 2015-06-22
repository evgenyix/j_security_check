Solve JAAS problem when user directly use http://somesite/login.jsp and after login redirected to blank page with URL http://somesite/j_security_check.

P.S.
Need to configure secure domain in Wildfly standalone.xml or domain.xml
Use Wildfly's CustomLoginModule (based on UsernamePasswordLoginModule) in this example for login processing