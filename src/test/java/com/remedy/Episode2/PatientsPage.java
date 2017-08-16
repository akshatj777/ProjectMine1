package com.remedy.Episode2;

import com.remedy.baseClass.BaseClass;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import java.util.List;


/**
 * Created by ashish.ranjan on 24-11-2016.
 */
public class PatientsPage extends BaseClass {

	public PatientsPage(WebDriver driver) {
		super(driver);
	}

	public void iVerifyTabInFilterBarOnPatientsPage(String elementText) {
		verifyTextForElement(driver.findElement(By.xpath("//button//span[contains(text(),'" + elementText + "')]")),elementText);
	}

	public void iClickTabInFilterBarOnPatientsPage(String elementTextXpath) {
		clickElement(driver.findElement(By.xpath("//button//span[contains(text(),'" + elementTextXpath + "')]")));
	}

	public void iVerifyViewSectionOnPatientsPage(String elementText) {
		verifyTextForElement(driver.findElement(By.xpath("//span[text()='View:']")), elementText);
	}

	public void iVerifyViewAsActiveViewOnPatientsPage(By element) {
		verifyElementAttributeContainsValue(driver.findElement(element), "class", "active");
	}

	public void iVerifyToHaveViewOptionOnPatientsPage(By element, String viewOptions) {
		verifyElementAttributeContainsValue(driver.findElement(element), "ng-click", viewOptions);
	}

	public void iClickViewOnPatientsPage(String viewElement) {
		clickElement(driver.findElement(By.cssSelector(viewElement)));
	}

	public void iEnterInPatientSearchFieldOnPatientsPage(String patientName) {
		iFillInText(driver.findElement(By.xpath("//input[@name='last-name']")), patientName);
	}

	public void iVerifyPatientSearchedResultContainsTextOnPatientPage(String patientNameText) {
		verifyTextForElementFromListByXpath("//div[@class='card-header-content']/div/h3", patientNameText);
	}

	public void iVerifySeeAsPlaceholderForSearchOnPatientPage(String elementText) {
		verifyElementAttributeContainsValue(driver.findElement(By.cssSelector("i.valentino-icon-search ~ input")),"placeholder", elementText);
	}

	public void iVerifyElementPresentOnPatientPage(By byLocator) {
		isElementVisible(driver.findElement(byLocator));
	}

	public void iVerifyElementTextPresentOnPatientPage(By byLocator, String elementText) {
		verifyTextForElement(driver.findElement(byLocator), elementText);
	}

	public void iVerifyCountOFPatientCardsArePresentOnPatientsPage(int Count) {
		verifyElementCount(".row.cards-mode.isotope>div", Count);
	}

	public void iClickOnWorkistFilterOptionsOnPatientsPage(String worklistOption) {
		clickElement(driver.findElement(By.xpath("//button[span[span[contains(text(),'" + worklistOption + "')]]]")));
	}

	public void iVerifyWorklistSubBarOptionsPresentOnPatientsPage(String worklistSubbar) {
		isElementVisible(driver.findElement(By.xpath("//button[span[contains(text(),'" + worklistSubbar + "')]]")));
	}

	public void iClickOnFilterButtonPresentOnPatientPage() {
		delay();
		iWillWaitToSee(By.cssSelector(".filter-bar-search-left .btn-quaternary span"));
		clickElement(driver.findElement(By.cssSelector(".filter-bar-search-left .btn-quaternary span")));
	}

