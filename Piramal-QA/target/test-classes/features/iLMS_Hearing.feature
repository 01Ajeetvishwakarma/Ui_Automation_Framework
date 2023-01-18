Feature: Hearing Field Validation

  @iLMS @H_01
  Scenario Outline: Verify hearing page
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER11" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER11" from list "iLMS_CaseList"
    And user click on the "iLMS_ActionButton" button
    And user select "Update at DEC Level" from list "iLMS_ActionList"
    And user click on the "iLMS Hearing" button

    Examples:
      |password|username|
      |E5mO#7mS|EMP_DEC|

  @iLMS @H_02
  Scenario Outline:Verify the add button functionality of hearing page.
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER11" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER11" from list "iLMS_CaseList"
    And user click on the "iLMS_ActionButton" button
    And user select "Update at DEC Level" from list "iLMS_ActionList"
    And user click on the "iLMS Hearing" button
    Then user click on the "iLMS AddNew" button

    Examples:
      |password|username|
      |E5mO#7mS|EMP_DEC|

  @iLMS @H_03
  Scenario Outline: Verify the error message of court number of gearing page.
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER11" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER11" from list "iLMS_CaseList"
    And user click on the "iLMS_ActionButton" button
    And user select "Update at DEC Level" from list "iLMS_ActionList"
    And user click on the "iLMS Hearing" button
    Then user click on the "iLMS AddNew" button
    And user enter "<courtNumber>" in "iLMS CourtName"
    Then user should able to see "<title>" and "iLMS CourtName_Title"
    Examples:
      |password|username|courtNumber|title|
      |E5mO#7mS|EMP_DEC| ddsaaa|   COURT_NO_IS_INVALID  |
      |E5mO#7mS|EMP_DEC| 111@dd12|   SPECIAL_CHARACTER_IS_NOT_ALLOWED  |
      |E5mO#7mS|EMP_DEC| 12334455666|   COURT_NUMBER_MUST_BE_BETWEEN 1 AND 10_DIGIT  |

  @iLMS @H_04
Scenario Outline: Verify the error message of judge name of hearing page.
  And user enter "<username>" in "iLMS_UserName"
  And user enter "<password>" in "iLMS_Password"
  And user click on the "iLMS_Continue" button
  And user click on the "iLMS_Inbox" button
  And user enter "CASENUMBER11" in "iLMS_CaseSearchBox"
  And user click on the "iLMS_Search" button
  And user select "CASENUMBER11" from list "iLMS_CaseList"
  And user click on the "iLMS_ActionButton" button
  And user select "Update at DEC Level" from list "iLMS_ActionList"
  And user click on the "iLMS Hearing" button
  Then user click on the "iLMS AddNew" button
  And user enter "<judgeName>" in "iLMS JudgeName"
  Then user should able to see "<title>" and "iLMS CourtName_Title"
  Examples:
    |password|username|judgeName|title|
    |E5mO#7mS|EMP_DEC| ddsaaa@22|   Judge name is invalid  |

  @iLMS @H_05
  Scenario Outline: Verify the error message of judge name of hearing page.
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER11" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER11" from list "iLMS_CaseList"
    And user click on the "iLMS_ActionButton" button
    And user select "Update at DEC Level" from list "iLMS_ActionList"
    And user click on the "iLMS Hearing" button
    Then user click on the "iLMS AddNew" button
    And user enter "<purposeOfHearing>" in "iLMS purposeOfHearing"
    Then user should able to see "<title>" and "iLMS purposeOfHearing_Title"
    Examples:
      |password|username|purposeOfHearing|title|
      |E5mO#7mS|EMP_DEC| ddsaaa@22|   Special characters not allowed   |
      |E5mO#7mS|EMP_DEC| ddsaaa234222222222242444444444444444444211111333|   Purpose of Hearing must be smaller than 32 character  |

  @iLMS @H_06
  Scenario Outline: Verify the error message of officerRequired of hearing page.
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER11" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER11" from list "iLMS_CaseList"
    And user click on the "iLMS_ActionButton" button
    And user select "Update at DEC Level" from list "iLMS_ActionList"
    And user click on the "iLMS Hearing" button
    Then user click on the "iLMS AddNew" button
    And user enter "<officerRequired>" in "iLMS officerRequired"
    Then user should able to see "<title>" and "iLMS officerRequired_Title"
    Examples:
      |password|username|officerRequired|title|
      |E5mO#7mS|EMP_DEC| ddsaaa@22|   Special characters not allowed   |
      |E5mO#7mS|EMP_DEC| ddsaaa234222222222242444444444444444444211111333|   Must be less than 32 chracters  |

  @iLMS @H_07
  Scenario Outline: Verify the error message of fineAmount of hearing page.
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER11" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER11" from list "iLMS_CaseList"
    And user click on the "iLMS_ActionButton" button
    And user select "Update at DEC Level" from list "iLMS_ActionList"
    And user click on the "iLMS Hearing" button
    Then user click on the "iLMS AddNew" button
    And user enter "<fineAmount>" in "iLMS fineAmount"
    Then user should able to see "<title>" and "iLMS fineAmount_Title"
    Examples:

      |password|username|fineAmount|title|
      |E5mO#7mS|EMP_DEC| 3434334212222|   Fine amount must be under 10 digits.   |
      |E5mO#7mS|EMP_DEC| 2222--|   Please enter amount  |

  @iLMS @H_08
  Scenario Outline: Verify the error message of departmentOfficer of hearing page.
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER11" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER11" from list "iLMS_CaseList"
    And user click on the "iLMS_ActionButton" button
    And user select "Update at DEC Level" from list "iLMS_ActionList"
    And user click on the "iLMS Hearing" button
    Then user click on the "iLMS AddNew" button
    And user enter "<departmentOfficer>" in "iLMS departmentOfficer"
    Then user should able to see "<title>" and "iLMS departmentOfficer_Title"

    Examples:
      |password|username|departmentOfficer|title|
      |E5mO#7mS|EMP_DEC| 3434334212222|   Only characters allowed    |