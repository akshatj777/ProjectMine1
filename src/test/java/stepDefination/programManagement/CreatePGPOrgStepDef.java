package stepDefination.programManagement;

import com.remedy.programManagement.ManagingOrgPO;
import com.remedy.programManagement.PgpOrgPO;
import com.remedy.programManagement.helpers.Commons;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Given;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class CreatePGPOrgStepDef extends DriverScript {

    PgpOrgPO createPgpPage = new PgpOrgPO(driver);
    ManagingOrgPO managingOrgPage = new ManagingOrgPO(driver);
    Commons commonLib = new Commons(driver);
    WebDriverWait wait = new WebDriverWait(driver, 10);
    String mOrgName;


    @Given("^Enter PGP org data and click on submit \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void createPgpOrgNoMorg(String name, String shortName, String region, String market, String addr1, String addr2, String city, String state, String zip, String ein, String npi, int mOrgIdx) throws Throwable {

        if (mOrgIdx != 1){
         mOrgName = managingOrgPage.getmOrgName();
         System.out.println("orgName from stepdef  :"+mOrgName);

        }else {
            mOrgName = "";
        }
        commonLib.enterAndSelectMorg(mOrgIdx, mOrgName);
        createPgpPage.pgpOrgForm(name, shortName, region, market, addr1, addr2, city, state, zip, ein, npi);
        commonLib.submitForm();

    }


    @Given("^Enter PGP org data and click on cancel \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void cancelCreatePgpOrgNoMorg(String name, String shortName, String region, String market, String addr1, String addr2, String city, String state, String zip, String ein, String npi, int mOrgIdx) throws Throwable {

        if (mOrgIdx != 1){
            mOrgName = managingOrgPage.getmOrgName();
            System.out.println("orgName from stepdef  :"+mOrgName);

        }else {
            mOrgName = "";
        }
        commonLib.enterAndSelectMorg(mOrgIdx, mOrgName);
        createPgpPage.pgpOrgForm(name, shortName, region, market, addr1, addr2, city, state, zip, ein, npi);
        commonLib.cancelForm();

    }

}
