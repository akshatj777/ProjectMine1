package com.remedy.episode1;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.RandomStringUtils;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.remedy.baseClass.BaseClass;

public class PatientCreationRules extends BaseClass {

	public static String Key_CreationName;
	public static String Facility_Key;

    public PatientCreationRules(WebDriver driver) {
        super(driver);
    }
    
    public void iClickOnNewButtonOnPatientRulesPage(){
    	clickElement(driver.findElement(By.cssSelector("a.btn.btn-primary")));
    }
    
    public void iWaitUntillISeeElement(String text){
    	iWillWaitToSee(By.xpath(".//*[@id='adminContentContainer']//h1[text()='"+text+"']"));
    }
    
    public void iEnterNameInNewPatientCreationRule(String text){
    	Key_CreationName = text+RandomStringUtils.randomAlphabetic(5);
    	iFillInText(driver.findElement(By.cssSelector("#new_bppatientcreationrules_name")), Key_CreationName);
    }
    
    public void iFillInFieldWithOnPatientRuleCreationPage(String text){
    	iFillInText(driver.findElement(By.cssSelector("#new_bppatientcreationrules_conditions_0_field")), text);
    }
    
    public void iFillInValueWithOnPatientRuleCreationPage(String text){
    	iFillInText(driver.findElement(By.cssSelector("#new_bppatientcreationrules_conditions_0_value")), text);
    }
    
    public void iFillInPriorityWithOnPatientRuleCreationPage(String text){
    	iFillInText(driver.findElement(By.xpath(".//*[@id='new_bppatientcreationrules_priority']")), text);
    }
    
    public void iClickOnSaveButtonOnPatientRuleCreationPage(String text){
    	clickElement(driver.findElement(By.cssSelector(".btn.btn-success")));
    }
    
    public void iWillWaitToSeeNewlyCreatedRule(String text){
    	text=PatientCreationRules.Key_CreationName;
    	verifyTextForElement(driver.findElement(By.cssSelector("#adminContentContainer>header>h1")),"You're editing the object"+ " " + "\"" + text + "\"");
    }
    
    public void iVerifyLabelTextOnNewCreationPage(String text,String page){
    	verifyTextForElementfromList(".col-md-3.control-label",text);
    }
    
    public void iSelectAdmiTFacilityOnFreeTextMappingPage(String text){
    	clickElement(driver.findElement(By.cssSelector("#s2id_new_bpfacilityfreetext_sendingFacility .select2-choice.select2-default")));
    	iFillInText(driver.findElement(By.cssSelector("#s2id_autogen1_search")), text);
    	clickElement(driver.findElement(By.xpath("(//span[text()='"+text+"'])[2]")));
    }
    
    public void iSelectFrom(String select,String text){
    	clickElement(driver.findElement(By.cssSelector("#"+text+"")));
    	selectElementByDesc("#"+text+">option",select);
    }
    
    public void iFillTextWith(String selector,String text){
    	iFillInText(driver.findElement(By.cssSelector("#"+selector+"")), text);
    }
    
    public void iSelectMappedDischargeFacility(String text){
    	clickElement(driver.findElement(By.cssSelector("#s2id_new_bpfacilityfreetext_mappedDischargedFacility .select2-choice.select2-default")));
    	iFillInText(driver.findElement(By.cssSelector("#s2id_autogen2_search")), text);
    	clickElement(driver.findElement(By.xpath("(//span[text()='"+text+"'])[1]")));
    }
    
    public void iFillInTextOnRegisterAUserPage(String locator,String text){
    	iFillInText(driver.findElement(By.cssSelector("#new_bppatientnavigator_"+locator+"")), text);
    }
    
    public void iFillInUserEmailOnRegisterUserPage(String text){
    	 String random_UserEmail=text+"+"+(RandomStringUtils.randomAlphabetic(5))+"@Example.com";
    	 System.out.println(random_UserEmail);
    	iFillInText(driver.findElement(By.cssSelector("#new_bppatientnavigator_user_email")), random_UserEmail);
    }
    
    public void iFillInPasswordOnRegisterUserPage(String text){
    	iFillInText(driver.findElement(By.cssSelector("#new_bppatientnavigator_user_plain_password_password")), text);
    }
    
    public void iFillInConfirmPasswordOnRegisterUserPage(String text){
    	iFillInText(driver.findElement(By.cssSelector("#new_bppatientnavigator_user_plain_password_confirm")), text);
    }
    
