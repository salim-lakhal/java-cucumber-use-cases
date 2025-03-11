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
Feature: Request Absence
  I want to request an absence 

  @tag1
 Scenario: Request Absence Successful
    Given I am logged into the system
    And I have not exceeded my absence quota
    And the course for which I am requesting an absence exists in the system
    And I am submitting the request within the allowed time frame
    When I complete the absence request form
    And I submit the request
    Then the absence request should be successfully recorded
    And I should receive a confirmation notification by email
    And my absence quota should be decremented by one

  @tag2
  Scenario: Request Absence Fails Due to Exceeded Quota
    Given I am logged into the system
    And I have exceeded my absence quota
    When I attempt to submit an absence request
    Then the system should reject my request
    And I should receive an error message indicating I have no remaining absence credits

