package stepDefination.programManagement;

import com.remedy.programManagement.CreateManagingOrgPO;
import com.remedy.programManagement.CreatePGPPO;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class CreatePGPOrgWithMorgStepDef extends DriverScript {

    CreatePGPPO createPgpPage = new CreatePGPPO(driver);
    CreateManagingOrgPO createMOrgPage = new CreateManagingOrgPO(driver);


    @And("^Morg data and click on submit  \"([^\"]*)\"  and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void createManagingOrg(String name, String cName, String email, String phone, String addr1, String addr2, String city, String state, String zip) throws Throwable {

        createMOrgPage.createMorg(name, cName, email, phone, addr1, addr2, city, state, zip);
    }

    @And("^enter pgp data and click on submit  \"([^\"]*)\" and \"([^\"]*)\"  and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void createPgpOrg(String mOrgName, String name, String shortName, String region, String market, String addr1, String addr2, String city, String state, String zip, String ein, String npi) throws Throwable {

        createPgpPage.createPgpOrgWMorg(mOrgName, name, shortName, region, market, addr1, addr2, city, state, zip, ein, npi);


    }


}
