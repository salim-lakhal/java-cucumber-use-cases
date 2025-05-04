#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Remove Course with Validated Absence from Calendar
    As a student
    I want to hide a course from my calendar once my absence has been validated
    So that my calendar reflects only the courses I am expected to attend

    @tag1
    Scenario: Remove validated absence entry from calendar
        Given I am logged into the system
        And my absence for "Math 101" has been validated
        And the course still appears in my personal calendar
        When I choose to remove "Math 101" from my calendar
        Then the course should be removed from my calendar view
        And I should see a confirmation that the removal was successful