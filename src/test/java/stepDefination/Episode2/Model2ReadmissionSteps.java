package stepDefination.Episode2;

import com.remedy.Episode2.Readmission;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class Model2ReadmissionSteps extends DriverScript {

	Readmission admission=new Readmission(driver);
	     
     @Then ("^I click on the centre of the calendar header to select date and month on Transition Page Javascript$")
   	 public void I_click_on_the_centre_of_the_calendar_header_to_select_date_and_month_Javascript()
   	 {
      	  admission.IclickonthecentreofthecalendarheadertoselectdateandmonthonTransitionPageJavascript();
   	 }
}
