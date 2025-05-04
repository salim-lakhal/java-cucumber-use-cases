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
@system
Feature: View List of Absent Students

Narrative:
As a professor,
I want to view a list of absent students for my course
So that I can track student attendance.

Scenario: View full student list with login and role
  Given I am logged into the system
  And I have the professor role "professor"
  And It is my course "course"
  When I press the list button
  Then The List of all the students should appear:
    """
    student1 | student2 | student3 | student4 | 
    """

Scenario: View absent students with mentions
  Given I am logged into the system
  And I have the professor role "professor"
  And It is my course "course"
  When I press the list button
  Then I should have the students that are absent with a special mention:
    """
    student1 is absent. student2 is present. student3 is absent. student4 is present.
    """




