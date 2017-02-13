package stepDefination.programManagement;

import com.remedy.programManagement.CreateManagingOrgPO;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.junit.Assert.assertEquals;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class CancelCreateManOrgStepDef extends DriverScript {

    CreateManagingOrgPO createMOrgPage = new CreateManagingOrgPO(driver);


    @Given("^Enter data and click on cancel  \"([^\"]*)\"  and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void createManagingOrg(String name, String cName, String email, String phone, String addr1, String addr2, String city, String state, String zip) throws Throwable {

        createMOrgPage.cancelCreateMorg(name, cName, email, phone, addr1, addr2, city, state, zip);
    }


    @Then("^user lands on managing Org page$")
    public void userLandsOnManagingOrgPage() throws Throwable {

        assertEquals(driver.getCurrentUrl(), "https://cdn-qa.remedypartners.com/program-management/index.html#/organizations-browser/mo");

    }
}
