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
Feature: Toggle Geolocation
    As a student
    I want to activate or deactivate geolocation usage when needed

    @tag1
    Scenario: Activate geolocation
        Given I am logged into the system
        When I go to my settings
        And I activate geolocation
        Then the system should enable geolocation for my account
        And I should see a confirmation message

    @tag2
    Scenario: Deactivate geolocation
        Given I am logged into the system
        When I go to my settings
        And I deactivate geolocation
        Then the system should disable geolocation for my account
        And I should see a confirmation message