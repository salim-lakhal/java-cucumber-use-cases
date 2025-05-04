package stepDefinition;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

public class RemoveCoursewithValidatedAbsencefromCalendarSteps {

    @Given("I am logged into the system")
    public void iAmLoggedIntoTheSystem() {
        // Login to the system
        throw new io.cucumber.java.PendingException();
    }

    @Given("my absence for {string} has been validated")
    public void myAbsenceForCourseHasBeenValidated(String courseName) {
        // Check if absence for course is validated
        throw new io.cucumber.java.PendingException();
    }

    @Given("the course still appears in my personal calendar")
    public void theCourseStillAppearsInMyPersonalCalendar() {
        // Check that the course is still in the calendar
        throw new io.cucumber.java.PendingException();
    }

    @When("I choose to remove {string} from my calendar")
    public void iChooseToRemoveCourseFromMyCalendar(String courseName) {
        // Remove the course from the calendar
        throw new io.cucumber.java.PendingException();
    }

    @Then("the course should be removed from my calendar view")
    public void theCourseShouldBeRemovedFromMyCalendarView() {
        // Check that the course was removed from the calendar view
        throw new io.cucumber.java.PendingException();
    }

    @Then("I should see a confirmation that the removal was successful")
    public void iShouldSeeAConfirmationThatTheRemovalWasSuccessful() {
        // Check for removal confirmation message
        throw new io.cucumber.java.PendingException();
    }
}