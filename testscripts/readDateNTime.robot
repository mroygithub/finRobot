*** Settings ***

Library    DateTime


*** Variables ***



*** Test Cases ***

Learn_Date_Movement

    ${todays_date}    Get Current Date
    Log To Console    ${todays_date}
    ${Only_date}    Convert Date    ${todays_date}    result_format=%a %B %d
    Log To Console    ${Only_date}


    # To Make Date ++

    ${date_+_28}    Add Time To Date    ${todays_date}    28 days

    Log To Console    28 days from todays date is : ${date_+_28}


    # To make Date --

    ${date_minus_28}    Add Time To Date    ${todays_date}    -28 days

    Log To Console    28 days back from todays date is : ${date_minus_28}