Feature: Case Field Validation

  @iLMS @Case11
  Scenario Outline: Verify User Login with valid username and Password
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    Examples:
      | username | password |
      | EMP_DEC  | E5mO#7mS |

  @iLMS @Case11
  Scenario Outline: Verify the Cnr number for invalid data
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<cnrNumber>" in "iLMS_CnrNumber"
    Then user should able to see "<title>" and "iLMS_CnrNumber_Title"

    Examples:
      | username | password |   cnrNumber       | title                                |
      | EMP_DEC  | E5mO#7mS |    Case1234567812 | CNR Number Must Be Alphanumeric      |

  @iLMS @Case11
  Scenario Outline: Verify the caseNumber for invalid data
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<caseNumber>" in "iLMS CaseNumber"
    Then user should able to see "<title>" and "iLMS CaseNumber_Title"
    Examples:
      | username | password |   caseNumber          | title                          |
      | EMP_DEC  | E5mO#7mS |         20222345@6786 | Special Characters Not Allowed |

  @iLMS @Case114
  Scenario Outline: Verify the case year for invalid format
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<caseYear>" in "iLMS caseYear"
    Then user should able to see "<title>" and "iLMS caseYear_Title"

    Examples:
      | username | password |   caseYear    | title                     |
      | EMP_DEC  | E5mO#7mS |         202   | Case Year Must Be 4 digit |
      | EMP_DEC  | E5mO#7mS |         2024  | Case Year Is Invalid      |


  @iLMS @Case11
  Scenario Outline: Verify the valid first name under Petitioner Details.
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<firstName>" in "iLMS petitioner_FirstName"
    Then user should able to see "<title>" and "iLMS petitioner_FirstName_Title"
    Examples:
      | username | password |   firstName     | title                 |
      | EMP_DEC  | E5mO#7mS |   Akrant Verma3 | First Name Is Invalid |

