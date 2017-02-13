package stepDefination.programManagement;

import com.remedy.programManagement.CreateHospitalPO;
import com.remedy.programManagement.HospitalOrgPO;
import com.remedy.programManagement.ManagingOrgPO;
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
 * Created by aparlapalli on 1/31/17.
 */
public class CancelCreateHospitalOrgStepDef extends DriverScript {

    CreateHospitalPO createHospPage = new CreateHospitalPO(driver);
    HospitalOrgPO hospitalPage = new HospitalOrgPO(driver);
    ManagingOrgPO managingOrgPage = new ManagingOrgPO(driver);
    String noOfOrgsBefore, noOfOrgsAfter;

    WebDriverWait wait = new WebDriverWait(driver, 10);


    @When("^user clicks on hospital org tab$")
    public void userClicksOnHospitalOrgTab() throws Throwable {
        hospitalPage.clickOnHospitalab();

    }


    @And("^user verifys the hospital org page$")
    public void userVerifysTheHospitalOrgPage() throws Throwable {

        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("global-spinner-overlay")));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("[name = 'createNewOrg']")));
        noOfOrgsBefore = hospitalPage.getNoOfOrgs();


    }


    @And("^user verifies create hospital org page header \"([^\"]*)\"$")
    public void userVerifiesCreateManagementOrgPageHeader(String hospitalOrgHeaderMsg) throws Throwable {

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("[name ='ein']")));
        String hospitalOrgTitle = managingOrgPage.getHeader();
        assertEquals(hospitalOrgTitle, hospitalOrgHeaderMsg);

    }

    @Given("^Enter hospital data and click on cancel  \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void enterHospitalDataAndClickOnCancel(String name, String shortName, String ccn, String ein, String npi, String addr1, String addr2, String city, String state, String zip, String locName, String locType, String marketId, String regionId) throws Throwable {
        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("global-spinner-overlay")));
        createHospPage.cancelCreateHospitalOrg(name, shortName, ccn, ein, npi, addr1, addr2, city, state, zip, locName, locType, marketId, regionId);

    }

    @Then("^user lands on hospital org tab and verifies no of orgs$")
    public void userLandsOnHospitalOrgTabAndVerifiesNoOfOrgs() throws Throwable {

        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("global-spinner-overlay")));
        noOfOrgsAfter = hospitalPage.getNoOfOrgs();
        assertEquals(noOfOrgsBefore, noOfOrgsAfter);

    }
}
