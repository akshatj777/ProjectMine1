package stepDefination;

import com.remedy.baseClass.BaseClass;
import com.remedy.resources.Constants;
import com.remedy.userAdmin.LandingPage;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.util.concurrent.TimeUnit;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

/**
 * Created by salam on 8/5/15.
 */
public class CommonSteps extends DriverScript {


    LandingPage landingPage = new LandingPage(driver);
    BaseClass baseClass = new BaseClass(driver);

    public static Actions actionEvent = new Actions(driver);

    @Given("I am on the login page$")
    public void setup() throws Throwable {
        driver.navigate().to(Config.getProperty("BaseUrl"));
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.manage().window().maximize();
    }

    @Then("^I go to mail verification page$")
    public void IGoToMailVerificationpage() throws Throwable {
    	Robot r = new Robot();        
        r.keyPress(KeyEvent.VK_CONTROL);
        r.keyPress(KeyEvent.VK_T);
        r.keyRelease(KeyEvent.VK_CONTROL);
        r.keyRelease(KeyEvent.VK_T);
        iSwitchBackToOLDWindow();
        driver.navigate().to("https://www.mailinator.com/");
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


    @And("^I navigate back$")
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

    @And("^I verify current page \"([^\"]*)\" title$")
    public void iVerifyCurrentPageTitle(String pageTitle) {
        //baseClass.delay();
        Assert.assertEquals(driver.getTitle(), pageTitle);
    }

    @And("^I wait for ([^\"]*) milli seconds$")
    public void iWaitForMillisSeconds(Long waitTimeInMillis) {
        try {
            Thread.sleep(waitTimeInMillis);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @And("^I switch to default window from iframe$")
    public void iSwitchDefaultWindowFromIframe(){

        driver.switchTo().defaultContent();
    }

    @And("^I double click on current mouse location element$")
    public void iDoubleClickCurrentMouseLocationElement(){

        actionEvent.doubleClick().perform();
    }

    @And("^I go to \"([^\"]*)\" page$")
    public void visit(String page)
    {
        driver.navigate().to(page);
    }
}