package stepDefination;

import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import junit.framework.Assert;

import java.util.Set;
import java.util.concurrent.TimeUnit;

/**
 * Created by salam on 8/5/15.
 */
public class CommonSteps extends DriverScript {




    @Given("I am on the login page$")
    public void setup() throws Throwable {
        driver.navigate().to("https://cdn-qa.remedypartners.com/");
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.manage().window().maximize();
    }


    @Then("^I should see \"([^\"]*)\"$")
    @And("I wait to see \"([^\"]*)\"$")
    public void IWaitToSee(String text) throws Throwable {

        Assert.assertTrue(driver.getPageSource().contains(text));

    }


    @And("^I should verify ([^\"]*)$")
    public void IVerifyMessage(String message) throws Throwable {

        Assert.assertTrue(driver.getPageSource().contains(message));
    }


    @Then("^I go to mail verification page$")
    public void IGoToMailVerificationpage() throws Throwable {
        driver.navigate().to("http://www.yopmail.com/en/");
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.manage().window().maximize();

    }



}
