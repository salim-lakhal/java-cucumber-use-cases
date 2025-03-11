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
Feature: Provide Reason
    I want to provide a reason for my absence

    @tag1
    Scenario: Provide Reason Successful
        Given I am logged into the system
        And I have not exceeded my absence quota
        And the course for which I am requesting an absence exists in the system
        And I am submitting the request within the allowed time frame
        When I provide a valid reason for my absence
        And I submit the reason
        Then the reason should be successfully recorded
        And I should receive a confirmation notification by email
        And my absence request should be marked as "Pending Validation"

    @tag2
    Scenario: Provide Reason Fails Due to Invalid Reason
        Given I am logged into the system
        And I have not exceeded my absence quota
        And the course for which I am requesting an absence exists in the system
        And I am submitting the request within the allowed time frame
        When I provide an invalid reason for my absence
        And I attempt to submit the reason
        Then the system should reject my request
        And I should receive an error message indicating the reason is invalid