package stepDefination.Episode1;

import com.remedy.episode1.PatientsListPage;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;

/**
 * Created by salam on 5/22/16.
 */
public class PatientListPageSteps extends DriverScript {

    PatientsListPage patientsList = new PatientsListPage(driver);


    @Then("^I should see \"([^\"]*)\" on the patient list page$")
    public void iShouldSeeOnThePatientListPage(String text) throws Throwable {

        patientsList.iverifyPatientListPageheader(text);
    }


}
