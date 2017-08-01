package stepDefination.programManagement;


import com.remedy.programManagement.HomePagePO;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;

/**
 * Created by aparlapalli on 1/19/17.
 */
public class HomePageStepDef extends DriverScript {

    HomePagePO homePage = new HomePagePO(driver);
    WebDriverWait wait = new WebDriverWait(driver, 10);



    @And("^user clicks on Organization link$")
    public void userClicksOnOrganizationLink() throws Throwable {
        homePage.clickOnOrganizationLink();
        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("global-spinner-overlay")));

    }

    @Then("^user verifys the header of the organizations page$")
    public void userVerifysTheHeaderOfTheOrganizationsPage() throws Throwable {

        String orgHeader = homePage.getOrganizationHeader();
        assertEquals(orgHeader, "Organizations");
    }

    @Then("^user verifys elements on the page$")
    public void userVerifysElementsOnThePage(List<String> orgTypes) throws Throwable {

        List<String> orgTypesList = homePage.getOrgTypesSelectors();
        assertEquals(orgTypesList, orgTypes);

    }

    @Then("^user verifys default org tab selected on the home page$")
    public void userVerifysDefaultTabSelected(List<String> orgTypes) throws Throwable {

        List<String> orgTabsList = new ArrayList<>();
//                orgTabsList.add(homePage.getSelectedTab());
        assertEquals(orgTabsList, orgTypes);

    }

}

