*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${appurl}       https://www.docker.com/#
${browsername}    chrome
${expectedTitle}    Google


*** Test Cases ***
TC_001

    Open Browser    ${appurl}    ${browsername}

    # Maximize browser

    Maximize Browser Window

    test001






    
    Close All Browsers

TC_002

    Open Browser    ${appurl}    ${browsername}

    # Maximize browser

    Maximize Browser Window
    # Validate Google Logo
    Page Should Contain Element    (//a[text()='Sign in'])[1]
    validateGooglePageTitle
    Close All Browsers

*** Keywords ***


test001

    # Scroll to footer Oracle Logo ...

    Mouse Over    (//a[text()='Products'])[1]
    sleep     3
    Mouse Over    (//a[text()='Developers'])[1]
    sleep     3
    Mouse Over    (//a[text()='About Us'])[1]
    sleep     3

validateGooglePageTitle

    # Validate Title

    ${runtimepagetitle}    Get Title
    Log To Console    ${runtimepagetitle}
    Should Be True    """${expectedTitle}""" == """${runtimepagetitle}"""

validateGmailLink

    # Validate Gmail Link

    Page Should Contain Element    //a[text()='Gmail']

validateGoogleSearhTextBox

    # Validate Google Search Text Box

    Page Should Contain Element    q


validateGoogleSearchButton

    # Validate Gmail Link

    Page Should Contain Element    btnK

    