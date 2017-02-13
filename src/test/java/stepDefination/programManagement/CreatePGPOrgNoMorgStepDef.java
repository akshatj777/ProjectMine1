package stepDefination.programManagement;

import com.remedy.programManagement.CreatePGPPO;
import com.remedy.programManagement.CreatePayorPO;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Given;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class CreatePGPOrgNoMorgStepDef extends DriverScript {

    CreatePGPPO createPgpPage = new CreatePGPPO(driver);
    WebDriverWait wait = new WebDriverWait(driver, 10);


    @Given("^select has no Morg enter pgp data and click on submit  \"([^\"]*)\"  and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void createPayorOrg(String name, String shortName, String region, String market, String addr1, String addr2, String city, String state, String zip, String ein, String npi) throws Throwable {

        createPgpPage.createPgpOrgWNMorg(name, shortName, region, market, addr1, addr2, city, state, zip, ein, npi);

    }


}
