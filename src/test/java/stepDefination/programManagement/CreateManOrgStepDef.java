package stepDefination.programManagement;

import com.remedy.programManagement.ManagingOrgPO;
import com.remedy.programManagement.helpers.Commons;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.openqa.selenium.By.tagName;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class CreateManOrgStepDef extends DriverScript {

    ManagingOrgPO createMOrgPage = new ManagingOrgPO(driver);
    Commons commonLib = new Commons(driver);
    WebDriverWait wait = new WebDriverWait(driver, 10);
    String actualMsg;


    @And("^Enter Morg data and click on submit  \"([^\"]*)\"  and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void createManagingOrg(String name, String cName, String email, String phone, String addr1, String addr2, String city, String state, String zip) throws Throwable {

        createMOrgPage.fillMorgForm(name, cName, email, phone, addr1, addr2, city, state, zip);
        commonLib.submitForm();

    }

    @And("^wait for the page to load and get the message$")
    public void waitForThePageToLoad() throws Throwable {

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.linkText("Managing")));

    }

    @Then("^org is created successfuly message verification \"([^\"]*)\"$")
    public void orgIsCreatedSuccessfulyMessageVerification(String expMsg) throws Throwable {

        actualMsg = commonLib.getSucessMessage();
        assertEquals(actualMsg, expMsg);
        commonLib.closeMessage();

    }

    @Given("^Enter data and click on cancel  \"([^\"]*)\"  and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void cancelCreateManagingOrg(String name, String cName, String email, String phone, String addr1, String addr2, String city, String state, String zip) throws Throwable {

        createMOrgPage.fillMorgForm(name, cName, email, phone, addr1, addr2, city, state, zip);
        commonLib.cancelForm();
    }

    @Then("^user landing page after create cancel \"([^\"]*)\"$")
    public void userLandingPageAfterCancelCreate(String url) throws Throwable {

        assertEquals(driver.getCurrentUrl(), AuthenticatonStepDef.homePageURL+url);

    }

}
