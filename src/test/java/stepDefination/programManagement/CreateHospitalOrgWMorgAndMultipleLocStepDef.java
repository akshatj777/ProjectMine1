package stepDefination.programManagement;

import com.remedy.programManagement.CreateHospitalPO;
//import com.remedy.programManagement.CreateManagingOrgPO;
import com.remedy.programManagement.HospitalOrgPO;
import com.remedy.programManagement.ManagingOrgPO;
import com.remedy.resources.DriverScript;
import cucumber.api.DataTable;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Created by aparlapalli on 1/31/17.
 */
public class CreateHospitalOrgWMorgAndMultipleLocStepDef extends DriverScript {

//    CreateManagingOrgPO createMOrgPage = new CreateManagingOrgPO(driver);

    CreateHospitalPO createHospPage = new CreateHospitalPO(driver);
    HospitalOrgPO hospitalPage = new HospitalOrgPO(driver);
    ManagingOrgPO managingOrgPage = new ManagingOrgPO(driver);
    String actualMsg, mOrgName;

    WebDriverWait wait = new WebDriverWait(driver, 10);


    @And("^Enter Manging org data and click on submit$")
    public void enterMangingOrgDataAndClickOnSubmit(List<String> data) throws Throwable {

        mOrgName = data.get(0);
//        createMOrgPage.createMorg(data.get(0), data.get(1), data.get(2), data.get(3), data.get(4), data.get(5), data.get(6), data.get(7), data.get(8));

    }


    @Then("^close the message$")
    public void closeTheMessage() throws Throwable {
//        createMOrgPage.closeMessage();
    }


    @Given("^Select Morg and enter hospital data and click on submit  \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void selectMorgAndEnterHospitalDataAndClickOnSubmit(String name, String shortName, String ccn, String ein, String npi, String addr1, String addr2, String city, String state, String zip, String locName, String locType, String marketId, String regionId, String locAddr1, String locAddr2, String locCity, String locState, String locZip) throws Throwable {

        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("global-spinner-overlay")));
        createHospPage.createHospOrgWHasMOrgAndMultipleLoc(mOrgName, name, shortName, ccn, ein, npi, addr1, addr2, city, state, zip, locName, locType, marketId, regionId, locAddr1, locAddr2, locCity, locState, locZip);

    }
}
