package stepDefination;

import com.remedy.userAdmin.LandingPage;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import java.util.concurrent.TimeUnit;

/**
 * Created by salam on 8/5/15.
 */
public class CommonSteps extends DriverScript {


        LandingPage landingPage = new LandingPage(driver);

    @Given("I am on the login page$")
    public void setup() throws Throwable {
        driver.navigate().to("https://cdn-qa.remedypartners.com/");
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.manage().window().maximize();
    }

    @Then("^I go to mail verification page$")
    public void IGoToMailVerificationpage() throws Throwable {
        driver.navigate().to("http://www.yopmail.com/en/");
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.manage().window().maximize();

    }


    @And("^I close current Window$")
    public void ICoseCurrentWindow() throws Throwable {
        driver.close();
    }


  /*  @And("^I will verify user ([^\"]*)$")
    public void iWillverifyElementText(String text) throws Throwable {
        landingPage.v(driver.findElement(By.cssSelector(".rp-icon-user-account")), text);
    }*/


    @And("^I nevigate back$")
    public void I_nevigate_back() throws Throwable {
        driver.navigate().back();
    }

    @And("^I switch to new window$")
    public void iSwitchoNewWindow() {

        landingPage.iSwitchToNewWindow();
    }

    @And("^I switch back to old window$")
    public void iSwitchBackToOLDWindow(){

        landingPage.iSwitchBackToOldWindow();
    }


}
