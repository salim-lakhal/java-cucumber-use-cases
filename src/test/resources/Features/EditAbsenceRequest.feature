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
Feature: Edit Absence Request
    As a student
    I want to modify an absence request before it is validated

    @tag1
    Scenario: Modify a pending request
        Given I am logged into the system
        And my absence request is still pending
        When I update the reason for my absence
        And I submit the changes
        Then the updated reason should be recorded
        And I should receive a confirmation of the modification

    @tag2
    Scenario: Modify a validated request fails
        Given I am logged into the system
        And my absence request has already been validated
        When I attempt to modify it
        Then the system should prevent the modification
        And I should see an error message indicating it's too late to edit