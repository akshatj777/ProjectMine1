package stepDefination.programManagement;

import com.remedy.programManagement.CreateManagingOrgPO;
import com.remedy.programManagement.ManagingOrgPO;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.junit.Assert.assertEquals;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class CreateManOrgStepDef extends DriverScript {

    CreateManagingOrgPO createMOrgPage = new CreateManagingOrgPO(driver);
    WebDriverWait wait = new WebDriverWait(driver, 10);
    String actualMsg;


    @And("^Enter Morg data and click on submit  \"([^\"]*)\"  and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void createManagingOrg(String name, String cName, String email, String phone, String addr1, String addr2, String city, String state, String zip) throws Throwable {

        createMOrgPage.createMorg(name, cName, email, phone, addr1, addr2, city, state, zip);

    }

    @And("^wait for the page to load and get the message$")
    public void waitForThePageToLoad() throws Throwable {

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.linkText("Managing")));

    }

    @Then("^org is created successfuly message verification \"([^\"]*)\"$")
    public void orgIsCreatedSuccessfulyMessageVerification(String expMsg) throws Throwable {

        actualMsg = createMOrgPage.getSucessMessage();
        assertEquals(actualMsg, expMsg);

    }


}
