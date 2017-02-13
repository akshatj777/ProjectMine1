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
import static org.junit.Assert.assertTrue;

/**
 * Created by aparlapalli on 1/31/17.
 */
public class CreateHospitalOrgWOneLocStepDef extends DriverScript {

    CreateHospitalPO createHospPage = new CreateHospitalPO(driver);
    HospitalOrgPO hospitalPage = new HospitalOrgPO(driver);
    ManagingOrgPO managingOrgPage = new ManagingOrgPO(driver);
    int noOfOrgsBefore, noOfOrgsAfter;

    WebDriverWait wait = new WebDriverWait(driver, 10);


    @Given("^Enter hospital data and click on submit  \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void enterHospitalDataAndClickOnCancel(String name, String shortName, String ccn, String ein, String npi, String addr1, String addr2, String city, String state, String zip, String locName, String locType, String marketId, String regionId) throws Throwable {
        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("global-spinner-overlay")));
        createHospPage.createHospitalOrgWOneLoc(name, shortName, ccn, ein, npi, addr1, addr2, city, state, zip, locName, locType, marketId, regionId);

    }

}
