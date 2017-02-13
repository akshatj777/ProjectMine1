package stepDefination.programManagement;

import com.remedy.programManagement.CreateHospitalPO;
import com.remedy.programManagement.ManagingOrgPO;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Given;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * Created by aparlapalli on 2/10/17.
 */
public class CreateHospOrgwithMultipleLocTypesStepDef extends DriverScript {

    CreateHospitalPO createHospPage = new CreateHospitalPO(driver);
    WebDriverWait wait = new WebDriverWait(driver, 10);


    @Given("^Enter hospital data with multiple loc types and click on submit  \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void enterHospitalDataAndClickOnCancel(String name, String shortName, String ccn, String ein, String npi, String addr1, String addr2, String city, String state, String zip, String locName, String locType, String marketId, String regionId) throws Throwable {
        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("global-spinner-overlay")));
        createHospPage.createHospitalOrgWOneLocMultipleLocTypes(name, shortName, ccn, ein, npi, addr1, addr2, city, state, zip, locName, locType, marketId, regionId);

    }


}
