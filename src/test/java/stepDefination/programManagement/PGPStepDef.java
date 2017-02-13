package stepDefination.programManagement;

import com.remedy.programManagement.ManagingOrgPO;
import com.remedy.programManagement.PGPOrgPO;
import com.remedy.programManagement.PayorOrgPO;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.junit.Assert.assertEquals;

/**
 * Created by aparlapalli on 1/19/17.
 */
public class PGPStepDef extends DriverScript {


    PGPOrgPO pgpOrgPage = new PGPOrgPO(driver);
    ManagingOrgPO managingOrgPage = new ManagingOrgPO(driver);

    boolean createOrgIsDisplayed;
    WebDriverWait wait = new WebDriverWait(driver, 10);

    @When("^user clicks on pgp org tab$")
    public void userClicksOnManagingOrgTab() throws Throwable {


        createOrgIsDisplayed = pgpOrgPage.clickOnPgpTab();

    }

    @Then("^user verifys the pgp org page$")
    public void userVerifysThePgpOrgPage() throws Throwable {

        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("global-spinner-overlay")));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("[name = 'createNewOrg']")));

    }


    @Then("^user verifies create pgp org page header \"([^\"]*)\"$")
    public void userVerifiesCreatePgpPageHeader(String pgpOrgHeaderMsg) throws Throwable {

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("[name ='address.address1']")));
        String pgpOrgTitle = managingOrgPage.getHeader();
        assertEquals(pgpOrgTitle, pgpOrgHeaderMsg);

    }


}
