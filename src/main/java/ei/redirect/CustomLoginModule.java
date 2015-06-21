package ei.redirect;
/**
 * Created by e.itsikson on 15.06.2015.
 */

import org.jboss.security.SimpleGroup;
import org.jboss.security.SimplePrincipal;
import org.jboss.security.auth.spi.UsernamePasswordLoginModule;

import javax.security.auth.login.LoginException;
import java.security.acl.Group;

public class CustomLoginModule extends UsernamePasswordLoginModule {

    @Override
    protected String getUsersPassword() throws LoginException {
        return super.getUsernameAndPassword()[1];
    }

    @Override
    protected boolean validatePassword(String inputPassword, String expectedPassword) {
        return super.validatePassword(inputPassword, expectedPassword);
    }

    @Override
    protected Group[] getRoleSets() throws LoginException {
        SimpleGroup group = new SimpleGroup("Roles");
        try {
            group.addMember(new SimplePrincipal("user_role"));
        } catch (Exception e) {
            throw new LoginException("Failed to create group member for " + group);
        }
        return new Group[]{group};
    }
}
