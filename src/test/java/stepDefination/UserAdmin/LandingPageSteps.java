package stepDefination.UserAdmin;

import com.remedy.pageObject.LandingPage;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

/**
 * Created by salam on 8/4/15.
 */
public class LandingPageSteps extends DriverScript{

    LandingPage landingPage = new LandingPage(driver);




    @And("^I click on the Tile with text ([^\"]*)$")
    public void IClickTileWithText(String tile) throws Throwable {

        landingPage.iClickOnApplicateTile(tile);

    }


    @And("^I click on the top user account link$")
    public void IClickTopUserAccountLink() throws Throwable {

        landingPage.iClickOnTheTopUserAccountIcon();

    }


    @And("^I select ([^\"]*) option from the dropdown$")
    public void ISelectLogoutOption(String link) throws Throwable {

        landingPage.iSelectFromTopUserAccountDropDown(link);

    }
}
