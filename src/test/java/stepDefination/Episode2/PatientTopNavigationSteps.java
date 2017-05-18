package stepDefination.Episode2;

import com.remedy.Episode2.PatientTopNavigation;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class PatientTopNavigationSteps extends DriverScript{

	PatientTopNavigation patientnav=new PatientTopNavigation(driver);
	
	@And("^I should see product list icon is appearing on the top left of the episodes page$")
	public void i_should_see_product_list_icon_is_appearing_on_the_top_left_of_the_episodes_page()throws Throwable {
		patientnav.iShouldSeeProductListIcon();
	}
	
	@Then("^I click on product list icon appearing on the top left of the episodes page$")
	public void i_click_on_product_list_icon_appearing_on_the_top_left_of_the_episodes_page()throws Throwable{
		patientnav.iClickOnProductListIcon();
	}
	
	@Then("^I scroll the page to top$")
    public void i_scroll_the_page_to_top() throws Throwable{
		patientnav.iScrollPageToTop();
    }
}
