*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${appurl}       https://www.arisglobal.com/
${browsername}    chrome
${expectedTitle}    Google

${ABC}    ABC
${XYZ}    XYZ
${PQR}    ABC


*** Test Cases ***

TC_0

     Open Browser    ${appurl}    ${browsername}

    # Maximize browser

    Maximize Browser Window
    ${Title}    Get Title
    Log To Console    ${Title}
    ${header}    Get Text    //h2[contains(.,'Delivering safer')]
    Log To Console    ${header}

    Should Be Equal    ${Title}    Homepage | ArisGlobal


    # First Mouse Hover ..

    Mouse Over    //nav[@class='site-header-large__menu']/ul/li/a[contains(.,'LifeSphere')]  
    Sleep    2
    
    Mouse Over    //span[text()='LifeSphere Medical Affairs']

    Sleep    2

    Click Element    //a[text()='Reporter']

    Sleep     5




    Close All Browsers









TC_001

    Open Browser    ${appurl}    ${browsername}

    # Maximize browser

    Maximize Browser Window
    

    # Validate Google Logo

    #Page Should Contain Element    //img[@alt='Google']

    #validateGooglePageTitle
    #validateGmailLink
    #validateGoogleSearhTextBox
   # validateGoogleSearchButton
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


TestingMithun

    # HELLO

    