package stepDefination.UserAdmin;

import com.remedy.resources.DriverScript;
import com.remedy.userAdmin.BulkUserCreationPage;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;

/**
 * Created by salam on 10/30/16.
 */
public class BulkLoadSteps extends DriverScript{

    BulkUserCreationPage bulkUser = new BulkUserCreationPage (driver);

    @And("^I upload file for bulk load users$")
    public void iUploadFileForBulkLoadUsers() throws Throwable {

        bulkUser.iUplaodFile();
    }

    @And("^I verify the Success Message$")
    public void iVerifyTheSucessMessage() throws Throwable {
        bulkUser.iVerifySuccssfulUserCreationMessage("1 user(s) successfully created");
    }
}