    public void iFillFieldsOnRegisterClinicianPage(String locator,String text){
    	if(text.contains("random")){
    		String random_UserEmail=text+"+"+(RandomStringUtils.randomAlphabetic(5))+"@Example.com";
    		iFillInText(driver.findElement(By.cssSelector("#clinician_admin_type_"+locator+"")), random_UserEmail);
    	}
    	else{
    		iFillInText(driver.findElement(By.cssSelector("#clinician_admin_type_"+locator+"")), text);
    	}
    }
    
    public void iFillFieldsOnFacilityCreationPage(String locator,String text){
    	if(text.contains("randomKey")){
    		Facility_Key = text+RandomStringUtils.randomAlphabetic(5);
    		iFillInText(driver.findElement(By.cssSelector("#new_bpfacility_"+locator+"")), Facility_Key);
    	}
    	else{
    		iFillInText(driver.findElement(By.cssSelector("#new_bpfacility_"+locator+"")), text);
    	}
    }
    
    public void iFillFieldsOnNewExclusionsListsPage(String locator,String text){
    	iFillInText(driver.findElement(By.cssSelector("#new_bpexclusionlist_"+locator+"")), text);
    }
    
   
    
    public void iClickOnSaveButtonOnNewEpisodePage(){
    	clickElement(driver.findElement(By.cssSelector("button[name=save]")));
    }
    
    public void iVerifyRouteAClList(String text){
    	isElementVisible(driver.findElement(By.cssSelector("#form-list-EC"+text+"")));
    }
    
    public void iVerifyAlertTemplateList(String text){
    	isElementVisible(driver.findElement(By.cssSelector("#table-list-BP"+text+"Category")));
    }
    
    public void iVerifyPatientTagsList(String text){
    	isElementVisible(driver.findElement(By.cssSelector("#table-list-BP"+text+"")));
    }
    
    public void iVerifyAddNewCarePlanButton(String text){
    	isElementVisible(driver.findElement(By.xpath("//a[text()='"+text+"']")));
    }
    
    public void iClickOnButtonOnCarePlanButton(String text){
    	iWillWaitToSee((By.xpath(".//*[@id='adminContentContainer']/div/div/div[2]/div[2]/a")));
    	clickElement(driver.findElement(By.xpath(".//*[@id='adminContentContainer']/div/div/div[2]/div[2]/a")));
    }
    
    public void iWaitUntillISeeCarePlanFormWindow(String text){
    	iWillWaitToSee(By.xpath("//h4[text()='"+text+"']"));
    }
    
    public void iFillNameUnderCarePlanForm(String locator,String text){
    	iFillInText(driver.findElement(By.cssSelector("#"+locator+"")), text);
    }
    
    public void iFillUnderCarePlanForm(String locator,String text){
    	iFillInText(driver.findElement(By.cssSelector("#goal_"+locator+"")), text);
    }
    
    public void iClickOnSubmitOnCarePlanForm(){
    	longDelay();
    	clickElement(driver.findElement(By.cssSelector("#adminCarePlanForm .btn-primary")));
    }
    
    public void IwaitToSeeThePopUp(String text){
    	delay();
    	System.out.println(text);
    	iWillWaitToSee(By.xpath("//p[contains(text(),'"+text+"')]"));
    	isElementVisible(driver.findElement(By.xpath("//p[contains(text(),'"+text+"')]")));
    }
    
    public void iEnterTextInFacilityFilterFields(String text,String locator){
    	delay();
    	iFillInText(driver.findElement(By.cssSelector("#filters_bpfacility_"+locator+"")), Facility_Key);
    	delay();
    }
    
    public void iClickOnFilterOpationOnFacilities(){
    	clickElement(driver.findElement(By.xpath("//button[@class='btn btn-sm btn-primary'][@type='submit']")));
    }
    
    public void iWaitToSeeListOfFacilities(){
    	iWillWaitToSee(By.cssSelector(".list_trow"));
    	longDelay();
    }
    
    public void iClickOnDRGOnFaciltiesPage(String text){
    	longDelay();
    	clickElement(driver.findElement(By.xpath("//a[text()='"+text+"']")));
    }
    
    public void iWaitUntillISeeOptionOnDRGListUnderFacilities(String text){
    	iWillWaitToSee(By.xpath("//a[text()='"+text+"']"));
    }
    
