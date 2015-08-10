package stepDefination;


import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

/**
 * Created by salam on 7/29/15.
 */

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = { "pretty", "html:target/html-report", "junit:target/junit-report/allcukes.xml" },
        features = { "src/test/Features/"},
        monochrome = true,
        tags = {}
)


public class TestRunner {




}
