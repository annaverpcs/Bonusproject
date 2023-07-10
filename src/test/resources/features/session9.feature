#Author: Anna V

@student
Feature: Student experience
  @student1
  Scenario: Student change name with 2 words
    Given I open url "http://ask-int.portnov.com/#/login"
    Then I type "student1@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345ABc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    Then element with xpath "//p[contains(text(),'STUDENT')]" should contain text "STUDENT"
    And I click on element with xpath "//h5[contains(text(),'Settings')]"
    #land on Settings page
    Then I click on element with xpath "//span[contains(text(),'Change Your Name')]"
    #open popup window
    When I clear element with xpath "//input[@formcontrolname='name']"
    And I type "New Name" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//div[@class='mat-dialog-actions']/../..//span[contains(text(),'Change')]"
    Then I wait for element with xpath "//td[contains(text(),'New Name')]" to be present
    Then element with xpath "//td[contains(text(),'New Name')]" should contain text "New Name"
    Then element with xpath "//h3[contains(text(),'New Name')]" should contain text "New Name"
    Then I wait for 2 sec

  @student2
  Scenario: Student change name using 1 word
    Given I open url "http://ask-int.portnov.com/#/login"
    Then I type "student1@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345ABc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for 2 sec
    Then I wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    Then element with xpath "//p[contains(text(),'STUDENT')]" should contain text "STUDENT"
    And I click on element with xpath "//h5[contains(text(),'Settings')]"
    #land on Settings page
    Then I click on element with xpath "//span[contains(text(),'Change Your Name')]"
    #open popup window
    When I clear element with xpath "//input[@formcontrolname='name']"
    And I type "NewName" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//div[@class='mat-dialog-actions']/../..//span[contains(text(),'Change')]"
    Then I wait for element with xpath "//td[contains(text(),'NewName')]" to be present
    Then element with xpath "//td[contains(text(),'NewName')]" should contain text "NewName"
    Then element with xpath "//h3[contains(text(),'NewName')]" should contain text "NewName"

  @student3
  Scenario: Student change name using special characters
    Given I open url "http://ask-int.portnov.com/#/login"
    Then I type "student1@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345ABc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for 2 sec
    Then I wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    Then element with xpath "//p[contains(text(),'STUDENT')]" should contain text "STUDENT"
    And I click on element with xpath "//h5[contains(text(),'Settings')]"
    #land on Settings page
    Then I click on element with xpath "//span[contains(text(),'Change Your Name')]"
    #open popup window
    When I clear element with xpath "//input[@formcontrolname='name']"
    And I type "New123" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//div[@class='mat-dialog-actions']/../..//span[contains(text(),'Change')]"
    Then I wait for element with xpath "//td[contains(text(),'New123')]" to be present
    Then element with xpath "//td[contains(text(),'New123')]" should contain text "New123"
    Then element with xpath "//h3[contains(text(),'New123')]" should contain text "New123"




    