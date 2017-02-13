package stepDefination.programManagement;

import com.remedy.programManagement.CreateHospitalPO;
import com.remedy.programManagement.HospitalOrgPO;
import com.remedy.programManagement.ManagingOrgPO;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Given;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * Created by aparlapalli on 2/10/17.
 */
public class CreateHospNoMorgWithMultipleLocsStepDef extends DriverScript {

    CreateHospitalPO createHospPage = new CreateHospitalPO(driver);
    WebDriverWait wait = new WebDriverWait(driver, 10);

    @Given("^Select no Morg enter hospital data and click on submit  \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void selectMorgAndEnterHospitalDataAndClickOnSubmit(String name, String shortName, String ccn, String ein, String npi, String addr1, String addr2, String city, String state, String zip, String locName, String locType, String marketId, String regionId, String locAddr1, String locAddr2, String locCity, String locState, String locZip) throws Throwable {

        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("global-spinner-overlay")));
        createHospPage.createHospitalOrgNoMorgWMultipleLoc(name, shortName, ccn, ein, npi, addr1, addr2, city, state, zip, locName, locType, marketId, regionId, locAddr1, locAddr2, locCity, locState, locZip);

    }

}
