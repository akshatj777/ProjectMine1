package stepDefination.programManagement;

import com.google.common.collect.ImmutableList;
import com.remedy.programManagement.AuthoPO;
import com.remedy.programManagement.HomePagePO;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

import static org.junit.Assert.assertEquals;

/**
 * Created by aparlapalli on 1/19/17.
 */
public class HomePageStepDef extends DriverScript {

    HomePagePO homepage = new HomePagePO(driver);
    WebDriverWait wait = new WebDriverWait(driver, 10);


    @And("^user clicks on Organization link$")
    public void userClicksOnOrganizationLink() throws Throwable {
        homepage.clickOnOrganizationLink();
        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("global-spinner-overlay")));

    }

    @Then("^user verifys the header of the organizations page$")
    public void userVerifysTheHeaderOfTheOrganizationsPage() throws Throwable {

        String orgHeader = homepage.getOrganizationHeader();
        assertEquals(orgHeader, "Organizations");
    }

    @Then("^user verifys elements on the page$")
    public void userVerifysElementsOnThePage(List<String> orgTypes) throws Throwable {

        List<String> orgTypesList = homepage.getOrgTypesSelectors();
        assertEquals(orgTypesList, orgTypes);

    }
}

