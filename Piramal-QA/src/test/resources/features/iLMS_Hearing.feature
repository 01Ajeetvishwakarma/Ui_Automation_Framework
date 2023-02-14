Feature: Hearing Field Validation

  Background:
    And user enter "EMP_DEC" in "iLMS_UserName"
    And user enter "E5mO#7mS" in "iLMS_Password"
    And user click on the "iLMS_Continue" button


  @iLMS @H_01
  Scenario Outline: Verify the error message of court number on hearing page.
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER22" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER22" from list "iLMS_CaseList"
    And user scroll down page by "2500" pixel
    And user click on the "iLMS Add Hearing" button
    And user enter "<courtNumber>" in "iLMS CourtNumber"
    Then user should able to see "<title>" and "iLMS CourtNumber_Title"
    Examples:
      | courtNumber | title                          |
      | aaa         | COURT_NO_IS_INVALID            |
      | 111@dd12    | Special Characters Not Allowed |
#    | 12334455666 |COURT_NUMBER_MUST_BE_BETWEEN 1 AND 10_DIGIT  |


  @iLMS @H_02
  Scenario Outline: Verify the error message of judge name on hearing page.
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER22" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER22" from list "iLMS_CaseList"
    And user scroll down page by "2500" pixel
    And user click on the "iLMS Add Hearing" button
    And user enter "<judgeName>" in "iLMS JudgeName"
    Then user should able to see "<title>" and "iLMS JudgeName_Title"
    Examples:
      | judgeName | title                 |
      | Akash@    | Judge Name Is Invalid |

  @iLMS @H_03
  Scenario Outline: Verify the error message of Purpose of Hearing on hearing page.
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER22" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER22" from list "iLMS_CaseList"
    And user scroll down page by "2500" pixel
    And user click on the "iLMS Add Hearing" button
    And user enter "<purposeOfHearing>" in "iLMS purposeOfHearing"
    Then user should able to see "<title>" and "iLMS purposeOfHearing_Title"
    Examples:
      | purposeOfHearing                                 | title                           |
      | ddsaaa@22                                        | Special Characters Not Allowed  |
      | ddsaaa234222222222242444444444444444444211111333 | Must be less than 32 characters |

  @iLMS @H_04
  Scenario Outline: Verify the error message of officerRequired on hearing page.
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER22" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER22" from list "iLMS_CaseList"
    And user scroll down page by "2500" pixel
    And user click on the "iLMS Add Hearing" button
    And user enter "<officerRequired>" in "iLMS officerRequired"
    Then user should able to see "<title>" and "iLMS officerRequired_Title"
    Examples:
      | officerRequired                                  | title                           |
      | ddsaaa@22                                        | Special Characters Not Allowed  |
      | ddsaaa234222222222242444444444444444444211111333 | Must be less than 32 characters |

  @iLMS @H_05
  Scenario Outline: Verify the error message of fineAmount on hearing page.
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER22" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER22" from list "iLMS_CaseList"
    And user scroll down page by "2500" pixel
    And user click on the "iLMS Add Hearing" button
    And user enter "<fineAmount>" in "iLMS fineAmount"
    Then user should able to see "<title>" and "iLMS fineAmount_Title"
    Examples:
      | fineAmount    | title                                |
      | 3434334212222 | Fine amount must be under 10 digits. |
      | 2222--        | Please enter amount                  |

  @iLMS @H_06
  Scenario Outline: Verify the error message of departmentOfficer on hearing page.
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER22" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER22" from list "iLMS_CaseList"
    And user scroll down page by "2500" pixel
    And user click on the "iLMS Add Hearing" button
    And user enter "<departmentOfficer>" in "iLMS departmentOfficer"
    Then user should able to see "<title>" and "iLMS departmentOfficer_Title"
    Examples:
      | departmentOfficer | title                   |
      | 3434334212222     | Only characters allowed |

  @iLMS @H_07
  Scenario Outline: Verify the error message of Type of Hearing on hearing page.
    And user click on the "iLMS_Inbox" button
    And user enter "CASENUMBER22" in "iLMS_CaseSearchBox"
    And user click on the "iLMS_Search" button
    And user select "CASENUMBER22" from list "iLMS_CaseList"
    And user scroll down page by "2500" pixel
    And user click on the "iLMS Add Hearing" button
    And user enter "<typeOfHearing>" in "iLMS TypeOfHearing InputBox"
    Then user should able to see "<title>" and "iLMS TypeOfHearing_Title"
    Examples:
      | typeOfHearing | title                              |
      | hearing@      | CORE_COMMON_APPLICANT_NAME_INVALID |

