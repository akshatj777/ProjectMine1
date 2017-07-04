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
    
    @Then("^I should see email textbox field$")
    public void iShouldSeeEmailTextboxField() throws Throwable{
    	loginPage.iShouldSeeEmailTextboxField();
    }
    
    @Then("^I should verify watermark text appearing under email textbox field$")
    public void iShouldVerifyWatermarkTextAppearingUnderEmailTextboxField() throws Throwable{
    	loginPage.iShouldVerifyWatermarkTextAppearingUnderEmailTextboxField();
    }
    
    @Then("^I should see password textbox field$")
    public void iShouldSeePasswordTextboxField() throws Throwable{
    	loginPage.iShouldSeePasswordTextboxField();
    }
    
    @Then("^I should verify watermark text appearing under password textbox field$")
    public void iShouldVerifyWatermarkTextAppearingUnderPasswordTextboxField() throws Throwable{
    	loginPage.iShouldVerifyWatermarkTextAppearingUnderPasswordTextboxField();
    }
    
    @Then("^I should see forgot password link$")
    public void iShouldSeeForgotPasswordLink() throws Throwable{
    	loginPage.iShouldSeeForgotPasswordLink();
    }
    
    @Then("^I should see Log In button$")
    public void iShouldSeeLogInButton() throws Throwable{
    	loginPage.iShouldSeeLogInButton();
    }
    
    @Then("^I verify the validation message \"([^\"]*)\"$")
    public void iVerifyTheValidationMessage(String text) throws Throwable{
    	loginPage.iVerifyTheValidationMessage(text);
    }
    
    @Then("^I refresh the page$")
    public void IRefreshThePage() throws Throwable{
    	loginPage.IRefreshThePage();
    }
    
    @Then("^I enter email \"([^\"]*)\" for Login$")
    public void iEnterEmailForLogin(String UserName) throws Throwable{
    	loginPage.iEnterEmailForLogin(UserName);
    }
    
    @Then("^I verify the error message \"([^\"]*)\"$")
    public void iVerifyTheErrorMessage(String text) throws Throwable{
    	loginPage.iVerifyTheErrorMessage(text);
    }
}