	public void iVerifyDateRangeIsSelectedAsDefaultFilterUnderFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//span[text()='Date Range']")));
	}

	public void iVerifyCareSettingIsSelectedAsDefaultFilterUnderFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//span[text()='Care Setting']")));
	}

	public void iVerifyInitiatorIsSelectedAsDefaultFilterUnderFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//span[text()='Initiator']")));
	}

	public void iClickOnFiltersButtonPresentOnFilterPage() {
		delay();
		iWillWaitToSee(By.cssSelector("div.row-controls>a"));
		clickElement(driver.findElement(By.cssSelector("div.row-controls>a")));
	}

	public void iVerifyVariousFilterIsPresentUnderListofFilterOptions(String filterOption) {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'" + filterOption + "')]")));
	}

	public void iVerifyPayerFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Payer')]")));
	}

	public void iVerifyQualityMetricFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Quality Metric')]")));
	}

	public void iVerifyReadmissionCountFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Readmission Count')]")));
	}

	public void iVerifyRiskAssessmentFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Risk Assessment')]")));
	}

	public void iVerifySSNFilterIsDisplayedUnderListOfFilterOptions() {
		iWillWaitToSee((By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'SSN')]")));
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'SSN')]")));
	}

	public void iVerifyTagFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Tags')]")));
	}

	public void iVerifyPatientNameIsPresentInThePatientCardHeaderOnPatientPage() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]/div/div[1]//h3")));
	}

	public void iVerifyDOBIsPresentInThePatientCardHeaderOnPatientPage() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]/div/div[1]//h5/span[1]")));
	}

	public void iVerifyAgeIsPresentInThePatientCardHeaderOnPatientPage() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]/div/div[1]//h5/span[2]")));
	}

	public void iVerifyGenderIsPresentInThePatientCardHeaderOnPatientPage() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]/div/div[1]//h5/span[3]")));
	}

	public void iVerifySSNIsPresentInThePatientCardHeaderOnPatientPage() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]/div/div[1]//h5/span[4]")));
	}

	public void iVerifyExpandButtonIsPresentInThePatientCardHeaderOnPatientPage1() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]/div/div[1]/div[3]/a")));
	}

	public void iVerifyRiskStatusIsPresentOnThePatientCardOnPatientPage() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]//div[contains(@class,'card-triangle')]")));
	}

	public void iVerifyCurrentLocationIsPresentOnThePatientCardOnPatientPage() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]//div[h5[text()='Current Location']]")));
	}

	public void iVerifyAnchorFacilityIsPresentOnThePatientCardOnPatientPage() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]//div[h5[text()='Anchor Facility']]")));
	}

	public void iVerifyTagsIsPresentOnThePatientCardOnPatientPage() {
		isElementVisible(driver.findElement(By.xpath(
				"//div[@class='row cards-mode isotope']/div[1]//div[@class='card-tags-selected']/h5[text()='Tags']")));
	}

	public void iVerifyQuickActionsIsPresentOnThePatientCardOnPatientPage() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]//div[button[contains(@ng-click,'quickAction')]]")));
	}

	public void iClickOnTheExpandButtonOnThePatientCardOnThePatientPage() {
		clickElement(driver.findElement(By.xpath("(//a[@class='btn btn-quaternary valentino-icon-expand pull-right'])[1]")));
	}

	public void iVerifyQuickActionButtonAddClinicalDocumentAndNewTaskIsPresentOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.className("buttons-dropdown-tab-group")));
	}

	public void iVerifyCurrentLocationIsPresentOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//label[text()='Current Location']")));
	}

	public void iVerifyAnchorFacilityIsPresentOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//label[text()='Anchor Facility']")));
	}

	public void iVerifyAccountStatusIsPresentOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//label[text()='Account Status']")));
	}

	public void iVerifyMRNsIsPresentOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//label[text()='MRNs']")));
	}

	public void iVerifyOnboardingStatusIsPresentOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//label[text()='Onboarding Status']")));
	}

	public void iClickOnOnboardingStatusPresentOnThePatientSummaryPage() {
		switchToFrameByNameOrId("iFrameEC2PatientRisks");
		clickElement(driver.findElement(By.cssSelector("#risk_button")));
	}

	public void iVerifyRecalculateIsPresentInTheOnboardingDropdownOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//a[@data-confirm-title='Calculate Risk Score']")));
	}

	public void iVerifyLowStatusIsPresentInTheOnboardingDropdownOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'LOW')]")));
	}

	public void iVerifyHighStatusIsPresentInTheOnboardingDropdownOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'HIGH')]")));
	}

	public void iVerifyNeedsOnboardingStatusIsPresentInTheOnboardingDropdownOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'NEEDS-ONBOARDING')]")));
	}

	public void iVerifyNotOnboardedStatusIsPresentInTheOnboardingDropdownOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'NOT-ONBOARDED')]")));
	}

	public void iVerifyEligibilityIsPresentOnThePatientSummaryPage() {
		switchToParentFrame();
		isElementVisible(driver.findElement(By.xpath("//label[text()='Eligibility']")));
	}

	public void iClickOnEligibilityPresentOnThePatientSummaryPage() {
		switchToFrameByNameOrId("iFrameEC2PatientEligibility");
		clickElement(driver.findElement(By.id("eligibility_button")));
	}

	public void iVerifyRunServiceIsPresentInTheEligibilityDropdownOnThePatientSummaryPage() {
		isElementVisible(
				driver.findElement(By.xpath("//div[@id='eligibility_service']//a[@class='eligibility_verification']")));
	}

	public void iVerifyReviewServiceResponseIsPresentInTheEligibilityDropdownOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//a[@class='review_service_response']")));
	}

	public void iVerifyResetPayerSectionIsPresentInTheEligibilityDropdownOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.id("resetPayerSection")));
	}

	public void iVerifyEligibleIsPresentInTheEligibilityDropdownOnThePatientSummaryPage() {
		isElementVisible(
				driver.findElement(By.xpath("//span[contains(@class,'label-success')][contains(text(),'Eligible')]")));
	}

	public void iVerifyNotEligibleIsPresentInTheEligibilityDropdownOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath(
				"//a[@class='set_eligibility_value set_eligibility_not_eligible']//span[contains(text(),'Not Eligible')]")));
	}

	public void iVerifyNotEligibleESRDIsPresentInTheEligibilityDropdownOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'Not Eligible ESRD')]")));
	}

	public void iVerifyErrorIsPresentInTheEligibilityDropdownOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'Error')]")));
	}

	public void iVerifyExpiredIsPresentInTheEligibilityDropdownOnThePatientSummaryPage() {
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'Expired')]")));
	}

	public void iVerifyTagsIsPresentOnThePatientSummaryPage() {
		switchToParentFrame();
		isElementVisible(driver.findElement(By.xpath("//label[text()='Tags']")));
	}

	public void iClickOnAdmitReasonFilterPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(1)")));
	}

	public void i_type_in_the_search_field_on_patients_page(String admitReason) {
		iFillInText(driver.findElement(By.cssSelector("[name='admit-reason']")), admitReason);
	}

	public void iVerifyTheTotalNumberOfPatientsPresentOnThePatientsPage() {
		iWillWaitToSee(By.cssSelector(".controls-bar.ng-scope>div>strong"));
	}

	public void iClickOnDoneButtonPresentOnTheFilterPage() {
		iWillWaitToSee(By.cssSelector("button[class='btn btn-primary'][ng-click='closeFilters()']"));
		clickElement(driver.findElement(By.cssSelector("button[class='btn btn-primary'][ng-click='closeFilters()']")));
	}

	public void iClickOnAnchorDischargeFacilityFilterPresentOnTheFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(2)")));
	}

	public void iClickOnAnchorDischargeFacilityDropdownToSelectTheFaciltyOnTheFilterPage() {
		clickElement(driver.findElement(By.cssSelector(".form-control.dropdown-look")));
	}

	public void iTypeInTheSearchFieldToSearchTheAnchorDischargeFacilty(String Facility) {
		iFillInText(driver.findElement(By.cssSelector("input[placeholder='Name or Group*']")), Facility);
	}

	public void iSelectStamfordHospitalCheckboxPresentInTheFilterPage() {
		clickElement(driver.findElement(By.cssSelector(
				"li.checkbox-item:nth-child(1)>div:nth-child(2)>label[for*='anchor-discharge-facility']")));
	}

	public void iClickOnAnchorFacilityFilterPresentInTheFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(3)")));
	}

	public void iClickOnAnchorFacilityDropdownToSelectTheFaciltyOnTheFilterPage() {
		clickElement(driver.findElement(By.cssSelector(".form-control.dropdown-look")));
	}

	public void iTypeInTheSearchFieldToSearchTheAnchorFacilty(String facility) {
		iFillInText(driver.findElement(By.cssSelector("input[placeholder='Name or Group*']")), facility);
	}

	public void iSelectStamfordHospitalCheckboxAsAnchorFacilityPresentInTheFilterPage() {
		clickElement(driver.findElement(By.cssSelector(
				"ul[class='light-tags ng-scope']~ul[class='checkbox-list list-unstyled ng-scope']>li>div:nth-child(2)")));
	}

	public void iClickOnHideSummaryButtonPresentOnThePatientSummaryPage() {
		clickElement(driver.findElement(By.cssSelector(".toggle-page-summary.ng-binding")));
	}

	public void iVerifyThatOnlyCardHeaderInformationIsDisplayedOnThePatientSummaryPage() {
		isElementPresentOnPage((By.cssSelector(".row.row-with-columns.ng-scope")));
	}

	public void iClickOnTheGearIconPresentOnThePatientOverviewPage() {
		switchToFrameByNameOrId("iFrameEC2PatientTransitions");
		clickElement(driver.findElement(By.xpath("//tr[@class='odd'][1]//div/a")));
	}

	public void iVerifyEditButtonIsPresentOnThePatientOverviewPage() {
		isElementVisible(driver.findElement(By.xpath("//tr[@class='odd'][1]//div/ul/li[1]/a")));
	}

	public void iVerifyDeleteButtonIsPresentOnThePatientOverviewPage() {
		isElementVisible(driver.findElement(By.xpath("//tr[@class='odd'][1]//div/ul/li[3]/a")));
	}

	public void iVerifyAssignButtonIsPresentOnThePatientOverviewPage() {
		isElementVisible(driver.findElement(By.xpath("//tr[@class='odd'][1]//div/ul/li[4]/a")));
	}

	public void iVerifyAttachNoteButtonIsPresentOnThePatientOverviewPage() {
		isElementVisible(driver.findElement(By.xpath("//tr[@class='odd'][1]//div/ul/li[5]/a")));
	}

	public void iVerifyStartCARLToolButtonIsPresentOnThePatientOverviewPage() {
		isElementVisible(driver.findElement(By.xpath("//tr[@class='odd'][1]//div/ul/li[6]/a")));
	}

	public void iClickOnEditOptionPresentUnderGearIconDropdownMenuPresentOnTheTransitionTable() {
		clickElement(driver.findElement(By.xpath("//tr[@class='odd'][1]//div/ul/li[1]/a")));
	}

	public void iVerifyTransitionInfoIsPresentUnderTransitionTabPresentOnThePatientOverviewPage() {
		isElementVisible(driver.findElement(By.xpath("//a[text()='Transition Info']")));
	}

	public void iVerifyDiagnosisAndDRGIsPresentUnderTransitionTabPresentOnThePatientOverviewPage() {
		isElementVisible(driver.findElement(By.xpath("//a[text()='Diagnosis and DRG']")));
	}

	public void iVerifyTreatmentInfoIsPresentUnderTransitionTabPresentOnThePatientOverviewPage() {
		isElementVisible(driver.findElement(By.xpath("//a[text()='Treatment Info']")));
	}

	public void iVerifyCommentIsPresentUnderTransitionTabPresentOnThePatientOverviewPage() {
		isElementVisible(driver.findElement(By.xpath("//a[text()='Comment']")));
	}

	public void iVerifyTCRNChecklistIsPresentUnderTransitionTabPresentOnThePatientOverviewPage() {
		isElementVisible(driver.findElement(By.xpath("//a[text()='TCRN Checklist']")));
	}

	public void iClickOnDiagnosisAndDRGTabPresentOnThePatientOverviewPage() {
		clickElement(driver.findElement(By.xpath("//a[text()='Diagnosis and DRG']")));
	}

	public void iVerifyICDIsPresentInTheDiagnosisAndDRGTab() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='icd-selection']")));
	}

	public void iVerifyPredictDRGIsPresentInTheDiagnosisAndDRGTab() {
		isElementVisible(driver.findElement(By.xpath("//h3[text()='Predict a DRG']")));
	}

	public void iVerifyAddANewDRGIsPresentInTheDiagnosisAndDRGTab() {
		isElementVisible(driver.findElement(By.xpath("//h3[text()='Add a New DRG']")));
	}

	public void iClickOnDRGTypeToAddANewDRGPresentOnThePatientOverviewPage() {
		clickElement(driver.findElement(By.id("bp_personbundle_bpadmissiontype_drgType")));
	}

	public void iSelectPossibleFromTheDRGTypeDropdownPresentOnThePatientOverviewPage() {
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_drgType", "Possible");
	}

	public void iClickOnDRGDropdownMenuPresentOnThePatientOverviewPage() {
		clickElement(driver.findElement(By.xpath("//label[text()='DRG']/preceding-sibling::a")));
	}

	public void iSearchDRGOnTheSearchBoxOnTheDRGPresentOnThePatientOverviewPage(int DRG) {
		iFillInText(
				driver.findElement(By
						.xpath("//label[text()='DRG']/following-sibling::input[@class='select2-input select2-focused']")),
				Integer.toString(DRG));
	}

	public void iSelectRespiratoryInfectionsInflationsFromTheDRGListPresentOnThePatientOverviewPage() {
		clickElement(driver.findElement(By.xpath("//div[@class='select2-result-label']")));
	}

	public void iSelectMajorJointReplaceOrReattachOfLowerExtreFromTheDRGListPresentOnThePatientOverviewPage() {
		clickElement(driver.findElement(By.xpath("//div[@class='select2-result-label']")));
	}

	public void iClickOnUpdateTransitionButtonPresentOnThePatientOverviewPage() {
		clickElement(driver.findElement(By.id("submitButton")));
	}

	public void iClickOnLastNamePresentOnTheFilterPage() {
		iWillWaitToSee(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Last Name')]"));
		clickElement(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Last Name')]")));
	}

	public void iClickOnExportButtonPresentOnThePatientPage() {
		clickElement(driver.findElement(By.xpath("//div[@class='export-link']/a")));
	}

	public void iClickOnSelectAllCheckboxPresentOnThePatientPage() {
		clickElement(driver.findElement(By.xpath("//label[@for='select-all']")));
	}

	public void iClickOnExportButtonPresentOnThePatientPagetoExportThePatientList() {
		clickElement(driver.findElement(By.xpath("//button[text()='Export']")));
	}

	public void iClickOnCarePlanFilterPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(4)")));
	}

	public void iClickOnCreatedRadioButtonPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("input[id='careplanhas']~label[for='careplanhas']")));
	}

	public void iClickOnInpatientCheckboxUnderCareSettingPresentOnTheFilterPage() {
		clickElement(driver.findElement(By.cssSelector("input[id='care-settingHHH-I']~label[for='care-settingHHH-I']")));
	}

	public void iClickOnCooperationMetricFilterPresentOnTheFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(6)")));
	}

	public void iClickOnAssignedCheckboxUnderCooperationMetricPresentOnTheFilterPage(String text) {
		clickElement(driver.findElement(By.xpath("//label[span[text()='" + text + "']]")));
	}

	public void iVerifyCooperationMetricFilterDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(6)")));
	}

	public void iClickOnCurrentFacilityFilterPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(7)")));
	}

	public void iClickOnCurrentFacilityDropdownPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector(".form-control.dropdown-look")));
	}

	public void iClickOnDailyReportFilterPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(8)")));
	}

	public void iClickOnInpatientEpisodesRadioButtonPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("input[id='daily-report0']~label[for='daily-report0']")));
	}

	public void iClickOnDateRangeDropdownPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.dropdown-calendar>a>div")));
	}

	public void iClickOnDaysresentPresentOnFilterPage(int days) {
		clickElement(driver.findElement(
				By.cssSelector("div.tab-content>div:nth-child(1)>quick-range-selection>div>div>a:nth-child(4)")));
	}

	public void iClickOnAddPatientButtonPresentOnThePatientsPage() {
		clickElement(driver.findElement(By.cssSelector("button.btn.btn-primary.pull-right")));
	}

	public void iEnterDetailsInTextFieldPresentOnAddPatientModal(String detailFileds, String patientDetails) {
		iFillInText(driver.findElement(By.cssSelector("#Patient_Details_" + detailFileds + "")), patientDetails);
	}

	public void iSwitchToAddPatientEmbeddedIframe() {
		switchToFrameByNameOrId("iFrameEC2PatientAdd");
	}

	public void iSelecteOptionFromDropdownListPresentOnTheAddPatientPage(String detailFileds, String patientDetails) {
		clickElement(driver.findElement(By.cssSelector("#Patient_Details_" + detailFileds + "")));
		selectDropdownVisibleElement("#Patient_Details_" + detailFileds + "", patientDetails);
	}

	public void iClickOnAdmittingFacilityPresentOnTheAddPatientPage() {
		clickElement(driver.findElement(By.cssSelector("a.select2-choice.select2-default")));
	}

	public void iSelectFromTheListOfAdmittingFacilityPresentOnTheAddPatientPage(String facility) {
		iFillInText(driver.findElement(By.cssSelector("div.select2-search>input.select2-input")), facility);
		longDelay();
		clickElement(driver.findElement(By.cssSelector("ul.select2-results>li>div#select2-result-label-3")));
	}

	public void iSelectFromTheAdmittingFacilityPresentOnTheAddPatientPage(String facility) {
		iFillInText(driver.findElement(By.cssSelector("div.select2-search>input.select2-input")), facility);
		longDelay();
		clickElement(driver.findElement(By.cssSelector("ul.select2-results>li>div#select2-result-label-2")));
	}

	public void iClickOnTheNextButtonPresentOnTheAddPatientPage() {
		clickElement(driver.findElement(By.cssSelector("button#submitButton")));
	}

	public void iClickOnCalenderButtonPresentOnTheAddPatientPage() {
		clickElement(driver.findElement(By.cssSelector("input#bp_personbundle_bpadmissiontype_admitDate")));
	}

	public void iSelectTodaysDateAsTheAdmissionDate() {
		JavascriptExecutor jsdate = ((JavascriptExecutor) driver);
		WebElement elementdate = driver.findElement(By.cssSelector("td.day.active"));
		jsdate.executeScript("arguments[0].click();", elementdate);
		
		JavascriptExecutor jshour = ((JavascriptExecutor) driver);
		WebElement elementhour = driver.findElement(By.cssSelector("span.hour.active"));
		jshour.executeScript("arguments[0].click();", elementhour);
		
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		WebElement element = driver.findElement(By.cssSelector("span.minute.active"));
		js.executeScript("arguments[0].click();", element);
	}

	public void iSelectInpatientFromAdmissionCareTypeDropdownPresentOnAddPatientPage(String careType) {
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitCareType", careType);
	}

	public void iClickOnAddTransitionButtonPresentOnTheAddPatientPage() {
		clickElement(driver.findElement(By.cssSelector("button#submitButton")));
	}

	public void iVerifyTextIsPresentOnTheAddPatientPage(String text) {
		isElementVisible(driver.findElement(By.xpath("//*[text()='" + text + "']")));
	}

	public void iVerifyAdmitDateIsPresentOnTheTransitionPage() {
		isElementVisible(driver.findElement(By.xpath("//td[@class='admit_date-column sorting_1']")));

	}

	public void iVerifyIsPresentOnTheTransitionPage(String text, String columnName) {
		isElementVisible(driver.findElement(By.xpath("//td[@class='" + columnName + "' and text()='" + text + "']")));
	}

	public void iEnterInTheSearchTextBoxPresentOnTheAddPatientPage(String firstname) {
		iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search Name']")), firstname);
	}

	public void iVerifyAndIsDisplayedOnThePatientCard(String firstname, String lastname) {
		isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'" + firstname + "')]")));
		// isElementVisible(driver.findElement(By.xpath("//span[contains(text(),'"// + lastname + "')]")));
	}

	public void iClickOnAttestationButtonPresentOnThePatientCard() {
		try{
		clickElement(driver.findElement(By.xpath("//*[@id='submitButtonAdd']")));
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		}

	public void iClickOnFilterTabPresentOnThePatientsPage(String filtertab) {
		clickElement(driver.findElement(By.cssSelector("#filterTab_" + filtertab + "")));
	}

	public void iClickOnThePatientNamePresentOnThePatientList() {
		clickElement(driver.findElement(By.cssSelector("div.ng-scope div.patient-list div.element-title")));
	}

	public void iClickOnNewTransitionButtonPresentOnThePatientOverviewPage() {
		clickElement(driver.findElement(By.cssSelector("a#btnNewTransition")));
	}

	public void iClickOnTheCalenderButtonPresentOnTheNewTranitionPage() {
		clickElement(driver.findElement(By.cssSelector(".btn.default.date-set")));
	}

	public void iSelectFromTheCareSettingDropdownPresentOnTheAddTransitionPage(String option) {
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitFacilityCategory", option);
	}

	public void iSelectFromAdmissionCareTypeDropdownPresentOnTheAddTransitionPage(String option) {
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitCareType", option);
	}

	public void iClickOnAdmittingFacilityPresentOnTheAddTransitionPage() {
		clickElement(driver.findElement(By.cssSelector("div[id*='bpadmissiontype_admitFacility']")));
	}

	public void iSelectFromTheListOfAdmittingFacilityPresentOnTheAddTransitionPage(String facility) {
		iFillInText(driver.findElement(By.xpath("//div[@id='select2-drop']/div[@class='select2-search']/label[@class='select2-offscreen']/following-sibling::input")),facility);
		longDelay();
		clickElement(driver.findElement(By.cssSelector("ul.select2-results>li>div#select2-result-label-2")));
	}

	public void iClickOnEditButtonPresentOnThePatientOverviewPage() {
		clickElement(driver.findElement(By.cssSelector("table#ui-transitions-table>tbody>tr>td>a")));
	}

	public void iShouldSeeButtonIsPresentOnTheEditEpisodeInitiatorModal(String button) {
		isElementVisible(driver.findElement(By.xpath("//button[text()='" + button + "']")));
	}

	public void iClickOnTheEpisodeInitiatorDropdownPresentOnTheEditEpisodeInitiatorModal() {
		clickElement(driver.findElement(By.cssSelector("select#episode_initiator_episodeInitiator")));
	}

	public void iShouldSeeOptionIsPresentOnTheEditEpisodeInitiatorModal(String option) {
		isElementVisible(driver.findElement(By.xpath(".//select[@id='episode_initiator_episodeInitiator']/option[text()='" + option + "']")));
	}

	public void iClickOnTheButtonPresentOnTheEditEpisodeInitiatorModal(String button) {
		clickElement(driver.findElement(By.xpath("//button[text()='" + button + "']")));
	}

	public void iVerifyAdmitReasonFilterIsDisplayedUnderListofFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Admit Reason')]")));
	}

	public void iVerifyAnchorDischargeFacilityFilterIsDisplayedUnderListofFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Anchor Discharge Facility')]")));
	}

	public void iVerifyAnchorFacilityFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Anchor Facility')]")));
	}

	public void iVerifyCarePlanFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Care Plan')]")));
	}

	public void iVerifyCareSettingFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Care Setting')]")));
	}

	public void iVerifyCooperationMetricFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Cooperation Metric')]")));
	}

	public void iVerifyCurrentFacilityFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Current Facility')]")));
	}

	public void iVerifyDailyReportFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Daily Report')]")));
	}

	public void iVerifyDateRangeFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Date Range')]")));
	}

	public void iVerifyDRGTypeFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'DRG Type')]")));
	}

	public void iVerifyEligibilityFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Eligibility')]")));
	}

	public void iVerifyEpisodeDRGFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Episode DRG')]")));
	}

	public void iVerifyEpisodeStatusFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Episode Status')]")));
	}

	public void iVerifyFirstNameFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'First Name')]")));
	}

	public void iVerifyGenderFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Gender')]")));
	}

	public void iVerifyInitiatorFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Initiator')]")));
	}

	public void iVerifyInpatientLocationFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Inpatient Location')]")));
	}

	public void iVerifyLastNameFilterIsDisplayedUnderListOfFilterOptions() {
		delay();
		iWillWaitToSee(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Last Name')]"));
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Last Name')]")));
	}

	public void iVerifyMedicareIDFilterIsDisplayedUnderListOfFilterOptions() {
		isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Medicare ID')]")));
	}

	public void iClickOnDRGTypeFilterPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(10)")));
	}

	public void iClickOnPossibleRadioButtonUnderDRGTypeFilter() {
		clickElement(driver.findElement(By.xpath("//label[@for='drg-typeP']/i")));
	}

	public void iClickOnEligibilityFilterPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(11)")));
	}

	public void iClickOnEligibileCheckboxUnderEligibleFilterOption() {
		clickElement(driver.findElement(By.xpath("//label[@for='eligibilityELIGIBLE']")));
	}

	public void iClickOnEpisodeDRGFilterPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(12)")));
	}

	public void iClickOnDrgTypeCheckboxUnderFilterOption() {
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		WebElement element = driver.findElement(By.xpath("//label[@for='episode-drg177']"));
		js.executeScript("arguments[0].click();", element);
		// clickElement(driver.findElement(By.xpath("//label[@for='episode-drg177']")));
	}

	public void iClickOnEpisodeStatusFilterPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(13)")));
	}

	public void iClickOnEpisodeStatusCheckboxUnderFilterOption() {
		clickElement(driver.findElement(By.xpath("//label[@for='episode-statusActive']")));
	}

	public void iClickOnFirstNameFilterPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(14)")));
	}

	public void iEnterUnderFirstNameFilter(String patient) {
		iFillInText(driver.findElement(By.cssSelector("div.filter-sections-hide-scrollbar.ng-scope > div > div  > div > div > div > div > input")),patient);
	}

	public void iClickOnGenderFilterPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(15)")));
	}

	public void iSelectTheGenderFromTheGenderFilterList() {
		clickElement(driver.findElement(By.xpath("//label[@for='genderM']/i")));
	}

	public void iSelectInitiatorFromFilterList(String initiator) {
		clickElement(driver.findElement(By.xpath("//label[span[text()='" + initiator + "']]")));
	}

	public void iClickOnInpatientLocationFilterPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(17)")));
	}

	public void iEnterUnderInpatientLocationFilter(String text) {
		iFillInText(driver.findElement(By.xpath("//div[@class='ng-scope']/input")), text);
	}

	public void iClickOnLastNameFilterPresentOnFilterPage() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(18)")));
	}

	public void iEnterUnderLastNameFilter(String patient) {
		iFillInText(driver.findElement(By.xpath("//input[@class='form-control ng-pristine ng-untouched ng-valid ng-empty']")),patient);
	}

	public void iClickOnMedicareidFilter() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(19)")));
	}

	public void iEnterUnderMedicareidFilter(String medicareid) {
		iFillInText(driver.findElement(By.xpath("//div[@class='ng-scope']/input")), medicareid);
	}

	public void iClickOnPayerFilter() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(20)")));
	}

	public void iEnterUnderPayerFilter(String payer) {
		iFillInText(driver.findElement(By.xpath("//div[@class='ng-scope']/input")), payer);
	}

	public void iClickOnQualityMetricFilter() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(21)")));
	}

	public void iClickOnCheckboxUnderQualityMetricFilter(String text) {
		clickElement(driver.findElement(By.xpath("//label[span[text()='" + text + "']]")));
	}

	public void iClickOnReadmissionCountFilter() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(22)")));
	}

	public void iEnterFromToUnderReadmissionFilter(String arg1, String arg2) {
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='0']")), arg1);
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='10']")), arg2);
	}

	public void iClickOnRiskAssessmentFilter() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(23)")));
	}

	public void iClickOnCheckboxUnderRiskAssessmentFilter(String text) {
		clickElement(driver.findElement(By.xpath("//label[span[text()='" + text + "']]")));
	}

	public void iClickOnSSNFilter() {
		clickElement(driver.findElement(By.cssSelector("div.filters-dropdown-content.filters-list > ul > li:nth-child(25)")));
	}

	public void iEnterUnderSSNFilter(String ssn) {
		iWillWaitToSee(By.xpath("//div[@class='ng-scope']/input"));
		iFillInText(driver.findElement(By.xpath("//div[@class='ng-scope']/input")), ssn);
	}

	public void iClickOnTagsFilter() {
		clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(25)")));
	}

	public void iClickOnCheckboxUnderTagsFilter(String text) {
		clickElement(driver.findElement(By.xpath("//label[span[text()='" + text + "']]")));
	}

	public void iVerifyAdmitSectionIsPresentOnThePatientCard() {
		isElementVisible(driver.findElement(By.xpath("(//div[@class='white one-line card-datum ng-scope'])[1]")));
	}

	public void iVerifyInpatientStatusIsPresentOnThePatientCard() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]/div/div[3]/div[2]/div[2]")));
	}

	public void iVerifyAdmissionReasonIsPresentOnThePatientCard() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]/div/div[3]/div[4]/div/div")));
	}

	public void iShouldSeeSearchBoxAppearingOnThePatientsPage() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='elastic-input-wrapper']")));
	}

	public void iEnterInIheSearchbox(String search) {
		iFillInText(driver.findElement(By.xpath("//input[@class='elastic-input ng-pristine ng-untouched ng-valid ng-empty']")),search);
	}

	public void iVerifyAgreeButtonIsAppearing(String text) {
		verifyTextForElementfromList(".btn.btn-lg.btn-secondary.border-radius-none.col-md-12.attestation-button>span",text);
	}

	public void iVerifyAgreeButtonIsNotPresent(String text) {
		verifyTextNotPresentForElementFromList(".btn.btn-lg.btn-secondary.border-radius-none.col-md-12.attestation-button>span", text);
	}

	public void iVerifyFollowingFiltersPresentOnPatientPage(String text) {
		verifyTextForElementFromListByXpath("//div[@class='filters-dropdown-content filters-list']/ul/li", text);
	}

	public boolean isAllCorrectPatientsReturnAfterPatientSearch(String fName, String lName) {
		List<WebElement> allNames = driver.findElements(By.cssSelector(".card-view-body .card-header .card-header-content h3"));
		boolean isPresent = false;
		for (int i = 0; i < allNames.size(); i++) {
			String allText = allNames.get(i).getText();
			String[] patientName = allText.split(",\n");

			if (patientName[0].equalsIgnoreCase(fName) || patientName[0].equalsIgnoreCase(lName)) {
				isPresent = true;
			} else if (patientName[1].equalsIgnoreCase(fName) || patientName[1].equalsIgnoreCase(lName)) {
				isPresent = true;
			} else {
				isPresent = false;
				break;
			}

		}

		return isPresent;
	}

	public void iVerifyFirstnameInTheSearchResult(String firstname) {
		verifyTextForElement(driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]/div/div[1]//h3/span[1]")),firstname);
	}

	public void iVerifyLastnameInTheSearchResult(String lastname) {
		verifyTextForElement(
				driver.findElement(By.xpath("//div[@class='row cards-mode isotope']/div[1]/div/div[1]//h3/span[2]")),lastname);
	}

	public void iShouldSeeEpisodeInitiatorAppearingUnderTransitionsPage() {
		isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[1]")));
	}

	public void iClickOnAgreeButtonOnAttestationPage() {
		isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[1]")));
	}

	public void iShouldVerifyIsAppearingUnderTransitionsPage() {
		isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[10]/div")));
	}

	public void IclickonAgreebuttonpresentontheAttestationpage() {
		clickElement(driver.findElement(By.cssSelector("#submitButtonAdd")));
	}

	public void iVerifySelectedFilterText(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".margin-left.ng-binding")), text);
	}

	public void iSeeSelectedFilterText(String text) {
		isElementVisible(driver.findElement(By.cssSelector(".margin-left.ng-binding")));
	}

	public void iClickOnAgreeAfterApplyingFilter(String button) {
		if (driver.findElements(By.xpath("(//div[@class='card-view-body'])[1]//a[span[text()='" + button + "']]")).isEmpty()) {
			return;
		} else {
			clickElement(driver.findElement(By.xpath("(//div[@class='card-view-body'])[1]//a[span[text()='" + button + "']]")));
		}
	}

	public void iClickOnWorklistOnEpisodeHomePage(String sworklist, String mworklist) {
		clickElement(driver.findElement(By.xpath("//button[span[contains(text(),'" + sworklist + "')]]")));
	}

	public void IclickontheCancelButtonontheNewTransitiononAddPatientpage() {

		clickElement(driver.findElement(By.xpath("//button[contains(text(),'Cancel')]")));
	}

	public void iShouldSeeFacilityAppearingUnderTransitionsPage() {
		isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[2]")));
	}

	public void iShouldSeeAdmitDateAppearingUnderTransitionsPage() {
		isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[3]")));
	}

	public void iShouldSeeAdmitReasonAppearingUnderTransitionsPage() {
		isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[4]")));
	}

	public void iShouldSeeAdmitTypeAppearingUnderTransitionsPage() {
		isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[5]")));
	}

	public void iShouldSeeDischargeDateAppearingUnderTransitionsPage() {
		isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[6]")));
	}

	public void iShouldSeeDischargeLocationAppearingUnderTransitionsPage() {
		isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[7]")));
	}

	public void iShouldSeePAPsAppearingUnderTransitionsPage() {
		isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[8]")));
	}

	public void iShouldSeeDRGsAppearingUnderTransitionsPage() {
		isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[9]")));
	}

	public void iClickOnEditPresentUnderActionsSymbol() {
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[10]/div")));
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[10]/div/ul/li[1]/a")));
	}

	public void iShouldSeeEditTranisitionOnTransitionsPage(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".modal-title")), text);
	}

	public void iClickOnActionsSymbol() {
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[10]/div")));
	}

	public void iClickOnDeleteoftransition() {
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[10]/div/ul/li[3]/a")));
	}

	public void iVerifyHideSummaryText(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".toggle-page-summary.ng-binding")), text);
	}

	public void iVerifyShowSummaryText(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".toggle-page-summary.ng-binding")), text);
	}

	public void iSeeFirstNameMinimizedMode() {
		isElementVisible(driver.findElement(By.cssSelector("h2.ng-scope>span:nth-child(1)")));
	}

	public void iSeeLastNameMinimizedMode() {
		isElementVisible(driver.findElement(By.cssSelector("h2.ng-scope>span:nth-child(2)")));
	}

	public void iSeeDateOfBirthMinimizedMode() {
		isElementVisible(driver.findElement(By.cssSelector(".card-header-subtext.ng-scope>span:nth-child(1)")));
	}

	public void iSeeAgeMinimizedMode() {
		isElementVisible(driver.findElement(By.cssSelector(".card-header-subtext.ng-scope>span:nth-child(2)")));
	}

	public void iSeeGenderMinimizedMode() {
		isElementVisible(driver.findElement(By.cssSelector(".card-header-subtext.ng-scope>span:nth-child(3)")));
	}

	public void iSeeSSNMinimizedMode() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='card-datum ng-scope']//span[label[text()='SSN']]")));
	}

	public void iSeeLanguageMinimizedMode() {
		isElementVisible(driver.findElement(By.cssSelector("em.ng-binding")));
	}

	public void iSeeRiskScoreMinimizedMode() {
		isElementVisible(driver.findElement(By.cssSelector(".ng-binding.ng-scope.risk-unknown-risk")));
	}

	public void iVerifyTextAfterSelectingFilterToExport(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".message-informative.icon-large>span")), text);
	}

	public void IclickontheImpatientTabonPatientpage() {
		clickElement(driver.findElement(By.cssSelector("button.btn.btn-indicator.ng-scope.active")));
	}

	public void iSeeAdmitReasonFilterOnPatientCard(String admitreason) {
		verifyTextForElement(driver.findElement(By.xpath("(//div[@class='card-view-body'])[1]//span[@ng-bind='::patient.admitReason.value']")),admitreason);
	}

	public void iSeeAdmitReasonFilterOnPatientSummaryPage(String admitreason) {
		verifyTextForElement(driver.findElement(By.xpath("//span[@ng-bind='::patient.admitReason.value']")),admitreason);
	}

	public void iVerifyAnchorFacilityFilterOnPatientSummary(String text, String facility) {
		verifyTextForElement(driver.findElement(By.xpath("//span[@ng-bind='patient." + text + ".value']")), facility);
	}

	public void IVerifyAnchorFaciltyOnPatientCard(String text, String facility) {
		verifyTextForElement(driver.findElement(By.xpath("(//div[@class='card-view-body'])[1]//span[@ng-bind='::patient." + facility + ".value']")),text);
	}

	public void IClickOnCarePlanOnPatientSummary(String careplan) {
		clickElement(driver.findElement(By.xpath("//button[@class='btn btn-indicator ng-scope'][normalize-space(.) = '" + careplan + "']")));
	}

	public void IClickOnPatientDetailsOnPatientSummary(String medicareid) {
		clickElement(driver.findElement(By.xpath("//button[@class='btn btn-indicator'][normalize-space(.) = '" + medicareid + "']")));
	}

	public void iVerifyCarePlanOnPatientSummary() {
		isElementVisible(driver.findElement(By.xpath("//div[@class='header clearfix']")));
	}

	public void iSwitchtoEc2PatientSummaryCarePlan(String frameXpath) {
		swithToFrame(frameXpath);
	}

	public void iSwitchtoEligibilityFrameOnPatuentSummaryPage(String frameXpath) {
		swithToFrame(frameXpath);
	}

	public void iVerifyInpatientForCareSeting(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[5]")), text);
	}

	public void iClickOnFormsUnderCarePlan() {
		clickElement(driver.findElement(By.cssSelector("a[href='#careFlowForms']")));
	}

	public void iVerifyassignedInFormsUnderCarePlan(String text) {
		verifyTextForElementfromList(".label.label-warning.ng-scope", text);
	}

	public void iVerifyFacilityColumnUnderTransitions(String facility) {
		verifyTextForElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[2]")),facility);
	}

	public void iVerifyDrgStatusInPatientSummary(String text) {
		verifyTextForElement(driver.findElement(By.xpath("(//span[@class='label label-success'][text()='" + text + "'])[1]")), text);
	}

	public void iVerifyEligibilityStatusOnPatientSummary(String eligible) {
		verifyTextForElement(driver.findElement(By.xpath("//a[@id='eligibility_button'][normalize-space(.) = '" + eligible + "']")),eligible);
	}

	public void iVerifyTextEpisodeDrgOnPatientSummaryPage(String text) {
		verifyTextForElement(driver.findElement(By.xpath("")), text);
	}

	public void iSearchWithDrgIdInEpisodeDrg(String drgid) {
		clickElement(driver.findElement(By.xpath("//input[@placeholder='Search Episode DRG']")));
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='Search Episode DRG']")), drgid);
	}

	public void iVerifyFirstNameOnPatientCardsOnPatientListPage(String firstname) {
		verifyTextForElementFromListByXpath("(//h3[@class='ng-scope']/span[2])", firstname);
	}

	public void iVerifyLastNameOnPatientCardsOnPatientListPage(String lastname) {
		verifyTextForElementFromListByXpath("(//h3[@class='ng-scope']/span[1])", lastname);
	}

	public void iVerifyFirstNameOnPatientSummaryPage(String fname) {
		verifyTextForElement(driver.findElement(By.cssSelector(".pull-left.ng-binding:nth-child(2)")), fname);
	}

	public void iVerifyLastNameOnPatientSummaryPage(String lname) {
		verifyTextForElement(driver.findElement(By.cssSelector(".pull-left.ng-binding:nth-child(1)")), lname);
	}

	public void iVerifyGenderOnPatientCards(String gender) {
		verifyTextForElementFromListByXpath("//span[normalize-space(.) = '" + gender + "']", gender);
	}

	public void iVerifyGenderOnPatientSumamry(String gender) {
		verifyTextForElement(driver.findElement(By.xpath("//span[@class='ng-binding ng-scope'][normalize-space(.) = '" + gender + "']")),gender);
	}

	public void iVerifyInitiatorOnPatientSummary(String initiator) {
		verifyTextForElement(driver.findElement(By.xpath("//span[@class='ng-binding'][text()='" + initiator + "']")),initiator);
	}

	public void iVerifyInitiatorOnPatientCard(String initiator) {
		verifyTextForElementFromListByXpath("//span[@ng-bind='::patient.episodeInitiator.value']", initiator);
	}

	public void iVerifyMemberIdOnPatientSummaryPage(String medicareid) {
		verifyTextForElement(driver.findElement(By.cssSelector("#BP_patientType_medicareId")), medicareid);
	}

	public void iVerifySsnOnPatientSummaryPage(String ssn) {
		verifyTextForElement(driver.findElement(By.xpath("//label[text()='SSN']/following-sibling::span")), ssn);
	}

	public void iVerifyReadmissionCountOnPatientCard(String count) {
		verifyTextForElement(driver.findElement(By.xpath("//span[@ng-bind='::patient.readmissionCounter.value']")),count);
	}

	public void iVerifyReadmissionTextOnPatientCard(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//span[@ng-bind='::patient.readmissionCounter.config.label']")), text);
	}

	public void iVerifyRiskStatusOnPatientSummary(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//span[text()='" + text + "']")), text);
	}

	public void iSitchtoPatientTagsIframe(String frameXpath) {
		swithToFrame(frameXpath);
	}

	public void iVerifyPatientTags(String tags) {
		verifyTextForElementfromList(".tag-label.ng-binding", tags);
	}

	public void IverifythepatientappearsonthePatientsPage(int count) {
		iFillInText(driver.findElement(By.cssSelector(".controls-bar.ng-scope>div>strong")), count + " " + "Patients");

	}

	public void IclickonthePatientDetailstabonthepatientsummarypage() {
		clickElement(driver.findElement(By.cssSelector("div.container.profile-info.ng-scope > div > div.filter-bars.ng-scope > tabbed-navbar > div > div.tabbed-navbar-left > div.tabbed-navbar-tabs > button.btn.btn-indicator.ng-scope.active > span")));

	}

	public void Iclickonthenotestabappearingundercareplanframeonpatientsummarypage() {
		clickElement(driver.findElement(By.cssSelector("#careFlowNotesTab > a")));
		
	}

	public void Iverifythenotescreatedintheepisode1shouldnotappearinthenotessectionincareplaninepisode2() {
			verifyTextForElement(driver.findElement(By.cssSelector("#notesTable > tbody > tr:nth-child(1) > td.sorting_1")),"Baseline");
		}
	}
    
