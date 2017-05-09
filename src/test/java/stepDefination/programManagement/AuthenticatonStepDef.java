package stepDefination.programManagement;

import com.remedy.programManagement.AuthoPO;
import com.remedy.programManagement.HomePagePO;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.junit.Assert.assertEquals;

/**
 * Created by aparlapalli on 1/18/17.
 */
public class AuthenticatonStepDef extends DriverScript {

    AuthoPO authScreen = new AuthoPO(driver);
    HomePagePO homePage = new HomePagePO(driver);
    WebDriverWait wait = new WebDriverWait(driver, 10);
    static String homePageURL = "https://cdn-qa.remedypartners.com/program-management/index.html#/";

    @Given("^User on the home page$")
    public void userOnTheHomePage() throws Throwable {

        driver.navigate().to(Config.getProperty("BaseUrl"));
        String homePageHeader = homePage.getHomePageHeader();
        assertEquals(homePageHeader, "Welcome to Program Management");
    }

    @When("^User click on Login button$")
    public void userClickOnLoginButton() throws Throwable {

        homePage.clickOnLoginButton();
    }

    @Then("^User has to wait for the Autho overlay to laod$")
    public void userHasToWaitForTheAuthoOverlayToLaod() throws Throwable {

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.name("email")));

    }

    @And("^users enters email and passwd (\\S+) and (\\S+)$")
    public void usersEntersEmailAndPasswdEmailAndPasswd(String email, String passwd) throws Throwable {

        authScreen.AuthO(email, passwd);

    }

    @Then("^User has to wait for Autho overlay to disappear$")
    public void userHasToWaitForAuthoOverlayToDisappear() throws Throwable {

        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.className("valentino-icon-remedy-connect")));

    }


    @Then("^Navigate to program management home page$")
    public void NavigateToHomePage() throws Throwable {

        Thread.sleep(3000);
       driver.navigate().to(homePageURL);

    }

}
