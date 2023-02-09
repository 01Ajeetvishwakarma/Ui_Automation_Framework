Feature: Create Case

  Background:
    And user enter "EMP_DEC" in "iLMS_UserName"
    And user enter "E5mO#7mS" in "iLMS_Password"
    And user click on the "iLMS_Continue" button


  @create
  Scenario: Case Create
    Given user click on the "iLMS_AddNewCase" button
    And user enter random "CnrNumber" in "iLMS_CnrNumber"
    And user enter random "CnrNumber" in "iLMS re_EnterCnrNumber"
    And user click on the "iLMS verifyButton" button
    And user click on the "iLMS CaseType Dropdown" button
    And user select "Arbitration Case (Domestic Commercial)" from list "iLMS DropdownList"
    And user click on the "iLMS CaseCategory Dropdown" button
    And user select "Service Matters" from list "iLMS DropdownList"
    And user enter random "CaseNumber" in "iLMS CaseNumber"
    And user enter "2022" in "iLMS caseYear"
    And user enter "23" in "iLMS FilingNumber"
    And user scroll down
#    And user click on the "iLMS FilingDate" button
#    And user enter "19/01/2023" in "iLMS FilingDate InputBox"
    And user enter the date "19/1/2023" in "iLMS FilingDate InputBox"
#    And user click on the "iLMS RegistrationDate" button
#    And user enter "20/01/2023" in "iLMS RegistrationDate InputBox"
    And user enter the date "21/1/2023" in "iLMS RegistrationDate InputBox"
    And user enter "Case Creation" in "iLMS CaseSummary"
    And user enter "case" in "iLMS ArisingOutDetail"
    And user click on the "iLMS policyNonPolicyMatter Yes" button
    And user scroll down
    And user click on the "iLMS isCaseNoCorrect Yes" button
    And user click on the "iLMS IsCaseNumberCorrect Confirm" button
    And user scroll down
    And user click on the "iLMS StatusOfCase" button
    And user select "Pending for admission" from list "iLMS DropdownList"
#    And user enter "21/01/2023" in "iLMS FirstHearingDate InputBox"
    And user enter the date "21/01/2023" in "iLMS FirstHearingDate InputBox"
#    And user enter "23/01/2023" in "iLMS PreviousHearingDate InputBox"
    And user enter the date "23/01/2023" in "iLMS PreviousHearingDate InputBox"
#    And user enter "25/01/2023" in "iLMS NextHearingDate InputBox"
    And user enter the date "25/01/2023" in "iLMS NextHearingDate InputBox"
    And user click on the "iLMS StageOfCase" button
    And user select "Notice for petition / Copy of petition uploaded" from list "iLMS DropdownList"
    And user click on the "iLMS SubStageOfCase" button
    And user select "Data entry by Data entry Cell" from list "iLMS DropdownList"
    And user enter "MRx" in "iLMS PetitionerFirstName"
    And user enter "Anonymous" in "iLMS PetitionerLastName"
    And user click on the "iLMS PetitionerGender" button
    And user select "MALE" from list "iLMS DropdownList"
    And user scroll down
    And user click on the "iLMS PetitionerType" button
    And user select "Assistant" from list "iLMS DropdownList"
    And user enter "Agra" in "iLMS PetitionerAddress"
    And user enter "8796575746" in "iLMS PetitionerContactNumber"
    And user enter "ABC" in "iLMS PetitionerAdvocateFirstName"
    And user enter "XYZ" in "iLMS PetitionerAdvocateLastName"
    And user enter "8794536578" in "iLMS PetitionerAdvocateContactNo"
    And user scroll down
    And user click on the "iLMS RespondentDepartmentName" button
    And user select "DIRECTORATE PUBLIC INSTRUCTION" from list "iLMS DropdownList"
    And user enter "Aman" in "iLMS RespondentFirstName"
    And user enter "Sharma" in "iLMS RespondentLastName"
    And user click on the "iLMS RespondentGender Dropdown" button
    And user select "MALE" from list "iLMS DropdownList"
    And user enter "Agra" in "iLMS RespondentAddress"
    And user enter "7658764568" in "iLMS RespondentContact"
    And user enter "White" in "iLMS RespondentAdvocateFirstName"
    And user enter "Devil" in "iLMS RespondentAdvocateLastName"
    And user enter "9675467867" in "iLMS RespondentAdvocateContact"
    And user enter "ACT234" in "iLMS actRuleName"
    And user enter "234" in "iLMS sectionRuleNumber"
    And user scroll down
    And user click on the "iLMS ConcernedDepartment Dropdown" button
    And user select "DIRECTORATE PUBLIC INSTRUCTION" from list "iLMS DropdownList"
    And user click on the "iLMS Recommended OIC Dropdown" button
    And user select "District Educational Officer" from list "iLMS DropdownList"
    Then user click on the "iLMS Save" button

