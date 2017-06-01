package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class WorklistNeedReview extends BaseClass{

	public WorklistNeedReview(WebDriver driver) {
        super(driver);
	}

	public void IclickontheNeedsReviewtabonthepatientCardPage() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Needs Review')]")));
		
	}

}
