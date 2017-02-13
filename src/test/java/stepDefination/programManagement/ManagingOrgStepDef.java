package stepDefination.programManagement;

import com.remedy.programManagement.ManagingOrgPO;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.junit.Assert.assertEquals;

/**
 * Created by aparlapalli on 1/19/17.
 */
public class ManagingOrgStepDef extends DriverScript {

    ManagingOrgPO managingOrgPage = new ManagingOrgPO(driver);
    boolean createOrgIsDisplayed;
    WebDriverWait wait = new WebDriverWait(driver, 10);

    @When("^user clicks on managing org tab$")
    public void userClicksOnManagingOrgTab() throws Throwable {


        createOrgIsDisplayed = managingOrgPage.clickOnManagingTab();

    }

    @Then("^user verifys the managing org page$")
    public void userVerifysTheManagingOrgPage() throws Throwable {

        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("global-spinner-overlay")));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("[name = 'createNewOrg']")));


    }

    @When("^user clicks on create new$")
    public void userClicksOnCreateNew() throws Throwable {

        managingOrgPage.clickOnCreateNewButton();
    }

    @Then("^user verifies create management org page header \"([^\"]*)\"$")
    public void userVerifiesCreateManagementOrgPageHeader(String mOrgHeaderMsg) throws Throwable {

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("[name ='address.address1']")));
        String mOrgTitle = managingOrgPage.getHeader();
        assertEquals(mOrgTitle, mOrgHeaderMsg);
    }


}
