package cucumberTests;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
    features = "src/test/resources/Features",  //folder name
    glue ="stepDefinition" //package name for step def
    )

public class Cucumber_request_absence {

}