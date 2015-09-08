package stepDefination.UserAdmin;

import com.remedy.pageObject.UserAdminHomePage;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

/**
 * Created by salam on 8/5/15.
 */
public class UserAdminHomeSteps extends DriverScript{


        UserAdminHomePage userAdminHome = new UserAdminHomePage(driver);


        @Then("^I enter search box with \"([^\"]*)\"$")
        public void IEnterSearchBoxWith(String userText) throws Throwable {

               userAdminHome.enterSerchUserText(userText);

        }

        @Then("^I click on the Select Faclity field$")
        public void IClickTheSelectFaclityField() throws Throwable {
                userAdminHome.iClickOnSearchFilterField();
        }


        @And("^I select filter form the dropdown \"([^\"]*)\"$")
        public void ISelectFilterFormDropdown(String facility) throws Throwable {

                userAdminHome.iSelectFacilityForFilter(facility);
        }

        @Then("^I click on reset button$")
        public void IClickResetButton() throws Throwable {
                userAdminHome.iClickResetFilterButton();
        }

        @And("^I click on the table view icon$")
        public void IClickTableViewIcon() throws Throwable {
                userAdminHome.iClickonTableViewIcon();
        }

        @Then("^I will click on the card view Icon$")
        public void IClickCardViewIcon() throws Throwable {
                userAdminHome.iClickonCardViewIcon();
        }

        @Then("^I click on view Profile link of the first user$")
        public void IlickViewProfileLinkOfFirstUser() throws Throwable {

                userAdminHome.iClickViewProfileLinkByIndex(0);
        }


        @Then("^I click cancel button$")
        public void IClickCancelButton() throws Throwable {
                userAdminHome.iClickCancelButton();
        }

        @And("^I click on the veiw profile of icon for first user$")
        public void IClickVeiwProfileIcon() throws Throwable {

                userAdminHome.iClickOnViewProfileIcon(0);
        }
}
