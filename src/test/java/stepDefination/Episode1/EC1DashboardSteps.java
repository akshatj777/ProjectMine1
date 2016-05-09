package stepDefination.Episode1;

import com.remedy.episode1.Ec1DashboardPage;
import com.remedy.resources.DriverScript;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;

/**
 * Created by salam on 5/6/16.
 */
public class EC1DashboardSteps extends DriverScript{

    Ec1DashboardPage ec1Dashboard = new Ec1DashboardPage(driver);



    @And("^I should see \"([^\"]*)\" on Ec1 dashboard page$")
    public void iShouldSeeOnEc(String text) throws Throwable {

        ec1Dashboard.iverifyPageHeader("Dashboard");

    }
}
