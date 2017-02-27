package stepDefination.Episode1;

import com.remedy.episode1.PatientCreationPage;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

/**
 * Created by salam on 5/22/16.
 */
public class PatientCreationSteps extends DriverScript {

    PatientCreationPage patientCreation = new PatientCreationPage(driver);


    @Then("^I should see \"([^\"]*)\" on Add Patient window$")
    public void iShouldSeeOnAddPatientWindow(String text) throws Throwable {

        patientCreation.iverifyPatientInformationText(text);
    }


    @And("^I enter ([^\"]*) for Patient first Name$")
    public void iEnterFirstNameForPatientFirstName(String firstName) throws Throwable {
        patientCreation.iEnterFirstName(firstName);
    }

    @And("^I enter ([^\"]*) for Patient Last Name$")
    public void iEnterLastNameForPatientLastName(String lastName) throws Throwable {
        patientCreation.iEnterLastName(lastName);
    }

    @Then("^I enter ([^\"]*) for patient date of Birth$")
    public void iEnterDateOfBirthForPatientDateOfBirth(String dateofBirth) throws Throwable {
        patientCreation.iEnterDateofBirth(dateofBirth);
    }

    @Then("^I select \"([^\"]*)\" for Gender$")
    public void iSelectForGender(String gender) throws Throwable {
        patientCreation.iSelectGenderofthePatient(gender);
    }


    @And("^I search for ([^\"]*) Admiting Facility$")
    public void iSearchForFicilitySearchAdmitingFacility(String serchText) throws Throwable {
        patientCreation.iSearchforAdminFacility(serchText);
    }


    @And("^I enter \"([^\"]*)\" for Medicare ID$")
    public void iEnterForMedicareID(String MedicareID) throws Throwable {

        patientCreation.iEnterMedicareID(MedicareID);
    }

    @And("^I click on Submit Button$")
    public void iClickOnSubmitButton() throws Throwable {

        patientCreation.iClickOnNextButton();
    }


    @And("^I Select the first facility$")
    public void iSelectTheFirstFacility() throws Throwable {
        patientCreation.iclickOnFirstFacility();
    }

    @Then("^I should see \"([^\"]*)\" on next window$")
    public void iShouldSeeOnNextWindow(String text) throws Throwable {

        patientCreation.iVerifyNoPatientFound(text);

    }

    @When("^I click on \"([^\"]*)\" tab on patient page$")
    public void i_click_on_tab_on_patient_page(String patientTab) throws Throwable {
        patientCreation.iClickOnTabOnPatientPage(patientTab);
    }

    @Then("^I click on \"([^\"]*)\" button on medical record$")
    public void i_click_on_button_medical_record(String buttonName) throws Throwable {
        patientCreation.iClickOnButtonMedicalRecord(buttonName);
    }

    @Then("^I enter \"([^\"]*)\" in the \"([^\"]*)\" on the new medication page$")
    public void i_enter_on_the_new_medication_page(String textInput, String medicalField) throws Throwable {
        patientCreation.iEnterOnTheNewMedicationPage(medicalField, textInput);
    }

    @Then("^I press \"([^\"]*)\" button on the new medication page$")
    public void i_press_button_on_the_new_medication_page(String buttonName) throws Throwable {
        patientCreation.iPressButtonOnTheNewMedicationPage(buttonName);
    }

    @Then("^I click on \"([^\"]*)\" tab on patient activity page$")
    public void i_click_on_button_tab_on_patient_activity_page(String buttonName) throws Throwable {
        patientCreation.iClickOnVariousTabOnPatientActivity(buttonName);
    }

}
