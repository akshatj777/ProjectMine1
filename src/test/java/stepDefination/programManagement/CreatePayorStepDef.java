package stepDefination.programManagement;

//import com.remedy.programManagement.CreatePayorPO;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.junit.Assert.assertEquals;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class CreatePayorStepDef extends DriverScript {

//    CreatePayorPO createPayor = new CreatePayorPO(driver);
    WebDriverWait wait = new WebDriverWait(driver, 10);
    String actualMsg;


    @Given("^Enter payor data and click on submit  \"([^\"]*)\"  and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void createPayorOrg(String name, String cName, String email, String phone, String addr1, String addr2, String city, String state, String zip, String ein) throws Throwable {

//        createPayor.createPayorOrg(name, cName, email, phone, addr1, addr2, city, state, zip, ein);

    }


}
