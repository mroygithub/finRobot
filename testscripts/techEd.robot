*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${appurl}       https://techedtrainings.com/
${browsername}    chrome
${Prefix}    The Current URL IS:



*** Test Cases ***

TechEd_TC_001

    Open Browser    ${appurl}    ${browsername}
    Maximize Browser Window

    # Click On Contact BTN

    Click Element    (//a[text()='Contact'])[1]

    Wait Until Page Contains    Contact
    Wait Until Page Contains    info@techedtrainings.com

    # Type First Name

    Input Text    text-name    Ravi Sett

    Sleep    5

    # Print Current Page URL ?

    ${currURL}    Get Location

    ${textToPrint}    Catenate    ${Prefix}    ${currURL} 

    Log To Console    The Current URL: ${currURL}


    # Selecting Drop Down : Subject

    Select From List By Value    menu-363    Data Science
    Sleep    3

    Select From List By Index    menu-363    2
    Sleep    3

    Select From List By Value    menu-363    Programming
    Sleep    3


    # Count All Page Links ...

    ${linkCount}    Get Element Count    //a
    Log to console     ${linkCount}

    
    
        
    

    Close All Browsers





*** Keywords ***