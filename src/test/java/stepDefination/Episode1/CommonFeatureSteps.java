package stepDefination.Episode1;

import java.text.ParseException;

import org.openqa.selenium.By;

import com.remedy.episode1.CommonFeature;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class CommonFeatureSteps extends DriverScript {

	CommonFeature common=new CommonFeature(driver);
	
     @When ("^I click \"([^\"]*)\" element \"([^\"]*)\"$")
     public void i_Click_Element(String text,String locator){
		common.iClickElement(locator);
	}
	
	@When ("^I click \"([^\"]*)\" xpath element \"([^\"]*)\"$")
    public void i_Click_Xpath_Element(String text,String locator){
    	common.iClickXpathElement(locator);
    }
	
	
    /**
     * @throws InterruptedException 
     * @When /^(?:|I )wait ([^"]*) seconds?$/
     */
    public void i_Wait_Seconds(int time) throws InterruptedException
    {
    	common.iWaitSeconds(time);
    }
    
    @When ("^I will wait to see value \"([^\"]*)\" in element \"([^\"]*)\"$")
     public void i_Wait_For_Value_In_Element(String value, String locator) throws InterruptedException{
    	common.iWaitForValueInElement(value,locator);
    }

    /**
     * Clicks visible link with specified id|title|alt|text.
     *
     * @When /^(?:|I )follow visible "(?P<link>(?:[^"]|\\")*)"$/
     */
    
    public void click_Visible_Link(String link){
    	common.clickVisibleLink(link);
    }
    
    /**
     * Checks, that current page PATH is equal to specified.
     *
     * @Then /^(?:|I )should not be on "(?P<page>[^"]+)"$/
     */
    public void assert_Not_Page_Address(String page){
    	common.assertNotPageAddress(page);
    }
    

    /**
     * @Given /^I am logged in as "([^"]*)"$/
     */
    public void i_Am_Logged_In_As(String email){
    	common.iAmLoggedInAs(email);
    }
    
   @Then("^I will wait to see \"([^\"]*)\" in \"([^\"]*)\" tag$")
    public void i_Wait_To_See(String text,String tag){
    	common.i_Wait_To_See(text,tag);
    }
    
   @Then("^I will wait to see onboarding status \"([^\"]*)\"$")
   public void i_Wait_To_See_onboarding_status(String text){
   	common.iWaitToSeeonboarding(text);
   }
    /**
     * @And I press "([^"]*)"
     */
    public void i_Press(String text){
    	common.iPress(text);	
    }
    
   @And ("^I am on \"([^\"]*)\"$")
    public void i_Am_On(String URL){
    	common.iAmOn(URL);	
    }
   
   @Then ("^I search \"([^\"]*)\" from the list of Filter$")
   public void i_Search_Filter(String Filter){
	   common.iSearchFilter(Filter);
   }
   
   @And ("^I navigate to the filtered patient summary page \"([^\"]*)\"$")
   public void i_navigate_to_the_patients_summary_page(String Url){
	   common.inavigatetothepatientssummarypage(Url); 
   }
   
   @Then ("^Patient should have opened episode$")
   public void patient_should_have_opened_episode(){
	   common.patientshouldhaveopenedepisode();
   }

   @When ("^I click on episode marker drop down$")
   public void i_click_On_Episode_Marker(){
	   common.iclickOnEpisodeMarker();
   }
   
   @Then ("^I will wait to see \"([^\"]*)\" state$")
   public void i_Will_Wait_To_See_State(String state){
	   common.iWillWaitToSeeState(state);
   }
   
   @Then ("^I should not see \"([^\"]*)\" in \"([^\"]*)\" tag$")
   public void i_Should_not_see(String text,String tag){
	   common.iShouldnotsee(text,tag);
   }
   
   @Then ("^I Expand to the patient summary page$")
   public void i_Expand_to_the_patient_summary_page(){
	   common.iExpandtothepatientsummarypage();
   }
   
   @When ("^I reload the page$")
   public void I_reload_the_page(){
	   common.Ireloadthepage();
   }
   
   @Then ("^I will not see \"([^\"]*)\" xpath element \"([^\"]*)\"$")
   public void i_Will_Not_See(String text,String element){
	   common.iWillNotSee(text,element);   
   }
   
   @Then ("^I navigate to the \"([^\"]*)\"$")
   public void i_navigate_to(String URL){
	   common.inavigateto(URL);
   }
   
   @And ("^I will verify Episode Marker Admit Date \"([^\"]*)\" and Termination date \"([^\"]*)\" and Episode Status \"([^\"]*)\"$")
   public void i_Verify_Episode_Marker_Admit_Terminate_date(int days,int terminate_date,String status,String logic) throws ParseException{
	   common.iVerifyEpisodeMarkerAdmitTerminatedate(days,terminate_date,status);
   }
   
   @And ("^I select \"([^\"]*)\" from \"([^\"]*)\" by xpath \"([^\"]*)\"$")
   public void i_Select_value(String variable,String value,String xpath) throws ParseException{
	   common.i_Select_value(variable,value,xpath);
   }
   
   @And ("^I press \"([^\"]*)\"$")
   public void i_press(String text){
	   common.i_press(text);
   }
   
   @When ("^I fill in 'Note' xpath \"([^\"]*)\" with \"([^\"]*)\"$")
   public void i_Fill_in_Text(String variable,String xpath,String value){
	   common.iFillinText(variable,xpath,value);
   }
}

