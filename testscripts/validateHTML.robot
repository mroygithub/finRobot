*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${appurl}       https://testautomationpractice.blogspot.com/
${browsername}    headlesschrome
${expectedTitle}    Google


*** Test Cases ***
TC_001

    Open Browser    ${appurl}    ${browsername}

    # Maximize browser

    Maximize Browser Window

    # Validate HTML Table ...

    # How to get HTML Table row count?

    ${Trow}    Get Element Count    //table[@name='BookTable']/tbody/tr
    log to console    Table Row Count is : ${Trow}

    # How to get HTML Table Column count?

    ${Tcol}    Get Element Count    //table[@name='BookTable']/tbody/tr[1]/th
    log to console    Table Column Count is : ${Tcol}

    # Print the Column Header Name

    ${headerName1}    Get Text       //table[@name='BookTable']/tbody/tr[1]/th[1]
    ${headerName2}    Get Text       //table[@name='BookTable']/tbody/tr[1]/th[2]
    ${headerName3}    Get Text       //table[@name='BookTable']/tbody/tr[1]/th[3]
    ${headerName4}    Get Text       //table[@name='BookTable']/tbody/tr[1]/th[4]

    #log to console    ${headerName1} ${headerName2} ${headerName3} ${headerName4}


    ${Tcol}    Get WebElements    //table[@name='BookTable']/tbody/tr[1]/th

    FOR     ${apple}    IN    @{Tcol}
            ${headerName}    Get Text    ${apple}
            log to console    ${headerName}
        
    END

    # Count Total Number Of Links ....

    ${Tcol}    Get WebElements    //a

    FOR     ${apple}    IN    @{Tcol}
            ${headerName}    Get Text    ${apple}
            log to console    ${headerName}
        
    END


    # How to Print First Column Details?


        ${Tcol}    Get WebElements    //table[@name='BookTable']/tbody/tr/td[1]

        FOR     ${apple}    IN    @{Tcol}
                ${headerName}    Get Text    ${apple}
                log to console    ${headerName}
            
        END


    # How to check 3000 value in HTML?

    Table Column Should Contain    BookTable    4    3000    

    # How To check Master In Selenium in 5th Row?

    Table Row Should Contain    BookTable    5    Master In Selenium

    # How To validate Table Header ??

    
    Table Header Should Contain    BookTable    Author


    Table Cell Should Contain    BookTable    7    3    Javascript
    





    
    Close All Browsers

*** Keywords ***