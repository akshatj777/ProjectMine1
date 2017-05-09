package stepDefination.programManagement;

import com.remedy.programManagement.PgpOrgPO;
import com.remedy.programManagement.helpers.Commons;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Created by aparlapalli on 1/19/17.
 */
public class PGPStepDef extends DriverScript {


    PgpOrgPO pgpOrgPage = new PgpOrgPO(driver);
    Commons commonLib = new Commons(driver);
    WebDriverWait wait = new WebDriverWait(driver, 10);

    @When("^user clicks on pgp org tab$")
    public void userClicksOnPgpOrgTab() throws Throwable {


         pgpOrgPage.clickOnPgpTab();
        assertTrue(commonLib.getCreateNewButtonStatus());

    }

    @Then("^user verifys the pgp org page$")
    public void userVerifysThePgpOrgPage() throws Throwable {

        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("global-spinner-overlay")));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("[name = 'createNewOrg']")));

    }


    @Then("^user verifies create pgp org page header \"([^\"]*)\"$")
    public void userVerifiesCreatePgpPageHeader(String pgpOrgHeaderMsg) throws Throwable {

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("[name ='address.address1']")));
        String pgpOrgTitle = commonLib.getHeader();
        assertEquals(pgpOrgTitle, pgpOrgHeaderMsg);

    }


}
