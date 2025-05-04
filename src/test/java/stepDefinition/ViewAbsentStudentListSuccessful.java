package stepDefinition;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import cucumberTests.ViewAbsentStudentListClass;

import java.util.HashMap;

import static org.junit.Assert.assertEquals;

public class ViewAbsentStudentListSuccessful {

    private HashMap<String, Boolean> students = new HashMap<>();
    private String role = "professor";
    private String course = "course";
    private Boolean logged = true;
    private ViewAbsentStudentListClass test;

    private StringBuilder actualOutput = new StringBuilder();

    public ViewAbsentStudentListSuccessful() {
        students.put("student1", true);   // absent
        students.put("student2", false);  // present
        students.put("student3", true);   // absent
        students.put("student4", false);  // present

        test = new ViewAbsentStudentListClass(students, role, course, logged);
    }

    @Given("I am logged into the system")
    public void i_am_logged_into_the_system() {
        test.setLogged(logged);
    }

    @Given("I have the professor role {string}")
    public void i_have_the_professor_role(String role) {
        this.role = role;
        test.setRole(role);
    }

    @Given("It is my course {string}")
    public void it_is_my_course(String course) {
        this.course = course;
        test.setCourse(course);
    }

    @When("I press the list button")
    public void i_press_the_list_button() {
        // Could trigger behavior in the tested class — for now, data is already set.
    }

    @Then("The List of all the students should appear:")
    public void the_list_of_all_the_students_should_appear(String expectedString) {
        StringBuilder actualString = new StringBuilder();
        for (String student : test.getStudents().keySet()) {
            actualString.append(student).append(" | ");
        }
        assertEquals(expectedString.trim(), actualString.toString().trim());
    }

    @Then("I should have the students that are absent with a special mention:")
    public void i_should_have_the_students_that_are_absent_with_a_special_mention(String expectedString) {
        StringBuilder actualString = new StringBuilder();
        for (String student : test.getStudents().keySet()) {
            if (test.getStudents().get(student)) {
                actualString.append(student).append(" is absent. ");
            } else {
                actualString.append(student).append(" is present. ");
            }
        }
        assertEquals(expectedString.trim(), actualString.toString().trim());
    }
}
