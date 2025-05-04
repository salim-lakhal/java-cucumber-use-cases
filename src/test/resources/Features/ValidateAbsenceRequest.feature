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
Feature: Validate Absence Request
    As a professor
    I want to validate a student's absence request

    @tag1
    Scenario: Absence request approved
        Given I am logged into the system
        And I have the admin role
        And a student has submitted a pending absence request
        When I approve the request
        Then the status of the request should be updated to "Validated"
        And the student should receive a validation confirmation by email

    @tag2
    Scenario: Absence request rejected
        Given I am logged into the system
        And I have the admin role
        And a student has submitted a pending absence request
        When I reject the request
        Then the status of the request should be updated to "Rejected"
        And the student should receive a rejection notification by email