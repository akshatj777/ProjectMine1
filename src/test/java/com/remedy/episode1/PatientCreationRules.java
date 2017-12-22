package com.remedy.episode1;


import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import com.remedy.baseClass.BaseClass;

public class PatientCreationRules extends BaseClass{
	
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
		iFillInText(driver.findElement(By.cssSelector("#new_bppatientcreationrules_name")), text);
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
    	verifyTextForElement(driver.findElement(By.cssSelector("#adminContentContainer>header>h1")),text);
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
}
