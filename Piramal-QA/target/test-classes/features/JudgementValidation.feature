Feature: Judgement Field Validation

  Background:
    And user enter "EMP_DEC" in "iLMS_UserName"
    And user enter "E5mO#7mS" in "iLMS_Password"
    And user click on the "iLMS_Continue" button

  @iLMS @J_01
  Scenario: Verify the Type of order dropdown
    Given user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER22" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER22" from list "iLMS_CaseList"
    And user scroll down page by "2500" pixel
    And user click on the "iLMS Add Judgement" button
    And user click on the "iLMS_TypeOfOrderDropdown" button

  @iLMS @J_02
  Scenario: Verify the Order Date calender dropdown
    Given user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER22" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER22" from list "iLMS_CaseList"
    And user scroll down page by "2500" pixel
    And user click on the "iLMS Add Judgement" button
    And user click on the "iLMS OrderDate Calender" button

  @iLMS @J_03
  Scenario Outline: Verify the Overriding Order Number text box
    Given user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER22" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER22" from list "iLMS_CaseList"
    And user scroll down page by "2500" pixel
    And user click on the "iLMS Add Judgement" button
    And user enter "11Ajit" in "iLMS Overriding Order Number"
    Then user should able to see "<OverridingOrderNumber>" on "iLMS OverridingOrderNumber Message"
    Examples:
      | OverridingOrderNumber    |
      | Please enter only number |

  @iLMS @J_04
  Scenario: Verify the Reason for revised compliance date text box
    Given user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER22" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER22" from list "iLMS_CaseList"
    And user scroll down page by "2500" pixel
    And user click on the "iLMS Add Judgement" button
    And user enter "a                               a" in "iLMS RevisedComplianceReason"
    Then user should able to see "Please enter valid length not more than 32 characters" on "iLMS RevisedComplianceReason Message"

