*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${appurl}       https://techedtrainings.com/contact/
${browsername}    chrome
${expectedTitle}    Google


*** Test Cases ***
TC_001

    Open Browser    ${appurl}    ${browsername}

    # Maximize browser

    Maximize Browser Window

   

    # Count Total Number Of Links ....

    ${Tcol}    Get WebElements    //select[@name='menu-363']//option

    FOR     ${apple}    IN    @{Tcol}
            ${ddvalue}    Get Element Attribute    ${apple}    value
            log to console    ${ddvalue}
        
    END





    
    Close All Browsers

*** Keywords ***