    public void iSelectAllCheckboxOptionOnDRGListUnderFacilities(){
    	longDelay();
    	iWillWaitToSee(By.xpath("//*[@id='uniform-selectAllCheckbox']"));
    	clickElement(driver.findElement(By.xpath("//*[@id='uniform-selectAllCheckbox']")));
    	
    	//clickElement(driver.findElement(By.xpath("//thead/tr//input[@name='selectAll']")));
    	
    }
    
    public void iClickOnAddNewDRGOptionDRGListPage(String text){
    	clickElement(driver.findElement(By.xpath("//*[contains(text(),'"+text+"')]")));
    }
    
    public void iWaitToSeeTheDRGPopup(){
    	iWillWaitToSee(By.xpath("//h2[text()='Add DRG to testCreateNewFacilityName']"));
    }
    
    public void iClickOnMatchedResultInDRGLsit(){
    	clickElement(driver.findElement(By.cssSelector(".select2-match")));
    }
    
    public void iClickOnAddButtonOnDRGPopUp(){
    	clickElement(driver.findElement(By.cssSelector("#submitButton")));
    	waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector(".loading-message.loading-message-boxed>span"))));
    	delay();
    }
    
    public void iVerifyDRGListInFacility(String text){
    	longDelay();
    	verifyTextForElementfromList(".td_string.td_drg_id",text);
    }
    
    public void iVerifyTabHighlightedOnLeftNavigation(String text){
    	isElementVisible(driver.findElement(By.cssSelector(".current a[href*='/secure/admin/"+text+"/']")));
    }
    
    public void IFillFilterFieldOnUserPage(String locator,String text){
    	iFillInText(driver.findElement(By.cssSelector("#filters_bppatientnavigator_"+locator+"")), text);
    }
    
    public void iClickOnFilterOptionOnUsersListAfterEnteringData(){
    	clickElement(driver.findElement(By.cssSelector(".form-group .btn.btn-sm.btn-primary")));
    }
    
    public void iWaitUntillUserListAppears(){
    	iWillWaitToSee(By.cssSelector("tr.list_trow"));
    }
    
    public void iClickONResetFieldOnFilters(){
    	clickElement(driver.findElement(By.cssSelector(".btn.btn-sm.btn-default")));
    }
    
    public void iVerifyPatientsTabHighlightedOnLeftNavigation(){
    	isElementVisible(driver.findElement(By.cssSelector(".active a#patientsListOpenClose")));
    }
    
    public void iClickOnHelpOnTheEpisodeConnectPage(){
    	clickElement(driver.findElement(By.cssSelector("#navbar-dropdown-menu-help")));
    }
    
    public void iVerifyHelpPageURL(String url){
    	Assert.assertEquals(getTheCurrentUrl(),url);
    }
    
    public void iClickOnMyProfileEpisodeConnectPage(){
    	clickElement(driver.findElement(By.cssSelector("#navbar-dropdown-menu-myprofile")));
    }
    
    public void iWaitUntillMyProfileAppears(String text){
    	iWillWaitToSee(By.xpath("//span[text()='"+text+"']"));
    }
    
    public void iFillNamesOnMyProfilePage(String locator,String text){
    	iFillInText(driver.findElement(By.cssSelector("#patient_navigator_type_"+locator+"")), text);
    }
    
    public void iClickOnSaveChangesButtonOnMyProfile(){
    	clickElement(driver.findElement(By.cssSelector(".btn.blue.btn-primary")));
    }
    
    public void iVerifyValidationMessageOnMyProfilePage(String text){
    	verifyTextForElementfromList(".help-block.help-block-error",text);
    }
    
    public void iSearchAndSelectDrgOnCarePlanForm(String text){
    	iWillWaitToSee(By.cssSelector(".select2-search-field>input"));
    	driver.findElement(By.cssSelector(".select2-search-field>input")).sendKeys(text);
    	iWillWaitToSee(By.xpath("//span[text()='"+text+"']"));
    	clickElement(driver.findElement(By.xpath("//span[text()='"+text+"']")));
    }


   public void iFillFieldsOnNewEpisodesPage(String locator, String text) {
		if (text.contains("randomDrg")) {
			String textRandom = RandomStringUtils.randomNumeric(6);
			iFillInText(driver.findElement(By.cssSelector("#new_bpdrg_" + locator + "")), textRandom);
		} else {
			iFillInText(driver.findElement(By.cssSelector("#new_bpdrg_" + locator + "")), text);
		}
	}

   public void iWillWaitToSeeNewlyClinician(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector("#adminContentContainer>header>h1")),"You're editing Clinician :" + " " + "\"" + text + "\"");
	}

	public void iWillWaitToSeeFacilityFreeText(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector("#adminContentContainer>header>h1")),"You're editing a Facility Free Text Mapping entry for" + " " + "\"" + text + "\"");
	}

	public void iFillTextWithDRG(String text) {
		iWillWaitToSee(By.xpath("//*[@id='s2id_add_drg_form_drgs']/ul/li/input"));
		driver.findElement(By.xpath("//*[@id='s2id_add_drg_form_drgs']/ul/li/input")).sendKeys(text);
	}

	public void iVerifyDRGListNotInFacility(String text) {
		new WebDriverWait(driver, 05).until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//td[contains(text(),'" + text + "')]")));
	}

	public void delete_drg(String drg) {
		driver.manage().timeouts().pageLoadTimeout(600, TimeUnit.SECONDS);
		int c=getElementCount("#drgs>tbody>tr");
	    List<String> lists=getTextForElementfromList("td.td_drg_id");
		int duplicate_count=Collections.frequency(lists, drg);
	    if(duplicate_count==0){
			  	return;
			}else{
				while(duplicate_count!=0){
					iWillWaitToSee(By.xpath("//*[@id='drgs']/tbody/tr/td[2][text()='"+drg+"']/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/a[1]"));
				    delay();
					clickElement(driver.findElement(By.xpath("//*[@id='drgs']/tbody/tr/td[2][text()='"+drg+"']/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/a[1]")));
					iWillWaitToSee(By.xpath("//h4[text()='Remove DRG']"));
					clickElement(driver.findElement(By.xpath("//button[text()='OK']")));
					duplicate_count=duplicate_count-1;
					longDelay();
				}}
	 }

	public void ienterinthefacilityKeytextbox(String text) {
		delay();
		iWillWaitToSee(By.xpath("//*[@id='filters_bpfacility_facilityKey']"));
		iFillInText(driver.findElement(By.xpath("//*[@id='filters_bpfacility_facilityKey']")),text);
	}

	public void ifillstartdate(String logic, int days) {
		if(logic.equals("minus month") || logic.equals("plus month")){
			String date=currentdatefrommonth(days,"MM/dd/yyyy");
	        delay();
	        setAttributevalue(driver.findElement(By.xpath("//*[@id='add_drg_form_period_startedAt']")),"value",date);;
		}
		String date=currentdate(days,"MM/dd/yyyy");
        delay();
	    setAttributevalue(driver.findElement(By.xpath("//*[@id='add_drg_form_period_startedAt']")),"value",date);
	}

	public void ifillenddate(String logic, int days) {
		if(logic.equals("minus month") || logic.equals("plus month")){
			String date=currentdatefrommonth(days,"MM/dd/yyyy");
	        delay();
	        setAttributevalue(driver.findElement(By.xpath("//*[@id='add_drg_form_period_endedAt']")),"value",date);
		}
		String date=currentdate(days,"MM/dd/yyyy");
        delay();
	    setAttributevalue(driver.findElement(By.xpath("//*[@id='add_drg_form_period_endedAt']")),"value",date);
	}

	public void iselectepisodelength(String value) {
		selectDropdownVisibleElement("#add_drg_form_period_episodeLength",value);
	}

	public void iselectmodel(String model) {
		selectDropdownVisibleElement("#add_drg_form_period_model",model);
	}

	public void iselectpayer(String payer) {
		selectDropdownVisibleElement("#add_drg_form_period_payer",payer);
	}

	public void textonAdddrgpopup(String text, String hospital) {
		longDelay();
		String Newtext=text+hospital;
		iWillWaitToSee(By.xpath("//h2[text()='"+Newtext+"']"));
	}

	public void clickontheeditfacility() {
		longDelay();
		iWillWaitToSee(By.xpath("//a[@data-title='Edit']"));
		new Actions(driver).moveToElement(driver.findElement(By.xpath("//a[@data-title='Edit']"))).build().perform();
		clickElement(driver.findElement(By.xpath("//a[@data-title='Edit']")));
		new WebDriverWait(driver,10).until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//h1[text()='Facilities']")));
	}

	public void waittoseetheeditfacilitytext(String object,String hospital) {
		longDelay();
		iWillWaitToSee(By.cssSelector("#adminContentContainer>header>h1"));
		String text=object+" "+"\"" + hospital + "\"";
		verifyTextForElement(driver.findElement(By.cssSelector("#adminContentContainer>header>h1")),text);
	}

	public void checkinepisodeinitiatoroneditfacility() {
            longDelay();  		
		try{
			driver.findElement(By.xpath("//*[@id='uniform-edit_bpfacility_episodeInitiator']/span[not(contains(@class,'checked'))]"));
		    longDelay();
			clickElement(driver.findElement(By.xpath("//*[@id='uniform-edit_bpfacility_episodeInitiator']")));
		}catch(Exception e){
			driver.findElement(By.xpath("//*[@id='uniform-edit_bpfacility_episodeInitiator']/span[contains(@class,'checked')]"));
		}
		
	}

	public void checkinParticipatingoneditfacility() {
		try{
			longDelay();
			driver.findElement(By.xpath("//*[@id='uniform-edit_bpfacility_participating']/span[not(contains(@class,'checked'))]"));
            longDelay();
			clickElement(driver.findElement(By.xpath("//*[@id='uniform-edit_bpfacility_participating']")));
		}catch(Exception e){
			driver.findElement(By.xpath("//*[@id='uniform-edit_bpfacility_participating']/span[contains(@class,'checked')]"));
		}
	}

	public void selectParticipatingoneditfacility(String facility) {
		  List<String> lists=getTextForElementfromList("#edit_bpfacility_participatingFacilities_selected>li>a");
			 if(lists.contains(facility.trim())){
			   return;
			  }else{
			         longDelay();
			   clickElement(driver.findElement(By.xpath("//a[contains(text(),'"+facility+"')]")));
			   clickElement(driver.findElement(By.cssSelector("button.btn.btn-large.select>i")));
			  }}
	

	public void Isavetheeditedfacility() {
		iWillWaitToSee(By.xpath("//button[@name='save']"));
		clickElement(driver.findElement(By.xpath("//button[@name='save']")));
	}

	public void add_drg(String drg) {
		clickElement(driver.findElement(By.xpath("//*[@id='drgs']/tbody/tr/td[2][text()='"+drg+"']/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/following-sibling::td[1]/a[2]")));
		iWillWaitToSee(By.xpath("//h2[contains(text(),'Add New BPCI Period')]"));
		
	}
	
	public void ifillperiodstartdate(String logic, int days) {
		if(logic.equals("minus month") || logic.equals("plus month")){
			String date=currentdatefrommonth(days,"MM/dd/yyyy");
	        delay();
		    setAttributevalue(driver.findElement(By.xpath("//*[@id='add_period_from_type_startedAt']")),"value",date);
		}
		String date=currentdate(days,"MM/dd/yyyy");
        delay();
	    setAttributevalue(driver.findElement(By.xpath("//*[@id='add_period_from_type_startedAt']")),"value",date);
		
	}

	public void ifillperiodenddate(String logic, int days) {
		if(logic.equals("minus month") || logic.equals("plus month")){
			String date=currentdatefrommonth(days,"MM/dd/yyyy");
	        delay();
	        setAttributevalue(driver.findElement(By.xpath("//*[@id='add_period_from_type_endedAt']")),"value",date);
		}
		String date=currentdate(days,"MM/dd/yyyy");
        delay();
	    setAttributevalue(driver.findElement(By.xpath("//*[@id='add_period_from_type_endedAt']")),"value",date);
	}

	public void iselectperiodepisodelength(String value) {
		selectDropdownVisibleElement("#add_period_from_type_episodeLength",value);
	}

	public void iselectperiodmodel(String model) {
		selectDropdownVisibleElement("#add_period_from_type_model",model);
	}

	public void iselectperiodpayer(String payer) {
		selectDropdownVisibleElement("#add_period_from_type_payer",payer);
	}

	public void iFillgroupOnFacilityCreationPage(String text) {
		iFillInText(driver.findElement(By.cssSelector("#filters_bpfacility_group")), text);
	}

	public void iFillNameOnFacilityCreationPage(String text) {
		iFillInText(driver.findElement(By.cssSelector("#filters_bpfacility_name")), text);
	}
}
