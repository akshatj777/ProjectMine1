package stepDefination.UserAdmin;

import com.remedy.pageObject.EmailVarificationPage;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

/**
 * Created by salam on 8/6/15.
 */
public class EmailVerificationSteps extends DriverScript{
    
   EmailVarificationPage popMail = new EmailVarificationPage(driver);


    @And("^I enter the ([^\"]*) for verification$")
    public void ISearchFacilityWith(String email) throws Throwable {

        popMail.iEnterVerificationEmai(email);
    }

    @And("^I click on check inbox button$")
    public void IClickCheckInboxButton() throws Throwable {

        popMail.iClickCheckInBoxButton();
    }

    @And("^I select the email to check$")
    public void ISelectEmailToCheck() throws Throwable {

        popMail.switcToFrame("//*[@id='ifinbox']");
        popMail.SelectNewEmail();

    }


    @And("^I click on the confirm account link$")
    public void I_click_on_the_confirm_account_link() throws Throwable {

                popMail.switcToFrame("//*[@id='ifmail']");
                popMail.clickConfirmAccountLink();

    }


    @Then("^I switch to new window$")
    public void switchToNew_window() throws Throwable {

                popMail.iswitchtoLogInPage();

    }

    @Then("^I switch back to login page$")
    public void ISwitchBackToLoginPage() throws Throwable {

        popMail.iswitchtoLogInPage();

    }

    @And("^I delete all emails$")
    public void IDeleteAllEmails() throws Throwable {

        popMail.switcToFrame("//*[@id='ifinbox']");
       popMail.deleteAllEmails("Empty Inbox");

    }
}
