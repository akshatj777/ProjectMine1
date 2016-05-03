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

        @Then("^I should see header text \"([^\"]*)\"$")
        public void iShouldSeeHeaderText(String header) throws Throwable {

                userAdminHome.iSeeUserAdminPageHeader(header);
        }

        @And("^I sort user by \"([^\"]*)\"$")
        public void iSortUserBy(String sortOption) throws Throwable {

                userAdminHome.iSelectSortOption(sortOption);

        }

        @Then("^I should see sort order default option \"([^\"]*)\"$")
        public void iShouldSeeSortOrderDefaultOption(String defaultOption) throws Throwable {
                userAdminHome.iSeeSortOrderDefaultOption(defaultOption);

        }

        @And("^I can see \"([^\"]*)\" user card$")
        public void iCanSeeUserCard(int count) throws Throwable {

                userAdminHome.iVerifyUserCardCount(count);

        }

        @Then("^I click Load More Button$")
        public void iClickLoadMoreButton() throws Throwable {
                userAdminHome.iClickLoadMoreButton();

        }

        @And("^I should see \"([^\"]*)\" for First Name$")
        public void iShouldSeeForFirstName(String firstname) throws Throwable {

                userAdminHome.iverifyFirstNameText(firstname);
        }

        @And("^I should see \"([^\"]*)\" for Last Name$")
        public void iShouldSeeForLastName(String lastName) throws Throwable {
                userAdminHome.iverifyLastNameText(lastName);
        }

        @And("^I should see \"([^\"]*)\" for User Role on user card$")
        public void iShouldSeeForUserRoleOnUserCard(String organizationalrole) throws Throwable {
                userAdminHome.iverifyOrganizationalRoleForAUser(organizationalrole);
        }
}
