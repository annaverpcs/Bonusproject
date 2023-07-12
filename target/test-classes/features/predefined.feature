# Feature for ASK application
@predefined
Feature: Smoke steps

  @predefined1 @regression @smoke
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//textarea[@name='q']" should be present
    When I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"


    #Student registration
  Scenario: Student registration
    Given I open url "http://ask-int.portnov.com/#/registration"
    #start to fill out registration form
    Then I type "John" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "Smith" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "simple4@email.net" into element with xpath "//input[@formcontrolname='email']"
    Then I type "DEF" into element with xpath "//input[@formcontrolname='group']"
    Then I type "password12" into element with xpath "//input[@formcontrolname='password']"
    Then I type "password12" into element with xpath "//input[@formcontrolname='confirmPassword']"
    #click on Register Me button
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"
    Then I wait for 1 sec
    Then I should see page title contains "Assessment Control @ Portnov"
    Then element with xpath "//h4[contains(text(),'You have been Registered.')]" should be present
    Then I wait for 3 sec
  @regression
  Scenario: Student registration with invalid email address
    Given I open url "http://ask-int.portnov.com/#/registration"
    #start to fill out registration form
    Then I type "John" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "Smith" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "simpleemail.net" into element with xpath "//input[@formcontrolname='email']"
    Then I type "DEF" into element with xpath "//input[@formcontrolname='group']"
    Then I type "password12" into element with xpath "//input[@formcontrolname='password']"
    Then I type "password12" into element with xpath "//input[@formcontrolname='confirmPassword']"
    #click on Register Me button
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"

    #Student registration Data Driven case
  Scenario Outline: Student registration Data Driven case
    Given I open url "http://ask-int.portnov.com/#/registration"
    Then I type "<sFirstName>" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "<sLastName>" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "<sEmail>" into element with xpath "//input[@formcontrolname='email']"
    Then I type "<sGroupID>" into element with xpath "//input[@formcontrolname='group']"
    Then I type "<sPassword>" into element with xpath "//input[@formcontrolname='password']"
    Then I type "<sConfirmPassword>" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"
    Then I wait for 1 sec
    Then I should see page title contains "Assessment Control @ Portnov"
    Then element with xpath "//h4[contains(text(),'You have been Registered.')]" should be present
    Examples:
      | sFirstName | sLastName  |  sEmail   | sGroupID |  sPassword  |sConfirmPassword |
      | John |   Smith |  simple1@email.net | DEF   |  password12 | password12 |
      | Julian |   Smith |  simple2@email.net | DEF   |  password12 | password12 |
      | 123 |   Smith |  simple4@email.net | DEF   |  password12 | password12 |
      | John |   Smith |  simple1@email.net | 1234567890   |  password12 | password12 |
      | John |   Smith |  simple1@email.net | DEF   |  password12 | wrong |
      |  |   Smith |  simple1@email.net | DEF   |  password12 | wrong |
      | Jo     hn |   Smith |  simple1@email.net | DEF   |  password12 | wrong |


