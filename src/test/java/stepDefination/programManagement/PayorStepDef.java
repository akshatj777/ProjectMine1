package stepDefination.programManagement;

import com.remedy.programManagement.CreatePayorPO;
import com.remedy.programManagement.ManagingOrgPO;
import com.remedy.programManagement.PayorOrgPO;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.junit.Assert.assertEquals;

/**
 * Created by aparlapalli on 1/19/17.
 */
public class PayorStepDef extends DriverScript {


    PayorOrgPO payorOrgPo = new PayorOrgPO(driver);
    ManagingOrgPO managingOrgPage = new ManagingOrgPO(driver);

    boolean createOrgIsDisplayed;
    WebDriverWait wait = new WebDriverWait(driver, 10);

    @When("^user clicks on payor org tab$")
    public void userClicksOnManagingOrgTab() throws Throwable {


        createOrgIsDisplayed = payorOrgPo.clickOnPayorTab();

    }

    @Then("^user verifys the payor org page$")
    public void userVerifysTheManagingOrgPage() throws Throwable {

        wait.until(ExpectedConditions.invisibilityOfElementLocated(By.id("global-spinner-overlay")));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("[name = 'createNewOrg']")));


    }


    @Then("^user verifies create payor org page header \"([^\"]*)\"$")
    public void userVerifiesCreateManagementOrgPageHeader(String payorOrgHeaderMsg) throws Throwable {

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("[name ='address.address1']")));
        String payorOrgTitle = managingOrgPage.getHeader();
        assertEquals(payorOrgTitle, payorOrgHeaderMsg);

    }


}
