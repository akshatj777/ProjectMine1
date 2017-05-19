package stepDefination.LogIn;

import com.remedy.userAdmin.CreateUserPage;
import com.remedy.userAdmin.LoginPage;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

/**
 * Created by salam on 8/4/15.
 */
public class LoginPageSteps extends DriverScript{

    LoginPage loginPage = new LoginPage(driver);
    CreateUserPage createUser = new CreateUserPage(driver);

    @When("^I click on the forgot password button$")
    public void iClickForgotPasswordButton() throws Throwable {
        loginPage.iClickForgotPassword();
    }

    @Then("^I enter ([^\"]*) for changing password$")
    public void iEnterEmailChangingPassword(String email) throws Throwable {
        loginPage.iEnterEmailForResetPssword(email);
    }

    @Then("^I enter new ([^\"]*)$")
    public void iEnterNewPassword(String newPassword) throws Throwable {
        loginPage.iEnterNewPasswordForResetPassword(newPassword);

    }
    
    @And("^I enter password ([^\"]*) to set new password$")
    public void iEnterPasswordToSetNewPassword(String newPassword) throws Throwable{
    	loginPage.iEnterPasswordToSetNewPassword(newPassword);

    }

    @Then("^I enter ([^\"]*) to confirm$")
    public void iEnterNewPasswordToConfirm(String newPassword) throws Throwable {
        loginPage.iEnterConfirmPasswordForResetPassword(newPassword);
    }
    
    @And("^I reenter new ([^\"]*) password to set new password$")
    public void iReenterNewPasswordToSetNewPassword(String newPassword) throws Throwable{
    	loginPage.iReenterNewPasswordToSetNewPassword(newPassword);
    }

    @Then("^I click on change password button$")
    public void iClickChangePasswordButton() throws Throwable {
        loginPage.iClickChangePasswordButton();
    }

    @Then("^I click on change password button to set new password$")
    public void iClickOnChangePasswordButtonToSetNewPassword() throws Throwable{
    	loginPage.iClickOnChangePasswordButtonToSetNewPassword();
    }

    @And("^I should see password change confirmation \"([^\"]*)\"$")
    public void iShouldSeePasswordChangeConfirmation(String text) throws Throwable {
        loginPage.iVerifyChagePasswordConfirmation( text);
    }

    @And("^I should see text popup for reset password \"([^\"]*)\"$")
    public void iShouldSee(String resetPassword) throws Throwable {
        loginPage.iVerifyResetPasswordText(resetPassword);
    }

    
    @And("^I click Okay button for reset password popup")
    public void iClickOkayButtonForResetPasswordPopup() throws Throwable {
        loginPage.iClickOkayButtonForResetPasswordPopupFromAccountLink();
    }


    @And("^I enter email field ([^\"]*) for login$")
    public void IEnterEmailForLogin(String email) throws Throwable {
        loginPage.iEnteruserEmail(email);
    }
    
    @And("^I enter email ([^\"]*) for login after mail verification$")
    public void iEnterEmailForLoginAfterMailVerification(String email) throws Throwable{
    	//createUser.iEnterEmailForLogin(email);

    }

    @And("^I enter password field ([^\"]*) for Login$")
    public void IEnterPasswordForLogin(String password) throws Throwable {
        loginPage.iEnterPassword(password);
    }
    
    @And("^I enter password field ([^\"]*) for Login after mail verification$")
    public void iEnterPasswordFieldForLoginAfterMailVerification(String password) throws Throwable{
    	loginPage.iEnterPasswordFieldForLoginAfterMailVerification(password);
    }

    @And("^I click Access button$")
    public void I_click_Access_button() throws Throwable {
        loginPage.iClickLogInButton();
    }

    @Then("^I click on cancel button$")
    public void iClickOnCancelButton() throws Throwable {
      loginPage.iClickChangePasswordCancleButton();
    }

    @And("^I should see Log in widget$")
    public void iShouldSeeLogInWidget() throws Throwable {
        loginPage.iVerifyLogInWidget();

    }
}
