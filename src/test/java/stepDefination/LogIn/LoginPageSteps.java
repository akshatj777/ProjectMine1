package stepDefination.LogIn;

import com.remedy.pageObject.LoginPage;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

/**
 * Created by salam on 8/4/15.
 */
public class LoginPageSteps extends DriverScript{

    LoginPage loginPage = new LoginPage(driver);

    @When("^I click on the forgot password button$")
    public void iClickForgotPasswordButton() throws Throwable {

        loginPage.iClickForgotPassword();
    }

    @Then("^i enter ([^\"]*) for changing password$")
    public void iEnterEmailChangingPassword(String email) throws Throwable {

        loginPage.iEnterEmailForResetPssword(email);
    }

    @Then("^I enter new ([^\"]*)$")
    public void iEnterNewPassword(String newPassword) throws Throwable {

        loginPage.iEnterNewPasswordForResetPassword(newPassword);

    }

    @Then("^I enter ([^\"]*) to confirm$")
    public void iEnterNewPasswordToConfirm(String newPassword) throws Throwable {

        loginPage.iEnterConfirmPasswordForResetPassword(newPassword);
    }

    @Then("^I click on chnage password button$")
    public void iClickChnagePasswordButton() throws Throwable {

        loginPage.iClickChangePasswordButton();

    }




}
