#Comments for this page
#Author: Anna V
#Associated with Bug SBP-49


  Feature: Quizzes
    @smoke
    Scenario: Single Choice Quiz Creation
      #open login page
      Given I open url "http://ask-int.portnov.com/#/login"
      #login with valid teacher credentials
      Then I type "annapcsteacher2@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then I type "12345ABc" into element with xpath "//input[@formcontrolname='password']"
      Then I click on element with xpath "//span[contains(text(),'Sign In')]"
      Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
      #Go to Quizzes
      Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      And I wait for element with xpath " //h4[contains(text(),'List of Quizzes')]" to be present
      #create new quiz
      And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And I wait for 1 sec
      #add quiz title
      Then I type "00 Quiz Name from Session 10" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      #select Single Choice question
      Then I click on element with xpath "//mat-radio-button[2]"
      #fill out question, answer1, answer2, select correct answer
      And I type "Question title for the quiz" into element with xpath "//textarea[@formcontrolname='question']"
      And I type "Answer 1 correct" into element with xpath "//textarea[@placeholder='Option 1*']"
      And I type "Answer 2 incorrect" into element with xpath "//textarea[@placeholder='Option 2*']"
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      Then I click on element with xpath "//span[contains(text(),'Save')]"
      #Go back to list of quizzes and validate/verify that created quiz is in the list of quizzes
      Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      And element with xpath "//mat-panel-title[contains(text(),'00 Quiz Name from Session 10')]" should contain text "00 Quiz Name from Session 10"
      #delete this quiz
      Then I click on element with xpath "//mat-panel-title[contains(text(),'00 Quiz Name from Session 10')]"
      #click on Delete button
      Then I click on element with xpath "//mat-panel-title[contains(text(),'00 Quiz Name from Session 10')]/../../..//button[@class='mat-raised-button mat-warn']"
      And I click on element with xpath "//div[@class='mat-dialog-actions']//span[contains(text(),'Delete')]"
      And I wait for 3 sec
      Then element with xpath "//mat-panel-title[contains(text(),'00 Quiz Name from Session 10')]" should not be present






