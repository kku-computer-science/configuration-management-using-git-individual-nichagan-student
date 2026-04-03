*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    
    Open Browser    https://www.google.com    browser=chrome    options=${chrome_options}
    Title Should Be    Google
    Close Browser
