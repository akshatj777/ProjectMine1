package stepDefination.programManagement;

import com.remedy.programManagement.CreatePGPPO;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.junit.Assert.assertEquals;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class CancelCreatePGPOrgStepDef extends DriverScript {

    CreatePGPPO createPgpPage = new CreatePGPPO(driver);


    @Given("^Enter pgp data and click on cancel  \"([^\"]*)\"  and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void createPayorOrg(String name, String shortName, String region, String market, String addr1, String addr2, String city, String state, String zip, String ein, String npi) throws Throwable {

        createPgpPage.cancelCreatePgpOrg(name, shortName, region, market, addr1, addr2, city, state, zip, ein, npi);

    }


    @Then("^user lands on pgp Org page$")
    public void userLandsOnPgpOrgPage() throws Throwable {
        assertEquals(driver.getCurrentUrl(), "https://cdn-qa.remedypartners.com/program-management/index.html#/organizations-browser/pgp");

    }


}
