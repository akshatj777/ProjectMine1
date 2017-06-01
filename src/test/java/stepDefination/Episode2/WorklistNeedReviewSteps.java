package stepDefination.Episode2;

import com.remedy.Episode2.WorklistNeedReview;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class WorklistNeedReviewSteps extends DriverScript {

	WorklistNeedReview needreview=new WorklistNeedReview(driver);
	
	@Then ("^I click on the Needs Review tab on the patient Card Page$") 
	public void I_click_on_the_Needs_Review_tab_on_the_patient_Card_Page()
	{
		needreview.IclickontheNeedsReviewtabonthepatientCardPage();
	}
	
}
