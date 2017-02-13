package stepDefination.programManagement;

import com.remedy.programManagement.CreateManagingOrgPO;
import com.remedy.programManagement.CreatePayorPO;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.junit.Assert.assertEquals;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class CancelCreatePayorStepDef extends DriverScript {

    CreatePayorPO createPayor = new CreatePayorPO(driver);

    @Given("^Enter payor data and click on cancel  \"([^\"]*)\"  and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void createPayorOrg(String name, String cName, String email, String phone, String addr1, String addr2, String city, String state, String zip, String ein) throws Throwable {

        createPayor.cancelCreatePayorOrg(name, cName, email, phone, addr1, addr2, city, state, zip, ein);

    }


    @Then("^user lands on payor Org page$")
    public void userLandsOnpayorOrgPage() throws Throwable {

        assertEquals(driver.getCurrentUrl(), "https://cdn-qa.remedypartners.com/program-management/index.html#/organizations-browser/payor");

    }
}