#  @iLMS @Case1
#  Scenario Outline: Verify the valid Address format under Petitioner Details.
#    And user enter "<username>" in "iLMS_UserName"
#    And user enter "<password>" in "iLMS_Password"
#    And user click on the "iLMS_Continue" button
#    And user click on the "iLMS_AddNewCase" button
#    And user enter the  case details of "<address>" and "//*[@id='PettitionerAddress']"
#    And user should able to see "<title>" and "//*[text()='Address is invalid']"
#
#    Examples:
#      | username | password |   address | title              |
#      | EMP_DEC  | E5mO#7mS |   zkjhgfd | Address is invalid |

  @iLMS @Case11
  Scenario Outline: Verify the valid contact number format under Petitioner Details.
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<contactNumber>" in "iLMS petitionerContactNumber"
    Then user should able to see "<title>" and "iLMS petitionerContactNumber_Title"

    Examples:
      | username | password |   contactNumber    | title                     |
      | EMP_DEC  | E5mO#7mS |      567777        | Contact Number Is Invalid |

  @iLMS @Case11
  Scenario Outline: Verify the valid first name under Petitioner Advocate Details.
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<firstName>" in "iLMS petitionerAdvocateFirstName"
    Then user should able to see "<title>" and "iLMS petitionerAdvocateFirstName_Title"

    Examples:
      | username | password |   firstName  | title                 |
      | EMP_DEC  | E5mO#7mS |  sadfdfsdss5 | First Name Is Invalid |

  @iLMS @Case11
  Scenario Outline: Verify the valid contact number under Petitioner Advocate Details
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<contactNumber>" in "iLMS petitionerAdvocateContactNo"
    Then user should able to see "<title>" and "iLMS petitionerAdvocateContactNo_Title"

    Examples:
      | username | password |   contactNumber       | title                     |
      | EMP_DEC  | E5mO#7mS |     sadfdfsdss    | Contact Number Is Invalid |

  @iLMS @Case111
  Scenario Outline: Verify the invalid first name under respondent details
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<firstName>" in "iLMS respodentFirstName"
    Then user should able to see "<title>" and "iLMS respodentFirstName_Title"

    Examples:
      | username | password |   firstName   | title                 |
      | EMP_DEC  | E5mO#7mS |   sadfdfsdss2 | First Name Is Invalid |

  @iLMS @Case11
  Scenario Outline:Verify the invalid first name under respondent details
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<lastName>" in "iLMS respodentLastName"
    Then user should able to see "<title>" and "iLMS respodentLastName_Title"

    Examples:
      | username | password |  lastName    | title                |
      | EMP_DEC  | E5mO#7mS | sadfdfsdss2  | Last Name Is Invalid |

  @iLMS @Case11
  Scenario Outline: Verify the invalid contact number under respondent details
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<contactNumber>" in "iLMS respodentContact"
    Then user should able to see "<title>" and "iLMS respodentContact_Title"

    Examples:
      | username | password |  contactNumber | title                     |
      | EMP_DEC  | E5mO#7mS |  sadfdfsdss    | Contact Number Is Invalid |

  @iLMS @Case11
  Scenario Outline: Verify the invalid first name under respondent advocate details
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<firstName>" in "iLMS respodentAdvocateFirstName"
    Then user should able to see "<title>" and "iLMS respodentAdvocateFirstName_Title"

    Examples:
      | username | password |   firstName         | title                 |
      | EMP_DEC  | E5mO#7mS |   sadfdfsdss2       |First Name Is Invalid  |


  @iLMS @Case11
  Scenario Outline: Verify the invalid last name under respondent advocate details
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<lastName>" in "iLMS respodentAdvocateLastName"
    Then user should able to see "<title>" and "iLMS respodentAdvocateLastName_Title"

    Examples:
      | username | password |   lastName    | title                |
      | EMP_DEC  | E5mO#7mS |   sadfdfsdss2 | Last Name Is Invalid |


  @iLMS @Case11
  Scenario Outline: Verify the invalid contact number under respondent advocate details
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<contactNumber>" in "iLMS respodentAdvocateContactNo"
    Then user should able to see "<title>" and "iLMS respodentAdvocateContactNo_Title"

    Examples:
      | username | password |   contactNumber | title                     |
      | EMP_DEC  | E5mO#7mS |   sadfdfsdss    | Contact Number Is Invalid |

  @iLMS @Case11
  Scenario Outline: Verify the rule number under act master.
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<contactNumber>" in "iLMS sectionRuleNumber"
    Then user should able to see "<title>" and "iLMS sectionRuleNumber_Title"

    Examples:

      | username | password |   contactNumber                          | title              |
      | EMP_DEC  | E5mO#7mS |   34566333333333333342222226655555676    | Length Must Be 32  |


  @iLMS @Case11
  Scenario Outline: Verify Re-enter Cnr Number error message
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<cnrNumber>" in "iLMS_CnrNumber"
    And user enter "<cnrNumber1>" in "iLMS re_EnterCnrNumber"
    And user click on the "iLMS verifyButton" button
    Then user should able to see "<title>" and "iLMS re_EnterCnrNumber_Title"
    Examples:
      | username | password |   cnrNumber       | title                                 |cnrNumber1|
      | EMP_DEC  | E5mO#7mS |    Case123456781234 | CNR number didn't match please Re-enter      |Case1234567812|

  @iLMS @Case1
  Scenario Outline: Verify Petitioner Last Name error message
    And user enter "<username>" in "iLMS_UserName"
    And user enter "<password>" in "iLMS_Password"
    And user click on the "iLMS_Continue" button
    And user click on the "iLMS_AddNewCase" button
    And user enter "<lastName>" in "iLMS petitionerLastName"
    Then user should able to see "<title>" and "iLMS petitionerLastName_Title"

    Examples:

      | username | password |   lastName                          | title              |
      | EMP_DEC  | E5mO#7mS |   fcgcg2                            | Last Name Is Invalid  |
