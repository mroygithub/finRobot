*** Settings ***
Library         SeleniumLibrary
Resource    ../reusable/test_reusable.robot
Variables    ../reusable/pom.py
Test Setup   LaunchMyWebsite
Test Teardown     CloseMyWebsite


*** Variables ***



*** Test Cases ***
Click_On_JS_Alert

    # Validate the popup text and click on OK button

    Click Button    ${clickForjavascripts}
    sleep     1
    ${pop_up_text}    Handle Alert
    Log To Console    ${pop_up_text}

    # Validate the confirmation

    Element Text Should Be    //p[@id='result']    You successfully clicked an alert
    sleep     1
    


Click_On_JS_Confirm

    # Validate the popup text and click on OK button

    Click Button    //button[text()='Click for JS Confirm']
    sleep     1
    
    # Click on Cancel burron First and do the validation
    
    ${pop_up_text}    Handle Alert    action=DISMISS
     Log To Console    ${pop_up_text}

    # Validate the confirmation

    Element Text Should Be    //p[@id='result']    You clicked: Cancel
    sleep     1

    # Click on Cancel burron First and do the validation

    Click Button    //button[text()='Click for JS Confirm']
    sleep     1
    
    ${pop_up_text}    Handle Alert    action=ACCEPT
     Log To Console    ${pop_up_text}

    # Validate the confirmation

    Element Text Should Be    //p[@id='result']    You clicked: Ok
    sleep     1

        
Click_On_JS_Prompt

   

    # Validate the popup text and click on OK button

    Click Button    //button[text()='Click for JS Prompt']
    sleep     1
    
    # Click on Cancel burron First and do the validation

    ${pop_up_text}    Handle Alert    action=DISMISS
     Log To Console    ${pop_up_text}

    # Validate the confirmation

    Element Text Should Be    //p[@id='result']    You entered: null

    Click Button    //button[text()='Click for JS Prompt']
    sleep     1
    Input Text Into Alert    MITHUN    action=ACCEPT
    Element Text Should Be    //p[@id='result']    You entered: MITHUN
    

*** Keywords ***






   